use yuapi;

-- 接口信息
create table if not exists yuapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0-关闭，1-开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除（0-未删，1-已删）'
) comment '接口信息';

insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('韩伟泽', '梁熠彤', 'www.briana-adams.net', '王哲瀚', '戴博文', 0, '沈雪松', 209, 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `isDelete`) values ('段烨霖', '范嘉懿', 'www.johnette-johnston.biz', '程立果', '唐明轩', 0, '潘智辉', 389448101, 0);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('谢睿渊', '程哲瀚', 'www.horacio-crooks.co', '程峻熙', '马弘文', 0, '姚烨磊', 5190);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('雷峻熙', '汪伟泽', 'www.markus-runolfsdottir.com', '覃弘文', '何天宇', 0, '魏明哲', 72537);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邓鸿涛', '夏聪健', 'www.cole-leannon.name', '何金鑫', '杨烨霖', 0, '黄明辉', 4457);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('薛明杰', '钟烨霖', 'www.gonzalo-feil.org', '杜烨磊', '高志泽', 0, '蒋思聪', 2689664);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('夏振家', '田炎彬', 'www.chi-walter.net', '毛思源', '叶果', 0, '范晓博', 84376);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('武擎苍', '林智渊', 'www.brant-prosacco.co', '陆熠彤', '范梓晨', 0, '林健柏', 4562751);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('徐煜城', '陆楷瑞', 'www.bud-okeefe.org', '徐文昊', '金皓轩', 0, '潘语堂', 446);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('黎立诚', '黎文昊', 'www.nicol-pollich.co', '沈健柏', '陆哲瀚', 0, '郭远航', 3);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('叶懿轩', '韩明哲', 'www.sharita-beer.name', '徐子骞', '金修洁', 0, '夏鹏煊', 64012);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('周皓轩', '萧嘉懿', 'www.julian-gutmann.org', '姜苑博', '段峻熙', 0, '谢炫明', 9326);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('杜文博', '郭荣轩', 'www.ana-kutch.net', '傅烨霖', '白绍辉', 0, '万修洁', 2367);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('戴笑愚', '曹炎彬', 'www.priscila-stehr.name', '龚鹏飞', '张烨霖', 0, '萧鸿煊', 4933);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('高熠彤', '戴哲瀚', 'www.jami-bahringer.co', '白伟宸', '白荣轩', 0, '侯鹏飞', 8766227);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('杜瑞霖', '张果', 'www.garfield-ward.net', '孟擎苍', '谢鑫鹏', 0, '朱睿渊', 25934);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郑苑博', '黎思远', 'www.mayme-parisian.com', '梁楷瑞', '贺凯瑞', 0, '贺耀杰', 33);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('梁思淼', '谢熠彤', 'www.taryn-vandervort.name', '吕越泽', '谭晟睿', 0, '邵立诚', 767);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('杨风华', '杨苑博', 'www.geraldo-torphy.org', '董荣轩', '邱潇然', 0, '程昊焱', 40824078);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('叶明辉', '汪鸿煊', 'www.wilmer-ruecker.name', '阎梓晨', '曾鹏飞', 0, '李浩宇', 6);




