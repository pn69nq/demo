USE demo;

CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品标题',
  `category_id` int(11) NOT NULL COMMENT '商品分类编号',
  `mer_id` int(11) NOT NULL COMMENT '商家编号',
  `freight_id` int(11) DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL COMMENT '类型编号',
  `sketch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简述',
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品描述',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品关键字',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签',
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品型号',
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓库条码',
  `brand_id` int(11) NOT NULL COMMENT '品牌编号',
  `virtual` int(11) NOT NULL DEFAULT '0' COMMENT '虚拟购买量',
  `price` decimal(8,2) NOT NULL COMMENT '商品价格',
  `market_price` decimal(8,2) NOT NULL COMMENT '市场价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '可使用积分抵消',
  `stock` int(11) NOT NULL COMMENT '库存量',
  `warning_stock` int(11) NOT NULL COMMENT '库存警告',
  `picture_url` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
  `posters` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态 -1=>下架,1=>上架,2=>预售,0=>未上架',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态 -1 审核失败 0 未审核 1 审核成功',
  `is_package` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是套餐',
  `is_integral` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是积分产品',
  `sort` int(11) NOT NULL DEFAULT '99' COMMENT '排序',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `product_sku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '商品编码',
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sku名称',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主图',
  `price` decimal(8,2) NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品编码',
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品条形码',
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'sku串',
  PRIMARY KEY (`id`),
  KEY `product_sku_name_product_id_index` (`name`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '商品编码',
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规格名称',
  `sort` int(11) NOT NULL DEFAULT '999' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `product_supplier_attribute_name_product_id_index` (`name`,`product_id`)
) ENGINE=InnoDB