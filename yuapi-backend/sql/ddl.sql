-- 创建库
create database if not exists yuapi;

-- 切换库
use yuapi;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userName     varchar(256)                           null comment '用户昵称',
    userAccount  varchar(256)                           not null comment '账号',
    userAvatar   varchar(1024)                          null comment '用户头像',
    gender       tinyint                                null comment '性别',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user / admin',
    userPassword varchar(512)                           not null comment '密码',
    `accessKey` varchar(512) not null comment 'accessKey',
    `secretKey` varchar(512) not null comment 'secretKey',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    constraint uni_userAccount
        unique (userAccount)
) comment '用户';

-- 接口信息
create table if not exists yuapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` datetime default 'CURRENT_TIMESTAMP' not null comment '名称',
    `desciption` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0-关闭，1-开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)',
    `updateTime` datetime default 'CURRENT_TIMESTAMP' not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` varchar(256) not null comment '用户名'
) comment '接口信息';

insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('钟子涵', 'www.leone-littel.biz', '韩雨泽', '刘天宇', 0, '宋峻熙', 200180, '徐炫明');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('段天磊', 'www.earnest-sauer.info', '胡立果', '曾梓晨', 0, '田文昊', 6, '张旭尧');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('宋瑞霖', 'www.kristine-jenkins.com', '孔烨霖', '邹擎宇', 0, '孙鑫磊', 1238, '黎俊驰');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('高子骞', 'www.mervin-beier.com', '魏昊天', '邱哲瀚', 0, '张烨磊', 1209198, '戴浩然');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('郭乐驹', 'www.gerri-kiehn.co', '邱立果', '黎熠彤', 0, '邵耀杰', 46272018, '董越彬');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('侯泽洋', 'www.abram-bernier.io', '江昊然', '范哲瀚', 0, '汪君浩', 2485, '钟晋鹏');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('汪弘文', 'www.marcellus-rowe.name', '顾雨泽', '苏嘉懿', 0, '赵嘉熙', 5, '陶越彬');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('丁笑愚', 'www.wilton-macgyver.io', '谭伟宸', '武鸿煊', 0, '张鸿煊', 359, '莫思聪');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('梁文昊', 'www.mitzie-braun.org', '钟伟泽', '林立诚', 0, '卢鹏飞', 1907856198, '郭天宇');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('夏俊驰', 'www.winfred-metz.org', '蔡涛', '马浩宇', 0, '石晓啸', 9196981981, '崔烨伟');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('龚昊强', 'www.fernando-gorczany.io', '顾越彬', '曾明辉', 0, '曹文昊', 40107, '董晓啸');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('夏苑博', 'www.shae-krajcik.name', '王修洁', '胡鹏涛', 0, '廖思淼', 432421666, '薛志泽');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('王鸿煊', 'www.hilton-schneider.net', '金果', '汪远航', 0, '傅浩', 741450470, '蔡烨磊');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('宋雨泽', 'www.allena-mcclure.info', '张烨伟', '潘智宸', 0, '严雨泽', 607109, '唐博文');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('袁展鹏', 'www.catarina-blanda.com', '魏明', '马远航', 0, '冯昊焱', 238, '傅懿轩');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('阎金鑫', 'www.richelle-predovic.info', '任雨泽', '万苑博', 0, '贾荣轩', 418674017, '戴航');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('李伟宸', 'www.angelica-fadel.info', '韦伟宸', '卢博文', 0, '孔聪健', 54, '丁越彬');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('雷擎宇', 'www.ismael-barrows.net', '龚博文', '叶振家', 0, '钟浩轩', 71, '金瑾瑜');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('崔浩轩', 'www.carmen-bogan.co', '叶涛', '王子骞', 0, '卢伟祺', 269255625, '马乐驹');
insert into yuapi.`interface_info` (`desciption`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('贾皓轩', 'www.roxy-hahn.io', '姚鹏飞', '尹烨伟', 0, '顾明哲', 582919, '邓博超');