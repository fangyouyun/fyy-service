-- 用户表
CREATE TABLE `blog_users` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `id_no` varchar(255) DEFAULT NULL COMMENT '登录号',
  `phone` varchar(255) NOT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `sex` int(11) NOT NULL COMMENT '1:男，0：女',
  `description` varchar(4000) DEFAULT NULL COMMENT '个人简介',
  `status` int(11) DEFAULT '1' COMMENT '1:普通用户，2：会员，3：超级会员，4：管理员',
  `is_freeze` int(11) DEFAULT '0' COMMENT '1:冻结，默认0',
  `crt_time` datetime DEFAULT NULL COMMENT '注册时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `last_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip地址',
  `image` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `birthdate` datetime DEFAULT NULL COMMENT '出生日期',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `id_card_no` varbinary(255) DEFAULT NULL COMMENT '身份证号',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq号码',
  `weixin` varchar(255) DEFAULT NULL COMMENT '微信名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING BTREE COMMENT '手机号唯一',
  UNIQUE KEY `id_no_unique_key` (`id_no`) USING BTREE COMMENT 'id_no唯一',
  UNIQUE KEY `email` (`email`) USING BTREE COMMENT '邮箱唯一'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 图标
CREATE TABLE `blog_gps` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `remark` varchar(4000) DEFAULT NULL COMMENT '备注',
  `is_del` int(11) NOT NULL DEFAULT '0' COMMENT '默认0，大于0为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 文章
CREATE TABLE `blog_article` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `section_id` bigint(16) DEFAULT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `content` text COMMENT '文章内容',
  `crt_time` datetime DEFAULT NULL COMMENT '发布时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `is_del` int(11) DEFAULT NULL COMMENT '默认0，大于0删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 文章评论
CREATE TABLE `blog_article_comments` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(16) DEFAULT NULL COMMENT '文章id',
  `comment_user_id` bigint(16) DEFAULT NULL COMMENT '评论用户id,为null时，表示匿名评论',
  `comments` varchar(4000) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL COMMENT '评论时间',
  `is_del` int(11) DEFAULT '0' COMMENT '默认0,其他为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章评论表';

-- 文章浏览量
CREATE TABLE `blog_page_view` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(16) DEFAULT NULL COMMENT '文章id',
  `pv_count` bigint(16) DEFAULT NULL COMMENT '浏览量',
  `update_time` datetime DEFAULT NULL COMMENT '上次浏览时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章浏览量';

-- 文章图片
CREATE TABLE `blog_article_albums` (
  `id` bigint(16) NOT NULL,
  `article_id` bigint(16) DEFAULT NULL,
  `sort` int(16) DEFAULT NULL COMMENT '排序',
  `image` varchar(255) DEFAULT NULL COMMENT '原图',
  `big_image` varchar(255) DEFAULT NULL COMMENT '大图',
  `small_image` varchar(255) DEFAULT NULL COMMENT '小图',
  `is_del` int(11) DEFAULT NULL COMMENT '默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章图片';