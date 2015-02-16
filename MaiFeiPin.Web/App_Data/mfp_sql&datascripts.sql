if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article]

CREATE TABLE [mfp_article] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[channel_id] [int]  NOT NULL DEFAULT (0),
[category_id] [int]  NOT NULL DEFAULT (0),
[call_index] [nvarchar]  (50) NULL DEFAULT (''),
[title] [nvarchar]  (100) NULL,
[link_url] [nvarchar]  (255) NULL DEFAULT (''),
[img_url] [nvarchar]  (255) NULL DEFAULT (''),
[seo_title] [nvarchar]  (255) NULL DEFAULT (''),
[seo_keywords] [nvarchar]  (255) NULL DEFAULT (''),
[seo_description] [nvarchar]  (255) NULL DEFAULT (''),
[zhaiyao] [nvarchar]  (255) NULL DEFAULT (''),
[content] [ntext]  NULL,
[sort_id] [int]  NULL DEFAULT (99),
[click] [int]  NULL DEFAULT (0),
[status] [tinyint]  NULL DEFAULT (0),
[groupids_view] [nvarchar]  (255) NULL DEFAULT (''),
[vote_id] [int]  NULL DEFAULT (0),
[is_msg] [tinyint]  NULL DEFAULT (0),
[is_top] [tinyint]  NULL DEFAULT (0),
[is_red] [tinyint]  NULL DEFAULT (0),
[is_hot] [tinyint]  NULL DEFAULT (0),
[is_slide] [tinyint]  NULL DEFAULT (0),
[is_sys] [tinyint]  NULL DEFAULT (0),
[user_name] [nvarchar]  (100) NULL,
[add_time] [datetime]  NULL DEFAULT (getdate()),
[update_time] [datetime]  NULL)

ALTER TABLE [mfp_article] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_article] ON

INSERT [mfp_article] ([id],[channel_id],[category_id],[call_index],[title],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 3,5,32,N'about',N'关于我们',N'网上的绿色生活，让生活更简单',N'处理废品是每个企业或个人生活中都不可回避的事情，对于国家前期粗放唯GDP论造成的环境破坏与浪费，极待解决的问题会很多，这个行业可能还属于初级阶段，也希望能为这个行业付出一点点力量。',99,86,0,0,0,0,0,0,0,1,N'admin',N'2012/10/19 23:25:28',N'2013/12/10 4:06:22')
INSERT [mfp_article] ([id],[channel_id],[category_id],[call_index],[title],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 4,5,32,N'contact',N'联系我们',N'网上的绿色生活，让生活更简单',N'<p>
	<strong>网上绿色生活 - 让生活更简单 </strong> 
</p>
<p>
	<strong>官方网址：</strong><a href="http://www.maifeipin.com" target="_blank">http://www.maifeipin.com</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.maifeipin.com" target="_blank">http://www.it134.cn</a> 
</p>
<p>
	<strong>所在地区：</strong>北京市海淀区西二旗大街18号
</p>
<p>
	<strong>业务电话：</strong>+86 13800138000
</p>
<p>
	<strong>新浪微博：</strong><a href="http://weibo.com/" target="_blank">http://weibo.com/</a> 
</p>
<p>
	<strong>技术Q群：</strong> 1285305988（1群已满 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1285305988 (4群)
</p>
<p>
	<strong>电子邮箱：</strong>admin@maifeipin.com
</p>',100,248,0,0,0,0,0,0,0,1,N'admin',N'2012/10/19 23:26:18',N'2013/12/10 4:06:26')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 5,1,4,N'新增2500万建筑轮廓图，谷歌地图迎来重大升级',N'/upload/201210/20/201210202111266945.jpg',N'10月19日下午消息，谷歌刚刚向谷歌地图的桌面版和移动版中增加了新的功能，除了街道、公园、水域外，用户还可以查看大城市的建筑鸟瞰轮廓图。',N'<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10月19日下午消息，谷歌刚刚向谷歌地图的桌面版和移动版中增加了新的功能，除了街道、公园、水域外，用户还可以查看大城市的建筑鸟瞰轮廓图。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 谷歌地图周四新增了2500万栋新建筑的轮廓图，所有的图片都配有高度信息。本次提供建筑物轮廓图的城市包括休斯顿、洛杉矶、芝加哥、迈阿密和旧金山湾区。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 谷歌地图工程经理鲍比·帕里克(Bobby Parikh)在博客中写道：“我们日常外出时，经常借助建筑物来辨认方位、确认地标、寻找路线。此次更新是我们长期努力的延续，目的是为用户提供尽可能广泛的地图。”
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 谷歌地图最近大受好评。当苹果将iOS 6默认地图更改为该公司自主开发的地图服务后，遭到了很多用户的反对。虽然谷歌随后改善了谷歌地图的移动网络应用，但并未透露是否会为iOS开发独立地图应用。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 谷歌执行董事长埃里克·施密特(Eric Schmidt)上周接受媒体采访时说：“苹果应该明白地图很难做了。”他还补充道，谷歌花了5年时间投资地图应用，而苹果仍在追赶之中。“我们投资了数亿美元采集卫星、航拍和街景图片，我们自认为拥有业内最优秀的产品。”他说。
</p>
<p>
	&nbsp;
</p>',99,76,0,0,0,1,1,0,1,1,N'admin',N'2012/10/19 23:58:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 6,1,9,N'无锁随便刷：摩托RAZR HD开发版开卖',N'/upload/201210/20/201210202114441653.jpg',N'如果你经常喜欢刷机（尤其是第三方ROM），想必一定对摩托的手机、平板没什么好感，因为Bootloader上锁的原因，使刷机过程变得很是复杂（通常只能通过混刷实现，而且要带有官方签名）。',N'<p align="center">
	<img alt="" src="/upload/201210/20/201210200915353848.jpg" /> 
</p>
<p align="center">
	&nbsp;
</p>
<p align="left">
	&nbsp;
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 尽管摩托现在归谷歌了，但是在运营商定制的要求下，还要是把Bootloader上锁。但好消息来了。继前段时间的Droid Razr M之后，他们现在又推出了Razr HD的开发版。没了Bootloader上锁，想怎么刷就怎么刷，刷刷更健康。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 据外媒androidauthority的报道，摩托已经通过他们的在线商店销售Razr HD开发版，售价599美元，规格配置和标准版没有什么区别。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 但是要注意的是，刷砖是没有质保的。不过话又说回来，刷机爱好者会在意质保吗？
</p>
<p align="center">
	&nbsp;
</p>',99,41,0,0,0,0,1,0,1,1,N'admin',N'2012/10/20 9:16:09')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 7,1,4,N'《植物大战僵尸》下一站：花园战争',N'/upload/201210/20/201210202117411706.jpg',N'来自外媒fusible.com的消息，宝开（PopCapGames）公司在16号注册了一系列与《植物大战僵尸》有关的域名，包括Plants vs Zombies GardenWarfare.com、Plants vs Zombies GardenWarfare.net、Plants vs Zombies GardenWarfare.org等等。',N'<p style="text-align:center;">
	<img alt="" src="/upload/201210/20/201210200924129175.jpg" /> 
</p>
<p style="text-align:center;">
	<br />
</p>
<p style="text-align:left;">
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;来自外媒fusible.com的消息，宝开（PopCapGames）公司在16号注册了一系列与《植物大战僵尸》有关的域名，包括Plants vs Zombies GardenWarfare.com、Plants vs Zombies GardenWarfare.net、Plants vs Zombies GardenWarfare.org等等。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在这些域名中我们发现了一个关键词：“GardenWarfare”——花园战争，看起来好像是和动视的《使命召唤——现代战争》(Call of Duty：ModernWarfare)有些关系，不过事实是，只是名字像罢了。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;早在8月份，宝开就曾透露过《植物大战僵尸》的续作，但并未公布续作的名称。老是说，这样一款曾经风靡全球的游戏如果就这样陨落实在是有些可惜。不过，现在宝开公司已经表示，新作将包含大量新功能、新场景，并计划于2013年春季发布。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;最后，Fusible还提到今年6月就曾有一位Twitter用户建议PopCap为新作命名为“花园战争”，不知道宝开最终真是采纳了这一用户的建议，还是早就计划好了要用这个名字。
	</p>
	<p>
		<br />
	</p>
	<p>
		<br />
	</p>',99,64,0,0,0,0,1,0,1,1,N'admin',N'2012/10/20 9:25:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 8,1,5,N'韩国为民众扩容免费Wi-Fi接入',N'/upload/201210/20/201210202121171718.jpg',N'韩国计划在今年年底，将提供免费Wi-Fi上网的场所数量提升到2000个。之前，其他亚洲国家和地区，如日本和台湾已经为民众提供免费的Wi-Fi上网服务。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;韩国主要的移动运营商KT、SK电信和LG UPlus表示，他们将投资于1000场所，提供免费Wi-Fi无线网络连接。韩国媒体报道。许多免费Wi-Fi上网地点是图书馆、政府机关和巴士总站。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;用户可以在韩国情报机构网站（speed.nia.or.kr）通过点击“公共免费WiFi”的链接，了解到哪里有免费Wi-Fi，并且使用一个简单的用户身份验证，获得免费的Wi-Fi服务。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;从明年开始，韩国将实施KCC计划，以支持地方政府和手机运营商共同分担免费Wi-Fi地点的建设成本，这些地点包括传统市场、健康中心等等，更好地服务于弱势民众。
</p>',99,41,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 9:31:09')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 9,2,11,N'中兴（ZTE）U930 3G手机（黑色）TD-SCDMA/GSM',N'/upload/201210/20/small_201210201038276866.jpg',N'1、黑曜高清、身临其境4.3寸QHD（960540）高分辨率5点触控电容触摸屏，16:9显示比例，像素◇像素“像素”（Pixel） 是由 Picture(图像) 和 Element（元素）这两个单词的字母所组成的，是用来计算数码影像的一种单位，如同摄影的相片一样，数码影像也具有连续性的浓淡阶调，我们…',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	1、黑曜高清、身临其境
</p>
<p>
	<br />
</p>
<p>
	4.3寸QHD（960×540）高分辨率5点触控电容触摸屏，16:9显示比例，
</p>
<p>
	像素
</p>
<p>
	◇
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	像素“像素”（Pixel） 是由 Picture(图像) 和 Element（元素）这两个单词的字母所组成的，是用来计算数码影像的一种单位，如同摄影的相片一样，数码影像也具有连续性的浓淡阶调，我们若把影像放大数倍，会发现这些连续色调其实是由许多色彩相近的小方点所组成，这些小方点就是构成影像的最小单位“像素”（Pixel）。这种最小的图形的单元能在屏幕上显示通常是单个的染色点。越高位的像素，其拥有的色板也就越丰富，越能表达颜色的真实感。
</p>
<p>
	查看详细介绍
</p>
<p>
	排列为比PENTILE更细腻的RGB，媲美宽屏电脑显示水平，尽情放大图片而不失真，尽显纤毫之美。
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	2、"薄"览天下，炫彩未来
</p>
<p>
	<br />
</p>
<p>
	细纹蚀纹工艺9.9毫米的完美轻薄机身，加背部凹陷防滑设计，使整机手握感十分舒适。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	3、极速、畅快、高效
</p>
<p>
	<br />
</p>
<p>
	Nvidia 同步双核1.2GHz增强型处理器,提供了比同配置异步双核更快速度的同时大幅度降低功耗，1M二级缓存更使U930跻身真正高端配置行列，实现了速度的超越。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	4、原生安卓4.0系统，全新至酷体验
</p>
<p>
	<br />
</p>
<p>
	原生态Android4.0系统，全方位升级：运行更快，操作更便捷。
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	5、高清家庭影院配合立体环绕音质，浑然天成！
</p>
<p>
	<br />
</p>
<p>
	SRS音效，水平环绕、垂直环绕等多角度营造逼真立体感声场。AP25芯片硬件加速，完美实现1080p高清视频播放
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	6、3D游戏效果出众，睿智不凡
</p>
<p>
	<br />
</p>
<p>
	Geforce 8核GPU拥有无与伦比的强大多媒体处理能力，给用户带来前所未有3D游戏娱乐
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	7、大千世界，博观众彩
</p>
<p>
	<br />
</p>
<p>
	500万摄像头 LED闪光灯，智能人脸识别，抓住每个激动的瞬间，同时支持全景拍摄，使拍照视角更宽阔。记录生活，分享感动……
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&lt;!--.pcp_lii_bz_title { PADDING-RIGHT: 7px; PADDING-LEFT: 7px; FONT-WEIGHT: bold; text-align:left; FONT-SIZE: 15px; PADDING-BOTTOM: 7px; COLOR: #000; PADDING-TOP: 7px; FONT-FAMILY:Arial, Helvetica, sans-serif}.pcp_lii_bz_zhengzi {PADDING-RIGHT: 15px; PADDING-LEFT: 15px; FONT-SIZE: 14px; PADDING-BOTTOM: 15px; LINE-HEIGHT: 1.5em;PADDING-TOP: 15px; text-indent:2em;FONT-FAMILY: Arial, Helvetica, sans-serif}--&gt;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	8、天下赛事，移动尽享，世界正在掌握
</p>
<p>
	<br />
</p>
<p>
	CMMB看移动电视无需流量，电视剧，精彩赛事享不停。
</p>
<p>
	<br />
</p>
<p>
	.bigapic{ width:750px; height:auto;}
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	常用号段对照:
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	GSM：131、132、134、135、136、137、138、139、151、156、158、159、186、188（不支持3G）
</p>
<p>
	CDMA：133、153、189（不支持3G）
</p>
<p>
	GSM/WCDMA：131、132、134、135、136、137、138、139、151、156、158、159、186、188（支持联通3G）
</p>
<p>
	GSM/TD-CMDA：131、132、134、135、136、137、138、139、151、156、158、159、186、188（支持移动3G）
</p>
<p>
	CDMA/CDMA2000：133、153、189（支持电信3G）
</p>
<p>
	<br />
</p>',99,25,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 9:50:27',N'2013/12/10 4:12:16')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 10,2,11,N'索尼（SONY）ST26i 3G手机（粉色）WCDMA/GSM',N'/upload/201210/20/small_201210201039367753.jpg',N'超大绚丽屏4英寸大屏幕，高清锐利，一目了然。线条流畅、机身纤细时尚Android手机，内置独特社交媒体提示灯光。唤醒您的耳朵感受摄人心魂的天籁之音。全新呼吸灯设计微博上又有好友@你了？Xperia J ST26i的全新智能呼吸灯会向您发出提醒。灯光将在有新信息、微博更新及更多内容…',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	超大绚丽屏
</p>
<p>
	<br />
</p>
<p>
	4英寸大屏幕，高清锐利，一目了然。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	线条流畅、机身纤细
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	时尚Android手机，内置独特社交媒体提示灯光。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	唤醒您的耳朵
</p>
<p>
	<br />
</p>
<p>
	感受摄人心魂的天籁之音。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	全新呼吸灯设计
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	微博上又有好友@你了？Xperia J ST26i的全新智能呼吸灯会向您发出提醒。灯光将在有新信息、微博更新及更多内容时通知您 – 并且能轻松地以时尚的方式保持联系。更喜欢面对面交谈？还可使用前置相机进行视频聊天。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	为了您的欣赏乐趣
</p>
<p>
	<br />
</p>
<p>
	找到合适的歌曲了？“WALKMAN”应用程序使您能随时欣赏音乐。只需插入耳机，即可让您感受摄人心魂的清晰音质。或者连接到无线扬声器，在xLoud技术的帮助下，让您的手机变身为终极DJ工作台。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	在更大的屏幕上欣赏
</p>
<p>
	<br />
</p>
<p>
	在4.0英寸大屏幕上欣赏精彩的世界，宽大而明亮。或观赏您喜爱的影片。浏览直观的“电影”应用程序，随心点播高清锐利的戏剧。表演时刻到了？通过WLAN和DLNA?将Xperia J ST26i DLNA Android手机连接到电视机或平板电脑，让人们在更大的屏幕上欣赏精美图片。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	清晰拍摄
</p>
<p>
	<br />
</p>
<p>
	使用500万像素自动对焦相机清晰地拍摄欢乐的面容，或者以视频方式拍摄清晰的动作；然后只需单击一下便可将所有分享至新浪微博或优酷网。还可在应用程序中观看您喜爱的照片和视频的每个细节。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	Music Unlimited*。您想要听的音乐，我们应有尽有。
</p>
<p>
	<br />
</p>
<p>
	可根据需要通过“音乐无限”欣赏数百万首歌曲。以离线方式聆听，没有恼人的广告。欣赏数十个预设频道，并与您自己的音乐收藏轻松同步。通过“音乐无限”畅享顶级音乐体验。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	*Music Unlimited是一项订阅服务。有关费用详情，请参阅服务条款。并非每个市场都提供Music Unlimited服务。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	容量更大。终身免费的50GB存储空间*
</p>
<p>
	<br />
</p>
<p>
	现在提供50GB的免费存储空间，可存储您的音乐、视频、照片及更多内容——您可以永久使用。我们联手Box?提供一个内容存储空间，您可以在其中访问Android智能手机、计算机或平板电脑中的任何内容。只需下载“Box for Android”应用程序，通过Xperia智能手机设置一个帐户，便可拥有您的免费存储空间。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	*50GB免费文件存储是一项限时优惠活动，于2012年12月31日结束。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	深入了解Xperia平板电脑
</p>
<p>
	<br />
</p>
<p>
	Xperia智能手机最佳新伴侣——Xperia平板电脑。索尼推出的一款Android平板电脑，坚实耐用且防水溅。在大屏幕上体验您喜爱的手机应用程序，邀您挖掘更多精彩。在Xperia手机上观看电影，回到家后再切换到平板电脑上进行观看。用手机拍摄图片。然后在平板电脑上进行编辑。以文字设定游戏，然后在平板电脑的大触摸屏上击败对手。沉醉于Xperia世界。翱翔于您的幻想世界。了解Xperia平板电脑
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>',99,36,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 9:52:12',N'2013/12/10 4:12:08')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 11,1,7,N'全球仅此一台！雷蛇星战版Blade游戏本',N'/upload/201210/20/201210202123456206.jpg',N'国外媒体今日曝光了造价15000美元（约合94000元人民币）的雷蛇《星球大战：旧共和国》定制版Blade游戏本，这款笔记本全球限量1台，并且会通过雷蛇官方的问卷抽奖活动来决定它最终的归属.',N'<p style="text-align:center;">
	<img alt="" src="/upload/201210/20/201210200953468709.jpg" /> 
</p>
<p>
	<br />
</p>
<p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;星战版Blade为了更加迎合主题而采用了<strong>灰白色全铝外壳和一个重新设计过的外壳Logo，原本键盘及Logo处的绿色灯光也被替换成了金黄色。</strong> 
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在具体的配置方面，星战版Blade采用一面17.3英寸全高清LED显示屏，内置英特尔IVB架构i7四核处理器、一张NVIDIA GTX 660M独立显卡、8GB内存以及一块64GB固态硬盘和一块500GB机械硬盘。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;此外，除了被视为Blade游戏本灵魂所在的LCD多媒体触控屏以及10个动态自适应触摸键被全部继承下来之外，广受用户好评的Switchblade系统UI也将被保留。
	</p>
	<p>
		<br />
	</p>',99,200,0,0,1,1,1,0,1,1,N'admin',N'2012/10/20 9:54:17')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 12,2,11,N'华为（HUAWEI）Ascend P1 XL U9200E 3G手机（黑）WCDMA/GSM',N'/upload/201210/20/small_201210201027425186.jpg',N'超大电池！核电站！2600毫安时大容量电池，最大之一！商务繁忙亦能自在享乐，普通用户使用3天以上！独特窄边和超薄设计采用独创制模、浇铸工艺，一体化金属框架的紧凑设计，机身宽度为64.8毫米，超薄9.9毫米，为P1带来了极舒适的握感，整体设计彰显时尚魅力。双核1.5GHz处理器…',N'<p>
	<br />
</p>
<p>
	超大电池！
</p>
<p>
	<br />
</p>
<p>
	核电站！2600毫安时大容量电池，最大之一！商务繁忙亦能自在享乐，普通用户使用3天以上！
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	独特窄边和超薄设计
</p>
<p>
	<br />
</p>
<p>
	采用独创制模、浇铸工艺，一体化金属框架的紧凑设计，机身宽度为64.8毫米，超薄9.9毫米，为P1带来了极舒适的握感，整体设计彰显时尚魅力。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	双核1.5GHz处理器
</p>
<p>
	<br />
</p>
<p>
	双核1.5GHz Cortex-A9处理器，加上华为软件优化技术，速度更快，超大型3D游戏也可轻松胜任，支持联通高速21Mbps上网
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	Super AMOLED高清显示屏
</p>
<p>
	<br />
</p>
<p>
	4.3英寸Super AMOLED qHD 960 x 540绚丽屏幕，显示效果更细腻，更优异，康宁大猩猩耐刮擦玻璃，抗指纹。
</p>
<p>
	<br />
</p>
<p>
	800万像素背照式相机
</p>
<p>
	<br />
</p>
<p>
	800万像素BSI背照式相机，支持自动对焦、LED闪光灯以及HDR优化效果；130万像素前置摄像头，自拍神器，精彩互动乐趣无限。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	5.1杜比音效
</p>
<p>
	<br />
</p>
<p>
	可通过任何双声道
</p>
<p>
	耳机
</p>
<p>
	◇
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	耳机在汉字区的用户，提起耳机都联想到大尺寸耳机，而非耳塞。而这些产品，从任何角度去归类，他们都隶属耳机类，不管是严格的产品归类还是大家习惯性的分类，他们都符合大家的耳机概念。在耳机类中，还可以细分为2种，即中尺寸和全尺寸耳机。对于MD播放器来说，耳机的作用已经是毋庸多言了。耳机的音质直接关系到产品播放的效果，如果使用的是劣质耳机的话，即使MD机再好也是没有用的。和其它随身听类的产品一样，MD自然也是随机附有耳机的。并且为了方便用户对于MD的操控，MD随机原配的耳机大多和线控器组合在一起，有的产品还在线控器上带有液晶显示屏，用户可以通过耳机上的线控器方便的对MD进行各种功能的操作，并且掌握播放中的各种信息。
</p>
<p>
	查看详细介绍
</p>
<p>
	享受5.1环绕立体声音效，天籁之音，家庭影院级享受。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>',99,26,0,0,1,0,0,1,0,1,N'admin',N'2012/10/20 9:55:05',N'2013/12/10 4:11:59')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 13,2,12,N'富士（FUJIFILM） FinePix SL245 数码相机叫板单反！24倍光变，一镜走天下！超有范',N'/upload/201210/20/small_201210201028435944.jpg',N'富士龙24倍光学变焦 24mm广角变焦镜头举世闻名的富士龙镜头广泛应用于各行各业，包括外太空中的卫星、电视/电影、监控和小型相机。Fujifilm以娴熟的制造工艺提供高精度的光学镜头和技术，让您拥有优异的24mm广角 24倍光学变焦。Super EBC - 旨在呈现高质量图像FinePix SL245中…',N'<p>
	<br />
</p>
<p>
	富士龙24倍光学变焦 24mm广角变焦镜头
</p>
<p>
	<br />
</p>
<p>
	举世闻名的富士龙镜头广泛应用于各行各业，包括外太空中的卫星、电视/电影、监控和小型相机。Fujifilm以娴熟的制造工艺提供高精度的光学镜头和技术，让您拥有优异的24mm广角 24倍光学变焦。
</p>
<p>
	<br />
</p>
<p>
	Super EBC - 旨在呈现高质量图像
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245中的所有镜片全部使用多层Super EBC（电子束镀膜）进行了处理，这种技术与备受专业摄影师推崇的富士龙广播电视镜头和大幅面相机镜头使用的是相同处理方式。经过处理后可大大降低重影和镜头反光，从而保证了清晰的图像质量。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	45档电子变焦
</p>
<p>
	<br />
</p>
<p>
	强有力的24倍变焦具有流畅的45档变焦控制，
</p>
<p>
	拍摄的每一帧都会异常精准。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	2cm 超微距
</p>
<p>
	<br />
</p>
<p>
	使用FinePix SL245在近达2cm的距离进行微距摄影时，可让您真正贴近拍摄对象捕捉到精致的细节。
</p>
<p>
	<br />
</p>
<p>
	高感光度 CCD位移光学防抖
</p>
<p>
	<br />
</p>
<p>
	多重图像防抖功能为高感光度与CCD位移光学防抖功能的组合，可以防止因相机震动和被摄物体移动所导致的模糊。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	电子取景器
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245具有更大的灵活性，可让您通过明亮、清晰的电子取景器进行取景构图。明亮的EVF不仅增强了明亮日光下的可视性，还可容纳传统的拍摄方式，因此很容易稳定相机，即使使用最大的24倍变焦进行拍摄时也不例外。屈光度调节则可以根据不同人的眼睛对缩放能力进行微调。
</p>
<p>
	<br />
</p>
<p>
	宽敞、清晰的3.0英寸LCD显示屏
</p>
<p>
	<br />
</p>
<p>
	明亮、高对比度（1:1100）、3.0英寸460,000像素LCD显示屏，具有160度超大广角，让取景构图、查看和分享图像成为一种乐趣。
</p>
<p>
	&nbsp;
</p>
<p>
	6种场景的SR AUTO（智能场景识别）
</p>
<p>
	<br />
</p>
<p>
	取景框中的场景会被自动识别并选择为适当的相机设置之一：肖像、风景、夜景、微距（特写）、夜景肖像和背光肖像。
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	肖像
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	风景
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	夜景
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	通过快速检测取景框中的脸部并优化对焦、亮度和白平衡来拍摄肖像照片。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	可自动识别风景照片如山峦和建筑。以鲜艳的颜色和深度拍摄天空、森林和花卉场景的颜色。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	在弱光条件下和晚间拍摄时，能自动调整快门速度和感光度，拍摄出噪点极少的清晰照片。
</p>
<p>
	<br />
</p>
<p>
	&nbsp;
</p>
<p>
	微距（特写）
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	夜景肖像
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	背光肖像
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	微距（特写）模式可精确设置小花或微小对象细节的对焦位置。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	在晚间或弱光条件下拍摄人物时，智能场景识别（SR Auto）能优化肖像的闪光灯有效范围、快门速度和曝光，同时拍摄的背景画面清晰、明亮。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	对通常因背光而产生的阴影和曝光不足的脸部亮度进行优化。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	脸部优先功能
</p>
<p>
	<br />
</p>
<p>
	脸部优先功能通过识别脸部并调节对焦和曝光对人物照片进行优化，以保证拍摄出漂亮的照片。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	眨眼测试
</p>
<p>
	<br />
</p>
<p>
	如果画面中有人眨眼，相机会发出警告，让您选择重拍照片或放大脸部以决定保存还是删除图像，然后再开始拍摄下一幅照片。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	笑脸模式
</p>
<p>
	<br />
</p>
<p>
	出现笑脸时，场景定位中的笑脸模式可自动释放快门，确保您不会在拍摄对象绽开可爱的笑容时没有及时拍下。
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	脸部识别
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245不仅可以检测到画面中的脸部，而且可以识别特定的人物！在相机中最多可以注册8个人，下次拍到他们的时候，可以调出他们的名字，按照所注册的脸部进行优化设置。回放时，可以搜索包含所注册的脸部的全部照片，快速查找您想要的照片。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	移动全景拍摄
</p>
<p>
	<br />
</p>
<p>
	拍摄全景照片轻而易举！相机自动将3张连续拍摄的照片拼合起来，使用框内向导确保图像对齐。从而拍摄出极富视觉冲击力的全景照片保存在存储卡中。
</p>
<p>
	<br />
</p>
<p>
	HDTV兼容的照片和电影
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245能以16:9格式拍摄高分辨率的照片和电影，让您体验极具震撼力的HDTV全屏图像显示。
</p>
<p>
	以16:9格式拍摄高分辨率的图像。
</p>
<p>
	<br />
</p>
<p>
	照片拍摄
</p>
<p>
	<br />
</p>
<p>
	以16:9格式拍摄高分辨率的图像（4,288 x 2,416像素、3072 x 1728像素、1920 x 1080像素）。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	电影拍摄
</p>
<p>
	<br />
</p>
<p>
	以16:9格式（1,280 x 720像素）拍摄高分辨率的图像。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	使用内置的社交网站分享您的图像
</p>
<p>
	<br />
</p>
<p>
	不用等到了家以后才去选择哪张照片上传到FACEBOOK。将想要分享的照片加上标签便可在相机中开始处理。下一次连接到家里的电脑时，便可将图像自动上传。对于想要上传到YouTube?的电影片段，也可同样操作。
</p>
<p>
	<br />
</p>
<p>
	用MyFinePix Studio轻松上传至YouTube?和FACEBOOK
</p>
<p>
	传如此简单！拍摄照片并标记以上传到FACEBOOK档案页或YouTube?账户。
</p>
<p>
	<br />
</p>',99,61,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 9:55:50',N'2013/12/10 4:11:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 14,2,12,N'尼康（NIKON） Coolpix L310 便携数码相机（1408万像素 3寸屏 21倍光变 25mm广角 智能人像）',N'/upload/201210/20/small_201210201030215722.jpg',N'设计优雅、美观的21倍光学变焦有效像素◇像素“像素”（Pixel） 是由 Picture(图像) 和 Element（元素）这两个单词的字母所组成的，是用来计算数码影像的一种单位，如同摄影的相片一样，数码影像也具有连续性的浓淡阶调，我们若把影像放大数倍，会发现这些连续色调其实是由许多…',N'<p>
	设计优雅、美观的21倍光学变焦
</p>
<p>
	<br />
</p>
<p>
	有效
</p>
<p>
	像素
</p>
<p>
	◇
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	像素“像素”（Pixel） 是由 Picture(图像) 和 Element（元素）这两个单词的字母所组成的，是用来计算数码影像的一种单位，如同摄影的相片一样，数码影像也具有连续性的浓淡阶调，我们若把影像放大数倍，会发现这些连续色调其实是由许多色彩相近的小方点所组成，这些小方点就是构成影像的最小单位“像素”（Pixel）。这种最小的图形的单元能在屏幕上显示通常是单个的染色点。越高位的像素，其拥有的色板也就越丰富，越能表达颜色的真实感。
</p>
<p>
	查看详细介绍
</p>
<p>
	可达1,408万，21倍光学变焦尼克尔镜头覆盖从25mm广角至525mm超远摄（相当于35mm[135]格式的画角）的宽阔焦距范围，并配备3英寸、约23万画点（QVGA）TFT 液晶显示屏。
</p>
<p>
	<br />
</p>
<p>
	21倍光学变焦尼克尔镜头
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	21倍光学变焦尼克尔镜头* 25毫米广角到525毫米超远摄范围，构图自由，手感舒适，1408万像素的清晰分辨能力和尼康EXPEED C2图像处理引擎的优化性能最大限度地提高影像质量。
</p>
<p>
	*35mm格式相当值
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	高分辨率LCD显示屏和智能设计
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	7.5厘米(3英寸)约23万画点TFT LCD显示屏安装在相机背面的突出位置，它采用尼康清晰的彩色显示技术，最大限度地提高了分辨率，无论室内室外，都能提供清晰的影像。精雕细琢的外壳，控制键设计优化了方便性和实用性。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	减震功能带来清晰影像
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	图像感应器位移和电子减震的组合、“动态侦测”和扩大至ISO 6400的感光度设置，有助于始终获得清晰的影像。符合人体工程学的设计，进一步使处理更稳定、操作更顺利。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	其它功能
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	·3种速度的运动连拍模式(高、中、低)
</p>
<p>
	·支持常用AA电池
</p>
<p>
	·具有场景自动选择器的“简易自动”模式
</p>
<p>
	·智能人像系统
</p>
<p>
	·宠物像模式
</p>
<p>
	<br />
</p>',99,60,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 9:59:12',N'2013/12/10 4:11:43')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 15,2,13,N'NBA 8GB Micro SDHC（TF）存储卡 Class 6（黑色）',N'/upload/201210/20/small_201210201043119922.jpg',N'主要参数 存储容量8GB颜色红色重量(g)12.5g读取数据传输率(MB/S)25MB/S写入数据传输速度(MB/S)10MB/S基本参数存储容量8GB颜色红色产品尺寸53179mm重量(g)12.5g技术参数读取数据传输率(MB/S)25MB/S写入数据传输速度(MB/S)10MB/S其他特点外壳材质：橡胶',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	主要参数
</p>
<p>
	<br />
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	存储容量
</p>
<p>
	<br />
</p>
<p>
	8GB
</p>
<p>
	<br />
</p>
<p>
	颜色
</p>
<p>
	<br />
</p>
<p>
	红色
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	重量(g)
</p>
<p>
	<br />
</p>
<p>
	12.5g
</p>
<p>
	<br />
</p>
<p>
	读取数据传输率(MB/S)
</p>
<p>
	<br />
</p>
<p>
	25MB/S
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	写入数据传输速度(MB/S)
</p>
<p>
	<br />
</p>
<p>
	10MB/S
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	基本参数
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	存储容量
</p>
<p>
	<br />
</p>
<p>
	8GB
</p>
<p>
	<br />
</p>
<p>
	颜色
</p>
<p>
	<br />
</p>
<p>
	红色
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	产品尺寸
</p>
<p>
	<br />
</p>
<p>
	53×17×9mm
</p>
<p>
	<br />
</p>
<p>
	重量(g)
</p>
<p>
	<br />
</p>
<p>
	12.5g
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	技术参数
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	读取数据传输率(MB/S)
</p>
<p>
	<br />
</p>
<p>
	25MB/S
</p>
<p>
	<br />
</p>
<p>
	写入数据传输速度(MB/S)
</p>
<p>
	<br />
</p>
<p>
	10MB/S
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	其他特点
</p>
<p>
	<br />
</p>
<p>
	外壳材质：橡胶
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>',99,22,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:00:14',N'2013/12/10 4:11:36')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 23,1,8,N'宏碁Tegra 3果冻豆平板229.99美元',N'/upload/201210/20/201210202127247004.jpg',N'谷歌Nexus7成功表明，消费者愿意为功能强大且经济实惠的7英寸平板电脑掏钱，现在台湾厂商宏碁也准备推出自己的7英寸产品－宏碁Iconia Tab A110。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;宏碁Iconia Tab A110拥有一个7英寸显示屏，分辨率1024×600，采用NVIDIA Tegra3四核处理器，主频1.2GHz，1GB内存和8GB存储空间，操作系统采用Android4.1果冻豆。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;宏碁Iconia Tab A110平板尽管屏幕可能不如Nexus7，但宏碁为这款平板电脑集成microSD卡插槽，支持高达32GB的额外存储空间。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;宏碁Iconia Tab A110支持Wi-Fi 802.11 b/g/n和蓝牙3.0，集成微型USB和微型HDMI端口，一个200万像素的前置摄像头，处理视频通话。宏碁Iconia Tab A110电池寿命长达7个半小时。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;宏碁Iconia Tab A110将于10月30日在美国和加拿大发售，价格229.99美元。
</p>',99,39,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 10:13:03')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 26,2,17,N'微软平板电脑Surface wWinRT-32GB Bndl SC ChnSimp Hdwr',N'/upload/201210/20/small_201210202310110337.jpg',N'<span style="line-height:25px;font-size:12px;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121019171007.jpg" width="740" height="943" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121017094240.jpg" width="740" height="688" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121017094249.jpg" width="740" height="719" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121019102815.jpg" width="740" height="960" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121017094305.jpg" width="740" height="560" /></span>',99,144,0,0,1,1,1,1,0,1,N'admin',N'2012/10/20 10:22:24')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 39,3,28,N'短发美女',N'/upload/201210/20/small_201210201104382108.jpg',N'短发也有不一样的美',99,18,0,0,0,0,0,0,1,1,N'admin',N'2012/10/20 11:05:35')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 41,1,9,N'599元的安卓4.0手机：4寸/双核/双卡双待',N'/upload/201210/22/201210220945138641.jpg',N'北斗小辣椒双核版之所以受到许多用户的关注，其699元的售价占有很重要的因素。现在纽曼也拿出了他们的入门双核智能机，而它的售价更低只有599元。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;其实之前纽曼曾推出了一款双核手机NM860，其内置的是1GB RAM，不知道出于何种原因，随后纽曼对该机进行了重新定位，其名字也改成了NX。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;NX机身厚度9.8mm，<strong>配备的是4寸触摸屏，分辨率为800×480像素</strong>，<strong>搭载的是主频1GHz的MT6577双核处理器，内置512MB 
RAM和4GB存储空间</strong>，同时提供的了500万像素摄像头（前置摄像头为30万像素），<strong>运行的是Android 
4.0系统</strong>。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;从配置上来看，NX与北斗双核小辣椒基本相同，不过两者最大的区别是搭载双核处理器的型号，<strong>其中前者为MT6577（Cortex 
A9架构/PowerVR SGX531ultra）后者是MSM8225（Cortex A5架构/CPU 
Adreno203），单从性能上来看，MT6577明显要强于MS8225。</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;据悉，这款手机将会在11月初正式上市，售价为599元。
</p>',99,10,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:07:11')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 16,2,13,N'东芝（TOSHIBA）16GB SDHC高速储存卡（class10）',N'/upload/201210/20/small_201210201041028868.jpg',N'主要参数 闪存卡类型SDHC卡闪存卡容量16GB写入速度(MB/s)6MB/s基本参数闪存卡类型SDHC卡闪存卡容量16GB写入速度(MB/s)6MB/s',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	主要参数
</p>
<p>
	<br />
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	闪存卡类型
</p>
<p>
	<br />
</p>
<p>
	SDHC卡
</p>
<p>
	<br />
</p>
<p>
	闪存卡容量
</p>
<p>
	<br />
</p>
<p>
	16GB
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	写入速度(MB/s)
</p>
<p>
	<br />
</p>
<p>
	6MB/s
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	基本参数
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	闪存卡类型
</p>
<p>
	<br />
</p>
<p>
	SDHC卡
</p>
<p>
	<br />
</p>
<p>
	闪存卡容量
</p>
<p>
	<br />
</p>
<p>
	16GB
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	写入速度(MB/s)
</p>
<p>
	<br />
</p>
<p>
	6MB/s
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>',99,41,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:02:39',N'2013/12/10 4:11:25')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 17,2,15,N'三星（SAMSUNG）NP3445VC-S01CN 14英寸笔记本电脑',N'/upload/201210/20/small_201210201051542905.jpg',N'三星3445VC-S01详细参数切换到传统表格版基本参数上市时间：2012年08月产品类型：家用产品定位：全能学生本主板芯片组：AMD A70M 处理器CPU系列：AMD A6系列CPU型号：AMD Trinity APU A6-4400MCPU主频：2.7GHz最高睿频：3200MHz二级缓存：2MB核心类型：Trinity核心/线程数：双…',N'<div class="detail-content" align="left">
	<p>
		<br />
三星3445VC-S01详细参数<br />
切换到传统表格版
	</p>
	<p>
		基本参数
	</p>
	<p>
		<br />
上市时间：2012年08月<br />
产品类型：家用<br />
产品定位：全能学生本<br />
主板芯片组：AMD A70M<br />
&nbsp;
	</p>
	<p>
		<br />
处理器
	</p>
	<p>
		<br />
CPU系列：AMD A6系列<br />
CPU型号：AMD Trinity APU A6-4400M<br />
CPU主频：2.7GHz<br />
最高睿频：3200MHz<br />
二级缓存：2MB<br />
核心类型：Trinity<br />
核心/线程数：双核心<br />
功耗：35W<br />
&nbsp;
	</p>
	<p>
		<br />
存储设备
	</p>
	<p>
		<br />
内存容量：2GB<br />
内存类型：DDR3 1333MHz<br />
最大内存容量：16GB<br />
硬盘容量：500GB<br />
硬盘描述：5400转，SATA<br />
光驱类型：DVD刻录机<br />
设计类型：光驱内置<br />
光驱描述：支持DVD SuperMulti双层刻录<br />
&nbsp;
	</p>
	<p>
		<br />
显示屏
	</p>
	<p>
		<br />
屏幕尺寸：14英寸<br />
屏幕比例：16:9<br />
屏幕分辨率：1366x768<br />
背光技术：LED背光<br />
&nbsp;
	</p>
	<p>
		<br />
显卡
	</p>
	<p>
		<br />
显卡类型：双显卡（独立＋集成）<br />
显卡芯片：AMD Radeon HD 7670M＋AMD Radeon HD 7520G<br />
显存容量：2GB<br />
显存类型：DDR3<br />
显存位宽：128bit<br />
流处理器数量：480<br />
DirectX：11<br />
&nbsp;
	</p>
	<p>
		<br />
多媒体设备
	</p>
	<p>
		<br />
摄像头：集成30万像素摄像头<br />
音频系统：内置音效芯片<br />
扬声器：内置扬声器<br />
麦克风：内置麦克风<br />
&nbsp;
	</p>
	<p>
		<br />
网络通信
	</p>
	<p>
		<br />
无线网卡：支持802.11b/g/n无线协议<br />
有线网卡：1000Mbps以太网卡<br />
蓝牙：支持，蓝牙4.0模块<br />
&nbsp;
	</p>
	<p>
		<br />
I/O接口
	</p>
	<p>
		<br />
数据接口：1×USB2.0+2×USB3.0<br />
视频接口：VGA，HDMI<br />
音频接口：耳机输出接口，麦克风输入接口<br />
其它接口：RJ45（网络接口），电源接口<br />
读卡器：4合1读卡器（SD，SDHC，SDXC，MMC）<br />
&nbsp;
	</p>
	<p>
		<br />
输入设备
	</p>
	<p>
		<br />
指取设备：触摸板<br />
键盘描述：全尺寸键盘<br />
&nbsp;
	</p>
	<p>
		<br />
电源描述
	</p>
	<p>
		<br />
电池类型：6芯锂电池<br />
续航时间：具体时间视使用环境而定<br />
电源适配器：100V-240V 60W 自适应交流电源适配器<br />
&nbsp;
	</p>
	<p>
		<br />
外观
	</p>
	<p>
		<br />
笔记本重量：2.25Kg<br />
外壳材质：复合材质<br />
外壳描述：泰坦银<br />
&nbsp;
	</p>
	<p>
		<br />
其他
	</p>
	<p>
		<br />
附带软件：Samsung Recovery Solution<br />
&nbsp;
	</p>
	<p>
		<br />
笔记本附件
	</p>
	<p>
		<br />
包装清单：笔记本主机 x1<br />
&nbsp;电池 x1 <br />
电源适配器 x1<br />
&nbsp;电源线 x1<br />
&nbsp;说明书 x1<br />
&nbsp;保修卡 x1<br />
&nbsp;笔记本包 x1<br />
&nbsp;
	</p>
	<p>
		<br />
保修信息
	</p>
	<p>
		<br />
保修政策：全国联保，享受三包服务<br />
质保时间：1年<br />
质保备注：整机1年，主要部件2年，电池12个月<br />
客服电话：400-810-5858<br />
电话备注：周一至周五：8:00-21:00；周六和周日：8:00-17:00<br />
详细内容：参照国家“新三包”规定执行在保修期内，凡属产品本身质量引起的故障，请顾客凭已填好的保修卡正本及购机发票在全国各地三星授权的维修中心享受免费保修服务。不接收由于改装或加装其他功能后出现故障的机器。保修卡及购买发票一经涂改，保修即行失效。请顾客妥善保存购机发票和保修证书一同作为保修凭证，遗失不补。<br />
&nbsp;
	</p>
</div>',99,38,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:05:14',N'2013/12/10 4:11:16')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 18,2,15,N'东芝（TOSHIBA）C805-S51B 14英寸笔记本电脑（i5-3210M 2G 500G HD 7610M 1G独显 USB3.0 Win7）天籁黑',N'/upload/201210/20/small_201210201033194448.jpg',N'屏幕尺寸：14英寸 1366x768CPU型号：Intel 酷睿i5 3210M CPU主频：2.5GHz 内存容量：2GB DDR3 1600MHz硬盘容量：500GB 5400转，SATA显卡芯片：AMD Radeon HD 7610M＋Intel GMA...操作系统：Windows 7 Home Basic 64bit（64...摄像头：集成130万像素摄像头 光驱类型：DVD刻录机…',N'<p>
	屏幕尺寸：14英寸 1366x768<br />
CPU型号：Intel 酷睿i5 3210M <br />
CPU主频：2.5GHz <br />
内存容量：2GB DDR3 1600MHz<br />
硬盘容量：500GB 5400转，SATA<br />
显卡芯片：AMD Radeon HD 7610M＋Intel GMA...<br />
操作系统：Windows 7 Home Basic 64bit（64...<br />
摄像头：集成130万像素摄像头 <br />
光驱类型：DVD刻录机 支持DVD SuperMulti...<br />
无线网卡：支持802.11b/g/n无线协议 <br />
笔记本重量：2.1Kg <br />
有线网卡：1000Mbps以太网卡
</p>
<p>
	<br />
东芝C805-S51B（天籁黑）详细参数
</p>
<p>
	&nbsp;
</p>
<p>
	基本参数
</p>
<p>
	<br />
上市时间：2012年07月<br />
产品类型：家用<br />
产品定位：全能学生本<br />
操作系统：Windows 7 Home Basic 64bit（64位家庭普通版）<br />
&nbsp;
</p>
<p>
	<br />
处理器
</p>
<p>
	<br />
CPU系列：英特尔 酷睿i5 3代系列（Ivy Bridge）<br />
CPU型号：Intel 酷睿i5 3210M<br />
CPU主频：2.5GHz<br />
最高睿频：3100MHz<br />
总线规格：DMI 5 GT/s<br />
三级缓存：3MB<br />
核心类型：Ivy Bridge<br />
核心/线程数：双核心/四线程<br />
制程工艺：22nm<br />
指令集：AVX，64bit<br />
功耗：35W<br />
&nbsp;
</p>
<p>
	<br />
存储设备
</p>
<p>
	<br />
内存容量：2GB<br />
内存类型：DDR3 1600MHz<br />
插槽数量：2xSO-DIMM<br />
最大内存容量：16GB<br />
硬盘容量：500GB<br />
硬盘描述：5400转，SATA<br />
光驱类型：DVD刻录机<br />
设计类型：光驱内置<br />
光驱描述：支持DVD SuperMulti双层刻录<br />
&nbsp;
</p>
<p>
	<br />
显示屏
</p>
<p>
	<br />
屏幕尺寸：14英寸<br />
屏幕比例：16:9<br />
屏幕分辨率：1366x768<br />
背光技术：LED背光<br />
屏幕描述：高清炫彩屏<br />
&nbsp;
</p>
<p>
	<br />
显卡
</p>
<p>
	<br />
显卡类型：双显卡（独立＋集成）<br />
显卡芯片：AMD Radeon HD 7610M＋Intel GMA HD 4000<br />
显存容量：1GB<br />
显存类型：DDR3<br />
显存位宽：128bit<br />
流处理器数量：400<br />
DirectX：11<br />
&nbsp;
</p>
<p>
	<br />
多媒体设备
</p>
<p>
	<br />
摄像头：集成130万像素摄像头<br />
音频系统：内置音效芯片<br />
扬声器：内置扬声器<br />
麦克风：内置麦克风<br />
&nbsp;
</p>
<p>
	<br />
网络通信
</p>
<p>
	<br />
无线网卡：支持802.11b/g/n无线协议<br />
有线网卡：1000Mbps以太网卡<br />
&nbsp;
</p>
<p>
	<br />
I/O接口
</p>
<p>
	<br />
数据接口：2×USB2.0+1×USB3.0<br />
视频接口：VGA，HDMI<br />
音频接口：耳机输出接口，麦克风输入接口<br />
其它接口：RJ45（网络接口），电源接口<br />
读卡器：多合1读卡器（SD，SDHC，SDXC，MMC，Memory Stick，Memory Stick Pro）<br />
&nbsp;
</p>
<p>
	<br />
输入设备
</p>
<p>
	<br />
指取设备：触摸板<br />
键盘描述：86键人体工程学键盘，触摸板及触摸板开关控制键，Windows快捷键，应用程序键和FN功能热键<br />
人脸识别：支持智能人脸识别功能<br />
&nbsp;
</p>
<p>
	<br />
电源描述
</p>
<p>
	<br />
电池类型：6芯锂电池，4800毫安<br />
续航时间：具体时间视使用环境而定<br />
&nbsp;
</p>
<p>
	<br />
外观
</p>
<p>
	<br />
笔记本重量：2.1Kg<br />
长度：341mm<br />
宽度：232mm<br />
厚度：27.9-32.5mm<br />
外壳材质：复合材质<br />
外壳描述：天籁黑<br />
&nbsp;
</p>
<p>
	<br />
其他
</p>
<p>
	<br />
附带软件：随机软件<br />
安全性能：硬盘密码，Kensington锁槽<br />
&nbsp;
</p>
<p>
	<br />
笔记本附件
</p>
<p>
	<br />
包装清单：笔记本主机 x1<br />
&nbsp;电池 x1<br />
&nbsp;电源适配器 x1<br />
&nbsp;电源线 x1<br />
&nbsp;说明书 x1<br />
&nbsp;保修卡 x1<br />
&nbsp;
</p>
<p>
	<br />
保修信息
</p>
<p>
	<br />
保修政策：国际有限保证，享受三包服务<br />
质保时间：1年<br />
质保备注：1年国际有限保证，主要部件保修2年，电池1年<br />
客服电话：800-820-2048<br />
电话备注：9:00-17:00（节假日休息）<br />
详细内容：东芝电脑网络（上海）有限公司（简称本公司）根据中华人民共和国相关法律法规制定本保修政策，仅适用于用户在中华人民共和国境内(港、澳、台地区除外)通过合法途径购买的本公司生产制造的东芝笔记本电脑产品，请您务必妥善保管相关凭证并在每次要求维修时携带，本公司提供的保修期内的保修是指免除部件费和人工费的维修服务。<br />
&nbsp;
</p>
<!-- End Save for Web Slices -->',99,23,0,0,1,0,0,1,0,1,N'admin',N'2012/10/20 10:06:25',N'2013/12/10 4:11:04')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 19,2,16,N'三星（SAMSUNG）NP530U4C-A01CN 14英寸超极本 (i5-2537M 4G 500G+SSD 24G 核芯显卡 WIN7 蓝牙）银色',N'/upload/201210/20/small_201210201034383555.jpg',N'屏幕尺寸：14英寸 1366x768CPU型号：Intel 酷睿i5 2537M CPU主频：1.4GHz 内存容量：4GB DDR3 1333MHz硬盘容量：24GB+500GB SSD+5400转，SATA显卡芯片：Intel GMA HD 3000 操作系统：Windows 7 Home Basic 64bit（64...摄像头：集成130万像素摄像头 光驱类型：DVD刻录机 支持D…',N'<p>
	屏幕尺寸：14英寸 1366x768<br />
CPU型号：Intel 酷睿i5 2537M <br />
CPU主频：1.4GHz <br />
内存容量：4GB DDR3 1333MHz<br />
硬盘容量：24GB+500GB SSD+5400转，SATA<br />
显卡芯片：Intel GMA HD 3000 <br />
操作系统：Windows 7 Home Basic 64bit（64...<br />
摄像头：集成130万像素摄像头 <br />
光驱类型：DVD刻录机 支持DVD SuperMulti...<br />
无线网卡：支持802.11b/g/n无线协议 <br />
蓝牙：支持，蓝牙3.0模块 <br />
有线网卡：1000Mbps以太网卡
</p>
<p>
	<br />
三星530U4C-A01详细参数
</p>
<p>
	<br />
基本参数
</p>
<p>
	<br />
上市时间：2012年08月<br />
产品类型：家用<br />
产品定位：轻薄便携本，Ultrabook笔记本<br />
操作系统：Windows 7 Home Basic 64bit（64位家庭普通版）<br />
&nbsp;
</p>
<p>
	<br />
处理器
</p>
<p>
	<br />
CPU系列：英特尔 酷睿i5 2代系列（Sandy Bridge）<br />
CPU型号：Intel 酷睿i5 2537M<br />
CPU主频：1.4GHz<br />
最高睿频：2300MHz<br />
总线规格：DMI 5 GT/s<br />
三级缓存：3MB<br />
核心类型：Sandy Bridge<br />
核心/线程数：双核心/四线程<br />
制程工艺：32nm<br />
指令集：AVX，64bit<br />
功耗：17W<br />
&nbsp;
</p>
<p>
	<br />
存储设备
</p>
<p>
	<br />
内存容量：4GB<br />
内存类型：DDR3 1333MHz<br />
最大内存容量：16GB<br />
硬盘容量：24GB+500GB<br />
硬盘描述：SSD+5400转，SATA<br />
光驱类型：DVD刻录机<br />
设计类型：光驱内置<br />
光驱描述：支持DVD SuperMulti双层刻录<br />
&nbsp;
</p>
<p>
	<br />
显示屏
</p>
<p>
	<br />
屏幕尺寸：14英寸<br />
屏幕比例：16:9<br />
屏幕分辨率：1366x768<br />
背光技术：LED背光<br />
屏幕描述：防眩光高亮屏<br />
&nbsp;
</p>
<p>
	<br />
显卡
</p>
<p>
	<br />
显卡类型：核芯显卡<br />
显卡芯片：Intel GMA HD 3000<br />
显存容量：共享内存容量<br />
显存类型：无<br />
DirectX：11<br />
&nbsp;
</p>
<p>
	<br />
多媒体设备
</p>
<p>
	<br />
摄像头：集成130万像素摄像头<br />
音频系统：内置音效芯片<br />
扬声器：内置扬声器<br />
麦克风：内置麦克风<br />
&nbsp;
</p>
<p>
	<br />
网络通信
</p>
<p>
	<br />
无线网卡：支持802.11b/g/n无线协议<br />
有线网卡：1000Mbps以太网卡<br />
蓝牙：支持，蓝牙3.0模块<br />
&nbsp;
</p>
<p>
	<br />
I/O接口
</p>
<p>
	<br />
数据接口：1×USB2.0+3×USB3.0<br />
视频接口：VGA，HDMI<br />
音频接口：耳机输出接口，麦克风输入接口<br />
其它接口：RJ45（网络接口），电源接口<br />
读卡器：4合1读卡器（SD，SDHC，SDXC，MMC）<br />
&nbsp;
</p>
<p>
	<br />
输入设备
</p>
<p>
	<br />
指取设备：触摸板<br />
键盘描述：全尺寸键盘<br />
&nbsp;
</p>
<p>
	<br />
电源描述
</p>
<p>
	<br />
电池类型：聚合物电池<br />
续航时间：具体时间视使用环境而定<br />
&nbsp;
</p>
<p>
	<br />
外观
</p>
<p>
	<br />
外壳材质：镁铝合金<br />
外壳描述：银灰色<br />
&nbsp;
</p>
<p>
	<br />
其他
</p>
<p>
	<br />
附带软件：Samsung Recovery Solution<br />
安全性能：安全锁孔<br />
&nbsp;
</p>
<p>
	<br />
笔记本附件
</p>
<p>
	<br />
包装清单：笔记本主机 x1<br />
&nbsp;电源适配器 x1<br />
&nbsp;电源线 x1<br />
&nbsp;说明书 x1<br />
&nbsp;保修卡 x1<br />
&nbsp;笔记本包 x1<br />
&nbsp;
</p>
<p>
	<br />
保修信息
</p>
<p>
	<br />
保修政策：全国联保，享受三包服务<br />
质保时间：1年<br />
质保备注：整机1年，主要部件2年，电池12个月<br />
客服电话：400-810-5858<br />
电话备注：周一至周五：8:00-21:00；周六和周日：8:00-17:00<br />
详细内容：参照国家“新三包”规定执行在保修期内，凡属产品本身质量引起的故障，请顾客凭已填好的保修卡正本及购机发票在全国各地三星授权的维修中心享受免费保修服务。不接收由于改装或加装其他功能后出现故障的机器。保修卡及购买发票一经涂改，保修即行失效。请顾客妥善保存购机发票和保修证书一同作为保修凭证，遗失不补。<br />
&nbsp;
</p>',99,24,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:08:16',N'2013/12/10 4:10:55')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 20,2,16,N'索尼（SONY）SVT13117ECS 13.3英寸超极本（i5-3317U 4G 500G+32GSSD 蓝牙 USB3.0 WIN7 银）',N'/upload/201210/20/small_201210201036462871.jpg',N'屏幕尺寸：13.3英寸 1366x768CPU型号：Intel 酷睿i5 3317U CPU主频：1.7GHz 内存容量：4GB DDR3 1600MHz硬盘容量：32GB+500GB SSD+5400转，SATA显卡芯片：Intel GMA HD 4000 操作系统：Windows 7 Home Basic 64bit（64...摄像头：集成摄像头 光驱类型：无内置光驱 无线网卡：支…',N'<p align="center">
	&nbsp;
</p>
<p>
	屏幕尺寸：13.3英寸 1366x768<br />
CPU型号：Intel 酷睿i5 3317U <br />
CPU主频：1.7GHz <br />
内存容量：4GB DDR3 1600MHz<br />
硬盘容量：32GB+500GB SSD+5400转，SATA<br />
显卡芯片：Intel GMA HD 4000 <br />
操作系统：Windows 7 Home Basic 64bit（64...<br />
摄像头：集成摄像头 <br />
光驱类型：无内置光驱 <br />
无线网卡：支持802.11b/g/n无线协议 <br />
笔记本重量：1.6Kg <br />
蓝牙：支持，蓝牙4.0模块
</p>
<p>
	<br />
索尼T13117ECS（银）详细参数
</p>
<p>
	<br />
基本参数
</p>
<p>
	<br />
上市时间：2012年05月<br />
产品类型：家用<br />
产品定位：轻薄便携本，Ultrabook笔记本<br />
操作系统：Windows 7 Home Basic 64bit（64位家庭普通版）<br />
&nbsp;
</p>
<p>
	<br />
处理器
</p>
<p>
	<br />
CPU系列：英特尔 酷睿i5 3代系列（Ivy Bridge）<br />
CPU型号：Intel 酷睿i5 3317U<br />
CPU主频：1.7GHz<br />
最高睿频：2600MHz<br />
总线规格：DMI 5 GT/s<br />
三级缓存：3MB<br />
核心类型：Ivy Bridge<br />
核心/线程数：双核心/四线程<br />
制程工艺：22nm<br />
指令集：AVX，64bit<br />
功耗：17W<br />
&nbsp;
</p>
<p>
	<br />
存储设备
</p>
<p>
	<br />
内存容量：4GB<br />
内存类型：DDR3 1600MHz<br />
插槽数量：1xSO-DIMM<br />
最大内存容量：16GB<br />
硬盘容量：32GB+500GB<br />
硬盘描述：SSD+5400转，SATA<br />
光驱类型：无内置光驱<br />
&nbsp;
</p>
<p>
	<br />
显示屏
</p>
<p>
	<br />
屏幕尺寸：13.3英寸<br />
屏幕比例：16:9<br />
屏幕分辨率：1366x768<br />
背光技术：LED背光<br />
&nbsp;
</p>
<p>
	<br />
显卡
</p>
<p>
	<br />
显卡类型：核芯显卡<br />
显卡芯片：Intel GMA HD 4000<br />
显存容量：共享内存容量<br />
显存类型：无<br />
DirectX：11<br />
&nbsp;
</p>
<p>
	<br />
多媒体设备
</p>
<p>
	<br />
摄像头：集成摄像头<br />
音频系统：内置音效芯片<br />
扬声器：内置扬声器<br />
麦克风：内置麦克风<br />
&nbsp;
</p>
<p>
	<br />
网络通信
</p>
<p>
	<br />
无线网卡：支持802.11b/g/n无线协议<br />
有线网卡：1000Mbps以太网卡<br />
蓝牙：支持，蓝牙4.0模块<br />
&nbsp;
</p>
<p>
	<br />
I/O接口
</p>
<p>
	<br />
数据接口：1×USB2.0+1×USB3.0（其中一个powered供电USB共用接口）<br />
视频接口：HDMI<br />
音频接口：耳机/麦克风两用接口<br />
其它接口：RJ45（网络接口），电源接口<br />
读卡器：多合1读卡器<br />
&nbsp;
</p>
<p>
	<br />
输入设备
</p>
<p>
	<br />
指取设备：触摸板<br />
&nbsp;
</p>
<p>
	<br />
电源描述
</p>
<p>
	<br />
电池类型：聚合物电池<br />
续航时间：4.5小时左右，具体时间视使用环境而定<br />
&nbsp;
</p>
<p>
	<br />
外观
</p>
<p>
	<br />
笔记本重量：1.6Kg<br />
长度：323mm<br />
宽度：226mm<br />
厚度：17.8mm<br />
外壳材质：复合材质<br />
外壳描述：银色<br />
&nbsp;
</p>
<p>
	<br />
其他
</p>
<p>
	<br />
附带软件：随机软件<br />
&nbsp;
</p>
<p>
	<br />
笔记本附件
</p>
<p>
	<br />
包装清单：笔记本主机 x1<br />
&nbsp;电源适配器 x1<br />
&nbsp;电源线 x1<br />
&nbsp;说明书 x1<br />
&nbsp;保修卡 x1<br />
&nbsp;
</p>
<p>
	<br />
保修信息
</p>
<p>
	<br />
保修政策：全国联保，享受三包服务<br />
质保时间：1年<br />
质保备注：整机1年，主要部件2年<br />
客服电话：400-810-2228<br />
电话备注：周一至周六：9:00-21:00；周日：9:00-18:00<br />
详细内容：索尼VAIO个人电脑产品的三包凭证，由用户自己保存。在办理《微型计算机商品修理更换退货责任规定》（“三包规定”）规定的修理、换货及退货时使用。除本卡规定外，您仍享有三包规定中的其他权利。凭本卡及有效发票您将享受到索尼授权的维修站提供的保修服务。本卡丢失不补发，请妥善保管，在需要保修服务时请出示。进入官网&gt;&gt;<br />
&nbsp;
</p>
<p>
	<br />
环境要求
</p>
<p>
	<br />
工作温度：5-35℃<br />
工作湿度：20%-80%（无冷凝）<br />
存储温度：-20-60℃<br />
存储湿度：10%-90%（无冷凝）<br />
&nbsp;
</p>',99,29,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:10:15',N'2013/12/10 4:10:47')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 21,2,13,N'闪迪至尊高速Micro-SDHC移动存储卡',N'/upload/201210/20/small_201210201011047116.jpg',N'闪迪（SanDisk）Ultra至尊高速Micro-SDHC移动存储卡 8GB-Class10-UHS1-30MB/s （TF卡）新品中文包装新品中文包装至尊高速移动存储卡全新升级class10速度等级，拥有高达30MB/s的读取速度，为您带来电光火石般的全新极速存储体验。支持最新高性能手机、平板电脑及其他移动数码设…',N'<p>
	<br />
</p>
<p>
	闪迪（SanDisk）Ultra至尊高速Micro-SDHC移动存储卡 8GB-Class10-UHS1-30MB/s （TF卡）新品中文包装
</p>
<p>
	<br />
</p>
<p>
	新品中文包装至尊高速移动存储卡全新升级class10速度等级，拥有高达30MB/s的读取速度，为您带来电光火石般的全新极速存储体验。支持最新高性能手机、平板电脑及其他移动数码设备，为用户体验高速可移动存储提供方便，让你随心所欲存储你所需要的
</p>
<p>
	<br />
</p>
<p>
	附带SD卡转接器，一卡两用，贴心方便
</p>
<p>
	<br />
</p>
<p>
	带有SD卡槽（即SD卡转接器），能以转接器来接驳于SD卡插槽中使用
</p>
<p>
	<br />
</p>
<p>
	全新中文包装上市
</p>
<p>
	<br />
</p>
<p>
	智能手机！平板电脑！移动设备！移动无处不在，闪迪存储技术为您提供原动力。class10速度等级，高达30MB/s读取速度，支持最新高性能手机和平板电脑等移动设备，为用户体验高速可移动存储提供方便，随心所欲存储您所需要。
</p>
<p>
	<br />
</p>
<p>
	除了适用于手机，同时支持平板电脑，数码相机等主流数码移动设备，为你的移动互联生活带来全新震撼极速传输体验
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	SanDisk闪迪产品真伪验证方式
</p>
<p>
	<br />
</p>
<p>
	1. 拨打SanDisk闪迪官方防伪验证电话：400-700-7700，进行在线人工查询。
</p>
<p>
	2. 登陆SanDisk官方防伪验证网站：sandisk.akl.com.cn，输入产品外包装中文标贴（图一）指示的防伪码和网站（图二）提供的验证码进行查询。
</p>
<p>
	<br />
</p>',99,38,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:11:11',N'2013/12/10 4:10:38')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 22,2,17,N'索尼（SONY）Tablet SGPT112CN/S 9.4英寸平板电脑（Android 3.2 32GB 蓝牙 WIFI 双摄像头 扩展插槽 银）',N'/upload/201210/20/small_201210201013178785.jpg',N'屏幕尺寸：9.4英寸 电容式触摸屏，多点式...操作系统：Android3.2 处理器：Nvidia Tegra 2 双核，1GHz 系统内存：1GB 存储容量：32GB Flash 闪盘屏幕分辨率：1280x800 摄像头：双摄像头（前置：30万像素，后置...产品重量：598g 续航时间：具体时间视使用环境而定 WiFi功能：支…',N'<p>
	屏幕尺寸：9.4英寸 电容式触摸屏，多点式...<br />
操作系统：Android3.2 <br />
处理器：Nvidia Tegra 2 双核，1GHz <br />
系统内存：1GB <br />
存储容量：32GB Flash 闪盘<br />
屏幕分辨率：1280x800 <br />
摄像头：双摄像头（前置：30万像素，后置...<br />
产品重量：598g <br />
续航时间：具体时间视使用环境而定 <br />
WiFi功能：支持802.11b/g/n无线协议 <br />
上市时间：2011年09月 <br />
数据接口：1×USB2.0，Micro-AB接口
</p>
<p>
	索尼SGPT112CN/S（32GB）详细参数
</p>
<p>
	<br />
基本参数
</p>
<p>
	<br />
上市时间：2011年09月<br />
操作系统：Android3.2<br />
处理器：Nvidia Tegra 2 双核，1GHz<br />
系统内存：1GB<br />
存储容量：32GB<br />
存储介质：Flash 闪盘<br />
存储卡：支持SD（TF）卡<br />
&nbsp;
</p>
<p>
	<br />
显示屏
</p>
<p>
	<br />
屏幕尺寸：9.4英寸<br />
屏幕分辨率：1280x800<br />
屏幕描述：电容式触摸屏，多点式触摸屏<br />
指取设备：触摸屏<br />
支持语言：支持多国语言<br />
&nbsp;
</p>
<p>
	<br />
网络链接
</p>
<p>
	<br />
WiFi功能：支持802.11b/g/n无线协议<br />
蓝牙功能：支持，蓝牙2.1模块<br />
&nbsp;
</p>
<p>
	<br />
音频视频
</p>
<p>
	<br />
声音系统：内置音效芯片<br />
音频格式：支持AAC，mp3，WAV，WMA，WMA Pro，FLAC，MIDI，Ogg Vorbis格式<br />
视频格式：支持H.263，H.264/AVC，MPEG-4，WMV格式<br />
&nbsp;
</p>
<p>
	<br />
外置接口
</p>
<p>
	<br />
数据接口：1×USB2.0，Micro-AB接口<br />
音频接口：微型麦克风接口<br />
其他接口：电源接口，存储卡接口<br />
&nbsp;
</p>
<p>
	<br />
电源参数
</p>
<p>
	<br />
电池类型：嵌入式锂电池，5000毫安<br />
续航时间：具体时间视使用环境而定<br />
&nbsp;
</p>
<p>
	<br />
功能参数
</p>
<p>
	<br />
摄像头：双摄像头（前置：30万像素，后置：500万像素）<br />
图片浏览：支持JPEG，BMP，GIF，PNG，WBMP格式<br />
内置感应：智能重力感应<br />
其他功能：提供Qriocity线上影音服务，包括音乐，游戏，电子书和视频等内容<br />
&nbsp;
</p>
<p>
	<br />
外观参数
</p>
<p>
	<br />
产品尺寸：241.2×174.3×10.1-20.6mm<br />
产品重量：598g<br />
机壳材质：铝镁合金材质<br />
机壳颜色：黑色<br />
&nbsp;
</p>
<p>
	<br />
平板电脑附件
</p>
<p>
	<br />
包装清单：平板电脑主机 x1<br />
&nbsp;适配器 x1<br />
&nbsp;数据线 x1<br />
&nbsp;说明书 x1<br />
&nbsp;保修卡 x1<br />
&nbsp;
</p>
<p>
	<br />
保修信息
</p>
<p>
	<br />
保修政策：全国联保，享受三包服务<br />
质保时间：1年<br />
质保备注：整机1年<br />
客服电话：400-810-2228<br />
电话备注：周一至周六：9:00-21:00；周日：9:00-18:00<br />
详细内容：在办理《微型计算机商品修理更换退货责任规定》（“三包规定”）规定的修理、换货及退货时使用。除本卡规定外，您仍享有三包规定中的其他权利。凭本卡及有效发票您将享受到索尼授权的维修站提供的保修服务。本卡丢失不补发，请妥善保管，在需要保修服务时请出示。本卡中记载的内容如有与国家相关法律法规不符之处，以国家相关法律法规的规定为准。
</p>
<p>
	&nbsp;
</p>',99,43,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:11:53',N'2013/12/10 4:10:29')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 24,2,17,N'智酷（WitCool）H8 9.7英寸平板（双核CPU四核GPU IPS二代屏 外接3G 双摄像头 7000mAh）',N'/upload/201210/20/small_201210201015343889.jpg',N'主体品牌 WitCool智酷 型号 性能野兽H8 颜色 靘色 材质/工艺 电镀圈边机身 超强航空级ABS抗震底壳 1字形电镀装饰条 上市时间 2012年8月 配置存储容量 内置16G 操作系统 谷歌最新版（第三版）Android 4.0.3 处理器 采用全球速度最快处理器之一 ARM CortexA9架构 顶级瑞芯微RK30…',N'<p>
	主体
</p>
<p>
	品牌 WitCool智酷 <br />
型号 性能野兽H8 <br />
颜色 靘色 <br />
材质/工艺 电镀圈边机身 超强航空级ABS抗震底壳 1字形电镀装饰条 <br />
上市时间 2012年8月 <br />
配置
</p>
<p>
	存储容量 内置16G <br />
操作系统 谷歌最新版（第三版）Android 4.0.3 <br />
处理器 采用全球速度最快处理器之一 ARM CortexA9架构 顶级瑞芯微RK3066双核处理器 速度飞一般 <br />
核心数量 双核 <br />
处理器速度 最高可达1.6GHz主频（超频下） <br />
系统内存 1GDDR3低功耗超大缓存 速度是其他品牌的2倍（其他品牌多为512MB 速度一般） <br />
显示芯片 4颗图形加速Mali 400GPU（显卡）核心 图像处理快如闪电 <br />
扩展支持 支持MicroSD（TF）卡 <br />
可扩展容量 支持MicroSD（TF）卡，最大32GB <br />
显示
</p>
<p>
	屏幕尺寸 采用韩国原装进口IPS二代全视角高清硬屏 <br />
屏幕分辨率 屏幕亮度可达400流明 颜色艳丽逼真 是同类产品的2倍 <br />
屏幕比例 采用4:3黄金比例 横竖显示舒服完美 <br />
屏幕类型 IPS二代全视角178度高清屏 与IPAD采用一样标准 视觉体验无与伦比 <br />
屏幕描述 五点电容式触摸屏 <br />
指取设备 五点电容式触摸屏 <br />
连接
</p>
<p>
	WiFi功能 支持802.11b/g/n无线协议 <br />
内置3G 无内置3G，此版本为WIFI版，机身上的SIM卡插槽为3G版预留暂不可用，此版可通过标准USB2.0接口直插3G无线上网卡上网（不支持直接插入SIM卡，需要单独购买3G无线上网卡方可3G上网） 但无需购买数据线转接 人性化 科技化&nbsp; <br />
3G类型 可支持直插联通、移动3G无线上网卡 暂不支持电信 <br />
蓝牙功能 可支持2.1无线蓝牙协议 与您的蓝牙耳机 蓝牙键盘鼠标一起使用 方便快捷 <br />
RJ-45网口 但可支持通过“USB转换网口转换器”与有线网络连接 <br />
端口
</p>
<p>
	音频接口 标准3.5mm耳机接口 可与您的手机耳机通用 方便实用人性化 <br />
视频接口 采用mini高清HDMI输出接口 双画面同步显示 可与你家中的液晶电视连接 体验大片冲击 <br />
USB接口 采用高速USB2.0接口 可外接U盘 手机等数码设备 <br />
其他接口 迄今为止 外置接口最丰富的平板电脑 1、DC 5V-2A充电接口；2、自动硬启动恢复接口；3、MIC接口；4、标准USB2.0接口；5、高清HDMI接口；6、miniUSB接口；7、耳机接口；8、存储卡接口 <br />
音效
</p>
<p>
	扬声器 后置双喇叭立体声高保真六口输出丝网防尘式扬声器 其他品牌多为单喇叭 音质浑厚逼真 <br />
麦克风 右侧置MIC麦克风接口 <br />
功能
</p>
<p>
	摄像头 后置200W高清晰摄像头 <br />
摄像头像素 前置30W，后置200W高清晰摄像头 <br />
视频拍摄 可支持 <br />
多点触控 五点电容式触摸屏 <br />
GPS导航 可支持上网模式下谷歌地图导航 <br />
电影播放 可支持1080P高清视频 体验饕餮大片盛宴 <br />
Flash播放 支持最新版的FLASH11.1 随时在线播放土豆、优酷、奇艺高清视频 <br />
内置感应 内置3轴“4向G-Sensor重力感应器”即上下左右四个方向均可自由转换，体验“超炫”的感受 <br />
重力感应 内置“4向G-Sensor重力感应器”即上下左右四个方向均可自由转换，体验“超炫”的感受 <br />
光线感应 支持环境光亮度感应器 <br />
内置软件 flash player,Gmail,google talk,play商店等 <br />
电源
</p>
<p>
	电池类型 聚合物锂电池（内阻小、安全性高、放电特性佳等优点） <br />
电池容量 7000mAh <br />
续航时间 可连续待机30天，连续播放音乐28小时，连续播放视频6-8小时，连续上网6-8小时（视具体使用环境而定） <br />
输入电压 DC 9V-2A <br />
规格
</p>
<p>
	尺寸 184mm*239mm*10.5mm <br />
净重 机身重量仅为640g <br />
特性
</p>
<p>
	特性 八大特性：1、性能强劲 双核RK3066处理器 主频可达1,6GHz 跑分可达8000分（视情况而定）。2、功能接口丰富 USB OTG HDMI WIFI 蓝牙等应有尽有。3、精工品质 电镀机身 1字形装饰 独家外观。4、优质触摸TP 透光好 无偏移等问题。5、高达1024*768韩国原装进口IPS屏 流明可达400 无与伦比。6、采用智酷独家G+G双钢化玻璃触摸屏，即使小刀划屏也丝毫无损。7、7000毫安大容量电池 视频可播放8小时左右 待机30天。8、1GDDR低功耗高速缓存 16G大容量存储器 顶级配置 何需等待。
</p>',99,14,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:16:23',N'2013/12/10 4:10:19')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 25,2,18,N'瑞士罗技 M185无线鼠标 笔记本电脑鼠标 附送电池',N'/upload/201210/20/small_201210201020428486.jpg',N'主体品牌 罗技 Logitech 类型 M185 颜色 黑色红边 规格传输方式 2.4G 人体工学 是 鼠标工作方式 光电 鼠标分辨率 1000dpi 接口 USB 尺寸 约100x58x34mm 重量 95g 特性其他特性 开关：有 收纳仓：有 电池：AA电池x1',N'<div id="J_ItemDesc" class="content">
	<p>
		&nbsp;
	</p>
	<p>
		主体
	</p>
	<p>
		品牌 罗技 Logitech <br />
类型 M185 <br />
颜色 黑色红边 <br />
规格
	</p>
	<p>
		传输方式 2.4G <br />
人体工学 是 <br />
鼠标工作方式 光电 <br />
鼠标分辨率 1000dpi <br />
接口 USB <br />
尺寸 约100x58x34mm <br />
重量 95g <br />
特性
	</p>
	<p>
		其他特性 开关：有 <br />
收纳仓：有 <br />
电池：AA电池x1
	</p>
</div>',99,14,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:21:21',N'2013/12/10 4:10:11')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 27,2,18,N'三星 S22B360HW 福韵 22寸LED液晶显示器 取代S22A330BW',N'/upload/201210/20/small_201210201022485736.jpg',N'主体品牌 三星 SAMSUNG 型号 S22B360HW 颜色 冰醇红 显示面板类型 TN面板 面板尺寸 22英寸 宽屏 是 屏幕比例 16：10 最佳分辨率 1680 x 1050 响应时间 5ms 点距 0.282mm 色数 16.7M 亮度 250cd/m2 对比度 1000000：1 可视角度 170/160(CR&gt;10) 内置音箱 无 HDCP功能 不支持 …',N'<p>
	<p>
		<br />
	</p>
	<p>
		主体
	</p>
	<p>
		品牌 三星 SAMSUNG <br />
型号 S22B360HW <br />
颜色 冰醇红 <br />
显示
	</p>
	<p>
		面板类型 TN面板 <br />
面板尺寸 22英寸 <br />
宽屏 是 <br />
屏幕比例 16：10 <br />
最佳分辨率 1680 x 1050 <br />
响应时间 5ms <br />
点距 0.282mm <br />
色数 16.7M <br />
亮度 250cd/m2 <br />
对比度 1000000：1 <br />
可视角度 170°/160°(CR&gt;10) <br />
内置音箱 无 <br />
HDCP功能 不支持 <br />
LED背光 是 <br />
接口
	</p>
	<p>
		VGA 1个 <br />
HDMI 1个 <br />
规格
	</p>
	<p>
		电源 电压:100-240V(50/60hz) 耗电量(典型值):30W&nbsp; <br />
尺寸 含底座尺寸(宽 x 高 x 深):507 x 426 x 195mm 包装尺寸(宽 x 高 x 深):581 x 423 x 141mm&nbsp; <br />
重量 含包装重量:4kg <br />
是否支持壁挂 否 <br />
底座 普通
	</p>
主体
	<p>
		<br />
	</p>
	<p>
		品牌 三星 SAMSUNG <br />
型号 S22B360HW <br />
颜色 冰醇红 <br />
显示
	</p>
	<p>
		面板类型 TN面板 <br />
面板尺寸 22英寸 <br />
宽屏 是 <br />
屏幕比例 16：10 <br />
最佳分辨率 1680 x 1050 <br />
响应时间 5ms <br />
点距 0.282mm <br />
色数 16.7M <br />
亮度 250cd/m2 <br />
对比度 1000000：1 <br />
可视角度 170°/160°(CR&gt;10) <br />
内置音箱 无 <br />
HDCP功能 不支持 <br />
LED背光 是 <br />
接口
	</p>
	<p>
		VGA 1个 <br />
HDMI 1个 <br />
规格
	</p>
	<p>
		电源 电压:100-240V(50/60hz) 耗电量(典型值):30W&nbsp; <br />
尺寸 含底座尺寸(宽 x 高 x 深):507 x 426 x 195mm 包装尺寸(宽 x 高 x 深):581 x 423 x 141mm&nbsp; <br />
重量 含包装重量:4kg <br />
是否支持壁挂 否 <br />
底座 普通
	</p>',99,12,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:24:54',N'2013/12/10 4:09:57')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 28,2,24,N'帅康烟灶套餐CXW-200-MD01+QA-019-B9',N'/upload/201210/20/small_201210202355364762.jpg',N'主体品牌 帅康  型号 TJ2+019G2颜色 银吸油烟机规格类别 近吸式控制方式 琴键开关排风量(m3/min) 14.5 （+1 -2）出风口径（mm） 18CM照明方式 LED灯，双灯统控23W照明功率 23W最大风压(Pa) 250电机输入功率（W） 200面板材质 烤漆面板噪音[dB(A)] 52dB(A)（声压级）外形尺寸（…',N'<p>
	主体
</p>
<p>
	<br />
</p>
<p>
	品牌 帅康 &nbsp;
</p>
<p>
	型号 TJ2+019G2
</p>
<p>
	颜色 银
</p>
<p>
	吸油烟机规格
</p>
<p>
	<br />
</p>
<p>
	类别 近吸式
</p>
<p>
	控制方式 琴键开关
</p>
<p>
	排风量(m3/min) 14.5 （+1 -2）
</p>
<p>
	出风口径（mm） 18CM
</p>
<p>
	照明方式 LED灯，双灯统控2×3W
</p>
<p>
	照明功率 2×3W
</p>
<p>
	最大风压(Pa) 250
</p>
<p>
	电机输入功率（W） 200
</p>
<p>
	面板材质 烤漆面板
</p>
<p>
	噪音[dB(A)] 52dB(A)（声压级）
</p>
<p>
	外形尺寸（长×宽×高mm） 795×400×528mm
</p>
<p>
	产品重量（kg） 27
</p>
<p>
	灶具规格
</p>
<p>
	<br />
</p>
<p>
	适用气源 天然气(12T)
</p>
<p>
	适用地区 全国
</p>
<p>
	开孔尺寸（mm） 655*353mm；R45
</p>
<p>
	安装方式 嵌入式
</p>
<p>
	熄保装置 支持
</p>
<p>
	进风方式 全进风
</p>
<p>
	点火方式 脉冲电子点火
</p>
<p>
	面板材质 不锈钢
</p>
<p>
	额定热流量（KW） 4.2KW
</p>
<p>
	外形尺寸（长×宽×高mm） 750*430*142
</p>
<p>
	产品重量（kg） 12
</p>
<p>
	<br />
</p>',99,73,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:29:11',N'2013/12/10 4:09:51')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 43,3,29,N'青春 是一本太仓促的书',N'/upload/201210/20/small_201210201109244855.jpg',N'所有的结局都已写好   所有的泪水也都已启程   却忽然忘了是怎么样的一个开始   在那个古老的不再回来的夏日',N'<p>
	<strong>所有的结局都已写好&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>所有的泪水也都已启程&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>却忽然忘了是怎么样的一个开始&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>在那个古老的不再回来的夏日&nbsp;</strong>
</p>
<p>
	<img alt="" src="/upload/201210/20/201210201110513729.jpg" />
</p>
<p>
	&nbsp;
</p>
<p>
	<strong>无论我如何的去追索&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>年轻的你只如云影掠过&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>而你微笑的面容极浅极淡&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>逐渐隐没在日落后的群岚&nbsp;</strong>
</p>
<p>
	<img alt="" src="/upload/201210/20/201210201111272182.jpg" />
</p>
<p>
	&nbsp;
</p>
<p>
	&nbsp;
</p>
<div>
	<strong><strong>逐翻开那发黄的扉页&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>命运将它装订的极为拙劣&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>含着泪 &nbsp;我一读再读&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>却不得不承认&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>青春是一本太仓促的书&nbsp;</strong></strong>
</div>
<div>
	<img alt="" src="/upload/201210/20/201210201111542545.jpg" /><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
</div>',99,12,0,0,0,1,0,0,0,1,N'admin',N'2012/10/20 11:12:00')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 44,3,26,N'即使给我江山如画，也抵不过你笑靥如花···',N'/upload/201210/20/small_201210201121224163.jpg',N'即使给我江山如画，也抵不过你笑靥如花',N'即使给我江山如画，也抵不过你笑靥如花···',99,12,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:21:42')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 45,3,29,N'姑姑是个美人，岁月你别伤害她',N'/upload/201210/20/small_201210201122436999.jpg',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:23:12')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 29,2,24,N'海尔油烟机CXW-219-JT30(SN)(T)',N'/upload/201210/20/small_201210201035354966.jpg',N'主体品牌 海尔型号 CXW-219-JT10颜色 冷板喷粉吸油烟机规格类别 中式控制方式 机械按键排风量(m3/min) 15出风口径（mm） 160照明方式 LED灯照明功率 1W*2最大风压(Pa) 320电机输入功率（W） 219面板材质 冷板噪音[dB(A)] 54外形尺寸（长宽高mm） 900*520*550产品重量（kg） 23…',N'<br />
<p>
	主体
</p>
<p>
	<br />
</p>
<p>
	品牌 海尔
</p>
<p>
	型号 CXW-219-JT10
</p>
<p>
	颜色 冷板喷粉
</p>
<p>
	吸油烟机规格
</p>
<p>
	<br />
</p>
<p>
	类别 中式
</p>
<p>
	控制方式 机械按键
</p>
<p>
	排风量(m3/min) 15
</p>
<p>
	出风口径（mm） 160
</p>
<p>
	照明方式 LED灯
</p>
<p>
	照明功率 1W*2
</p>
<p>
	最大风压(Pa) 320
</p>
<p>
	电机输入功率（W） 219
</p>
<p>
	面板材质 冷板
</p>
<p>
	噪音[dB(A)] 54
</p>
<p>
	外形尺寸（长×宽×高mm） 900*520*550
</p>
<p>
	产品重量（kg） 23
</p>
<p>
	特性
</p>
<p>
	<br />
</p>
<p>
	特性 双进风风道设计，超深无缝集烟腔，油烟不藏匿，全油路，双保险
</p>
<p>
	<br />
</p>',99,82,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:35:54',N'2013/12/10 4:09:46')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 30,2,24,N'老板烟灶套餐CXW-200-8210N+9B26N+802N',N'/upload/201210/20/small_201210202357569149.jpg',N'主体品牌 老板型号 CXW-200-8310N+6G21N颜色 不锈钢吸油烟机规格类别 欧式控制方式 琴键开关排风量(m3/min) 17出风口径（mm） 170照明方式 冷光灯照明功率 ≤2W2最大风压(Pa) ≥320电机输入功率（W） 200面板材质 不锈钢噪音[dB(A)] 53外形尺寸（长宽高mm） 895500535产品重量…',N'<p>
	<strong>主体</strong><br />
品牌 老板
</p>
<p>
	型号 CXW-200-8310N+6G21N
</p>
<p>
	颜色 不锈钢
</p>
<p>
	吸油烟机规格
</p>
<p>
	<br />
类别 欧式
</p>
<p>
	控制方式 琴键开关
</p>
<p>
	排风量(m3/min) 17
</p>
<p>
	出风口径（mm） 170
</p>
<p>
	照明方式 冷光灯
</p>
<p>
	照明功率 ≤2W×2
</p>
<p>
	最大风压(Pa) ≥320
</p>
<p>
	电机输入功率（W） 200
</p>
<p>
	面板材质 不锈钢
</p>
<p>
	噪音[dB(A)] 53
</p>
<p>
	外形尺寸（长×宽×高mm） 895×500×535
</p>
<p>
	产品重量（kg） 23
</p>
<p>
	灶具规格
</p>
<p>
	<br />
适用气源 天然气(12T)
</p>
<p>
	适用地区 全国
</p>
<p>
	开孔尺寸（mm） 596×354 R25
</p>
<p>
	安装方式 嵌入式
</p>
<p>
	熄保装置 自动熄火
</p>
<p>
	进风方式 全进风
</p>
<p>
	点火方式 脉冲电子点火
</p>
<p>
	面板材质 不锈钢
</p>
<p>
	额定热流量（KW） 左：3.5 KW右4.0KW
</p>
<p>
	外形尺寸（长×宽×高mm） 710×400×150
</p>
<p>
	产品重量（kg） 10Kg
</p>',99,177,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:39:23',N'2013/12/10 4:09:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 31,1,10,N'上班族选购宝典 性价比超高的超极本推荐',N'/upload/201210/20/201210202130270350.jpg',N'从1946年，世界第一台计算机的出现，使人类的科技发展进入了一个崭新的阶段，计算机帮助人们完成了很多复杂，甚至不可能完成的任务，成为了人们工作离不开的助手。随后人们为了方便移动型办公，就发明了笔记本电脑，并且一直到现在都遵循着一个目标，那就是性能越来越强，…',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;现在笔记本看似都差不多多，其实按配置组合也会细分成很多类的，这期我们主要推荐的是上班族所使用的笔记本，这类本现在不能肯定的定位为纯商务本了，因为现代人们生活的丰富，所以单一的商务本是不能全面满足用户的。主要的大类还是被定格在目前最火的超极本范围内，超极本对于办公来说在合适不过了，极速的启动和唤醒速度，可以保证你在职场中不浪费每一秒。超轻薄的机身，让你无论是出差还是出游，都可以毫不费劲的带在身边。接下来就看看有哪些超极本是超值机型的首选。
</p>
<p sizcache="1" sizset="0">
	<table style="font-size:12px;" border="1" cellspacing="0" bordercolor="#000000" cellpadding="5" width="500" align="center" sizcache="1" sizset="0">
		<tbody sizcache="0" sizset="0">
			<tr style="color:#fff;" height="35" bgcolor="#3367cd">
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>型号</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>处理器</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>显卡</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>内存</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>硬盘</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>尺寸</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>价格</strong> 
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					神舟飞天UI45D3
				</td>
				<td style="text-align:center;">
					i5-3317U
				</td>
				<td style="text-align:center;">
					HD4000
				</td>
				<td style="text-align:center;">
					4G
				</td>
				<td style="text-align:center;">
					128G SSD
				</td>
				<td style="text-align:center;">
					14"
				</td>
				<td style="text-align:center;">
					4399元
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					联想U410-IFI
				</td>
				<td style="text-align:center;">
					i5-3317U
				</td>
				<td style="text-align:center;">
					GT610M
				</td>
				<td style="text-align:center;">
					4G
				</td>
				<td style="text-align:center;">
					500G+32G SSD
				</td>
				<td style="text-align:center;">
					14"
				</td>
				<td style="text-align:center;">
					4999元
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					华硕S46
				</td>
				<td style="text-align:center;">
					i5-3317U
				</td>
				<td style="text-align:center;">
					GT635M
				</td>
				<td style="text-align:center;">
					4G
				</td>
				<td style="text-align:center;">
					750G+24G SSD
				</td>
				<td style="text-align:center;">
					14"
				</td>
				<td style="text-align:center;">
					6650元
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					惠普Envy 4-1007tx
				</td>
				<td style="text-align:center;">
					i5-3317U
				</td>
				<td style="text-align:center;">
					HD7670M
				</td>
				<td style="text-align:center;">
					4G
				</td>
				<td style="text-align:center;">
					500G+32G SSD
				</td>
				<td style="text-align:center;">
					14"
				</td>
				<td style="text-align:center;">
					6499元
				</td>
			</tr>
		</tbody>
	</table>
</p>
<p>
	<br />
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 10:40:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 32,2,23,N'松下洗衣机XQG60-V63GS',N'/upload/201210/20/small_201210201044429301.jpg',N'主体品牌 松下 Panasonic系列 大视窗型号 XQG60-V64NW颜色 白色类别 滚筒式自动化程度 全自动显示方式 LED数码管显示控制方式 电脑控制开门方式 前开式排水方式 下排水电机类型 普通电机特色功能脱水功能 支持防缠绕 支持儿童安全锁 支持预约功能 支持干衣功能 不支持夜间洗 不…',N'<p>
	主体
</p>
<p>
	<br />
</p>
<p>
	品牌 松下 Panasonic
</p>
<p>
	系列 大视窗
</p>
<p>
	型号 XQG60-V64NW
</p>
<p>
	颜色 白色
</p>
<p>
	类别 滚筒式
</p>
<p>
	自动化程度 全自动
</p>
<p>
	显示方式 LED数码管显示
</p>
<p>
	控制方式 电脑控制
</p>
<p>
	开门方式 前开式
</p>
<p>
	排水方式 下排水
</p>
<p>
	电机类型 普通电机
</p>
<p>
	特色功能
</p>
<p>
	<br />
</p>
<p>
	脱水功能 支持
</p>
<p>
	防缠绕 支持
</p>
<p>
	儿童安全锁 支持
</p>
<p>
	预约功能 支持
</p>
<p>
	干衣功能 不支持
</p>
<p>
	夜间洗 不支持
</p>
<p>
	电辅加热烘干 不支持
</p>
<p>
	电辅加热洗涤 支持
</p>
<p>
	自动断电 支持
</p>
<p>
	智能断电记忆 支持
</p>
<p>
	排水阀漏水保护 支持
</p>
<p>
	进水阀漏水保护 支持
</p>
<p>
	规格
</p>
<p>
	<br />
</p>
<p>
	节能等级 1级
</p>
<p>
	洗净比 1.06
</p>
<p>
	水位选择（段） 自动感知
</p>
<p>
	洗衣程序 棉强洗、棉普通、羊毛、浸泡大物、化纤、超快洗、筒洗净
</p>
<p>
	洗涤容量（kg） 6
</p>
<p>
	洗涤转速 400-800
</p>
<p>
	洗涤功率（W） 240
</p>
<p>
	脱水容量（kg） 6
</p>
<p>
	脱水转速 800
</p>
<p>
	脱水功率（W） 330
</p>
<p>
	水温调节范围 60
</p>
<p>
	箱体材质 渗锌钢板
</p>
<p>
	内筒材质 不锈钢
</p>
<p>
	电源规格 220V/50HZ
</p>
<p>
	产品尺寸（深×宽×高）mm 596*596*850
</p>
<p>
	产品重量（kg） 74
</p>
<p>
	特性
</p>
<p>
	<br />
</p>
<p>
	特性 斜式滚筒、大视窗
</p>
<p>
	<br />
</p>',99,274,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:45:05',N'2013/12/10 4:09:36')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 33,2,23,N'海尔XQG60-10866',N'/upload/201210/20/small_201210201044509728.jpg',N'基本参数产品类型滚筒式 洗涤容量6kg 洗衣程序棉麻,化纤,羊毛,内衣,手洗,单脱,单漂,单排,节能洗,牛仔,兰诺 洗涤功率180W 脱水功率350W 内筒材料不锈钢 抗菌类型银离子抗菌 功能参数 显示屏LCD 其他参数 外形设计玻纤材料 外型尺寸840595570mm 产品重量83kg 其他特点29分钟快速…',N'<p>
	&nbsp;
</p>
<p>
	基本参数
</p>
<p>
	产品类型
</p>
<p>
	滚筒式
</p>
<p>
	&nbsp;
</p>
<p>
	洗涤容量
</p>
<p>
	6kg
</p>
<p>
	&nbsp;
</p>
<p>
	洗衣程序
</p>
<p>
	棉麻,化纤,羊毛,内衣,手洗,单脱,单漂,单排,节能洗,牛仔,兰诺
</p>
<p>
	&nbsp;
</p>
<p>
	洗涤功率
</p>
<p>
	180W
</p>
<p>
	&nbsp;
</p>
<p>
	脱水功率
</p>
<p>
	350W
</p>
<p>
	&nbsp;
</p>
<p>
	内筒材料
</p>
<p>
	不锈钢
</p>
<p>
	&nbsp;
</p>
<p>
	抗菌类型
</p>
<p>
	银离子抗菌
</p>
<p>
	&nbsp;
</p>
<p>
	功能参数
</p>
<p>
	&nbsp;
</p>
<p>
	显示屏
</p>
<p>
	LCD
</p>
<p>
	&nbsp;
</p>
<p>
	其他参数
</p>
<p>
	&nbsp;
</p>
<p>
	外形设计
</p>
<p>
	玻纤材料
</p>
<p>
	&nbsp;
</p>
<p>
	外型尺寸
</p>
<p>
	840×595×570mm
</p>
<p>
	&nbsp;
</p>
<p>
	产品重量
</p>
<p>
	83kg
</p>
<p>
	&nbsp;
</p>
<p>
	其他特点
</p>
<p>
	29分钟快速洗
</p>
<p>
	&nbsp;
</p>
<p>
	产品质保信息
</p>
<p>
	&nbsp;
</p>
<p>
	客服电话
</p>
<p>
	400-699-9999，24小时电话服务
</p>
<p>
	&nbsp;
</p>
<p>
	质保政策
</p>
<p>
	全国联保，享受三包服务
</p>
<p>
	&nbsp;
</p>
<p>
	质保时间
</p>
<p>
	家用机保修3年，售后服务由品牌厂商提供，支持全国联保，可享有三包服务
</p>
<p>
	&nbsp;
</p>
<p>
	详细内容
</p>
<p>
	如出现产品质量问题或故障，您可查询最近的维修点，由厂商的售后解决。也可凭厂商维修中心或特约维修点所提供的质量检测证明，享受7日内退货，15日内换货。超过15日又在质保期内，可享受免费保修等三包服务政策。如您有疑问，请详询海尔客服电话
</p>
<p>
	<br />
</p>
<p>
	&nbsp;
</p>',99,36,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:45:48',N'2013/12/10 4:09:29')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 34,2,23,N'东芝洗衣机XQG75-ESE',N'/upload/201210/20/small_201210201048503818.jpg',N'东芝电器营销株式会社的具有高附加值的电冰箱、洗衣机、小型家用电器、满足了消费者日常生活的需要，并且提高了生活的质量。公司还面向日本市场经销影像设备及其他数码产品，公司在巩固发展日本市场优势的同时，并通过与国际伙伴的战略性结盟促进海外事业的扩展。东芝电器营销…',N'<table style="color:#000000;font-family:tahoma, arial, 宋体;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" width="700">
	<tbody>
		<tr>
			<td valign="top">
				<span style="line-height:25px;">东芝电器营销株式会社的具有高附加值的电冰箱、洗衣机、小型家用电器、满足了消费者日常生活的需要，并且提高了生活的质量。公司还面向日本市场经销影像设备及其他数码产品，公司在巩固发展日本市场优势的同时，并通过与国际伙伴的战略性结盟促进海外事业的扩展。东芝电器营销株式会社还理顺并支持了照明设备，空调，一次性电池和售后服务的四项事业和有关企业：东芝照明技术公司，东芝开利公司和东芝电池公司，东芝服务与工程公司。 主要手机；电冰箱；洗衣机；微波炉；吸尘器；电熨斗；电饭煲和自动洗碗机；照明和照明系统；房间、大楼与商用空调产品、系统和技术；一次性电池；电池动力等家用电器。</span> 
			</td>
		</tr>
	</tbody>
</table>
<span style="line-height:25px;font-family:tahoma, arial, 宋体;background-color:#FFFFFF;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20120710165839.jpg" width="700" height="39" /><br />
<span class="style27"><strong><span style="color:#FF6622;font-size:x-small;"><span style="color:#FF8C00;"><span style="font-size:14px;">详细信息<br />
</span></span></span></strong></span></span><span style="font-family:tahoma, arial, 宋体;background-color:#FFFFFF;"></span> 
<table style="width:700px;color:#000000;font-family:tahoma, arial, 宋体;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
	</tbody>
</table>
<table style="width:700px;color:#000000;font-family:tahoma, arial, 宋体;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				<p>
					&nbsp;
				</p>
				<hr />
				<span style="line-height:25px;">型号：XQG75-ESE&nbsp;<br />
洗涤.脱水容量（kg）：7.5<br />
洗涤～烘干/烘干容量（kg）：-<br />
颜色：白色<br />
<strong>洗净力</strong></span> 
				<p>
					&nbsp;
				</p>
				<p>
					<span style="line-height:25px;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20110119145724.jpg" width="113" height="33" />有<br />
DSP变频技术：有<br />
洗涤程序类型：标准，轻污洗涤，记忆，手搓洗涤，强力，少量，羊绒，毛毯，桶清洁<br />
X型强力双喷淋洗涤：--<br />
混合型洗涤（拍打洗+手搓洗）：有<br />
最高脱水转速（转/分）：1200<br />
<strong>清洁</strong>&nbsp;<br />
最高加热温度（°C）：60<br />
银离子抗菌水：--<br />
除菌脱水：--<br />
桶清洁：有<br />
桶烘干：--<br />
<strong>节能<br />
</strong>能效等级：1<br />
无极水位：有<br />
自动断电：有<br />
标准运行时间（分）：约74<br />
标准耗水量（L/kg）：10.5<br />
<strong>人性化技术</strong>&nbsp;<br />
控制面板：LED面板<br />
故障自检：有<br />
时间预约：有<br />
童锁功能：有<br />
洗涤噪音/脱水噪音dB（A）：51 / 58<br />
<strong>其他参数&nbsp;<br />
</strong>额定电压（V）/频率（Hz）：220 / 50<br />
额定功率 洗涤：140 &nbsp;&nbsp;脱水：170&nbsp;烘干：--<br />
加热器功率（W）：1740<br />
整机尺寸（宽*深*高mm）：655*714*1040<br />
净重（kg）：69<br />
&nbsp;</span> 
				</p>
				<hr />
				<span style="line-height:25px;"><span style="font-size:14px;"><span style="color:#FF8C00;"><strong>功能介绍</strong>&nbsp;<br />
</span></span>1.混合型洗涤，拍打洗+手搓洗。<br />
2.Active S-dd电机引擎，可变磁力，强劲动力。<br />
3.DSP变频技术，精准控制。<br />
4.银离子抗菌水洗涤，冷水时也可抗菌，洁净衣物。<br />
5.90°C高温除菌程序，强力除菌。<br />
6.超静音低震动设计，静享安逸生活。<br />
7.国家能效等级1级，省水省电。<br />
8.桶洗净功能，呵护滚筒。<br />
9.特有时间预约功能，预约结束时间。<br />
10.中途可追加衣物，便利设计。<br />
11.排水毛绒过滤器，安装便捷。<br />
12.强力循环泵，循环洗涤，洗衣更彻底。&nbsp;<br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20120710165858.jpg" width="700" height="39" /><br />
</span> 
				<table style="width:700px;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
					<tbody>
						<tr>
							<td>
								<span style="line-height:25px;">1、1963年、1988年、1995年、1997年 荣获日本电机工业技术功绩表彰“发大奖”；<br />
2、1976年、1977年&nbsp; 荣获日本名古屋通产局奖赏；<br />
3、1979年 荣获日本工业技术院长奖；<br />
4、1980年、1984年 荣获日本电机工业技术功绩表彰；<br />
5、1982年 荣获日本新技术开发财团市村奖；<br />
6、1984年 荣获日本节能大奖；<br />
7、1986年 荣获日本电机工业技术功绩表彰“进步奖”；<br />
8、1998年 荣获日本大河内纪念技术奖；<br />
9、1998年、2000年 荣获日本电机工业技术功绩表彰“会长奖”。</span> 
							</td>
						</tr>
					</tbody>
				</table>
<span style="line-height:25px;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20120710165911.jpg" width="700" height="39" /><br />
</span> 
				<table style="width:700px;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
					<tbody>
						<tr>
							<td>
								<span style="line-height:25px;"><strong>使用滚筒洗衣机小技巧延长寿命<br />
</strong>滚筒洗衣机由于洗涤不磨损、不缠绕，故可以放心洗涤各类衣物。但在洗衣前仍要注意以下几点：<br />
在洗涤前应小心查看衣物上的标签，看是否可以水洗、熨烫等，并根衣物的质地，如棉织、化纤、羊毛等选择相应的洗涤程序。<br />
将颜色进行分类，此外应尽量把新买的有色衣物分开洗涤，查看其是否褪色。<br />
洗涤前将衣物上破旧的纽扣、别针、金属饰物拿下，带有拉链的衣服要将拉链拉上。<br />
洗衣机的干衣容量是洗涤容量的一半，所以在烘干时要注意不可放置过多的衣物，避免烘干后衣物变皱。<br />
洗衣机用完以后，最好将洗衣机玻璃视窗开启一点，这样可延长密封圈的使用寿命，并有利于机内潮气的散发。<br />
滚筒洗衣机一定要用低泡、高去污力的洗衣粉，较脏的衣物最好加热洗涤。</span> 
							</td>
						</tr>
					</tbody>
				</table>
				<p>
					&nbsp;
				</p>
			</td>
		</tr>
	</tbody>
</table>
<table style="width:700px;color:#000000;font-family:tahoma, arial, 宋体;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				<span style="line-height:25px;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281055_20110119144453.jpg" width="700" height="83" /><br />
<br />
</span> 
			</td>
		</tr>
	</tbody>
</table>',99,146,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:49:05',N'2013/12/10 4:09:24')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 35,1,10,N'笔记本的节点 超极本引发的超极蝴蝶效应',N'/upload/201210/20/201210202200180718.jpg',N'经过数十年的演化，笔记本在性能逐渐增强的例行进化过程中，虽然出现了不少令人惊艳的优秀产品，但是适中无法出现质的飞跃。然而超极本的出现却打破了这个僵局，犹如蝴蝶效应般，一连串的改革接踵而至。超极本的出现对于笔记本而言就像是蝴蝶打破束缚之茧的最后一下震动，…',N'<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="超极本引发的超极蝴蝶效应" alt="超极本引发的超极蝴蝶效应" src="http://img0.pconline.com.cn/pconline/1209/20/2948576_500333.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;去年11月，英特尔率先提出了超极本的定义，外观时尚、体型轻薄、性能适中、待机超长……这类全新的笔记本类别为这潭“死水”带来了巨大的涟漪。最先面世的四款超极本分别是联想U300S、华硕UX21、宏碁蜂鸟S3以及东芝Z830，而这几款各有特色的超极本却始终有着一个交汇之处——薄。
</p>
<p>
	<strong>节点——轻薄</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在超极本出现之前虽然也有过非常轻薄的笔记本，但是超极本却将其作为了一种标志，首批超极本中以宏碁蜂鸟S3为轻薄之最，13mm的超极本已经象征着一个顶峰，轻薄所带来的优秀体验很快得到了无数用户的认同，笔记本本就是为便携而生，如此轻巧到可以放到包包中随身携带，正是将这一特质发挥到了极点。
</p>
<p>
	“轻薄”是超极本带给笔记本界的第一重冲击，13寸及以下机型不超过18mm，14寸以上机型不超过21mm，在这样的数量级上，每0.1mm的降低似乎都是超乎想象的突破，在这之前的轻薄本的数量级完全不在这个level，25mm左右的本本已经算是非常“锋利”了，也正以为此，17mm的MacBook Air的出现才会如此震惊世界，超极本正是将这一点进行了普及。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="三星900X3C" alt="三星900X3C" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-1.jpg" /><br />
三星 900X3C-A01&nbsp;&nbsp;图片&nbsp;&nbsp;系列&nbsp;&nbsp;评测&nbsp;&nbsp;论坛&nbsp;&nbsp;报价&nbsp;&nbsp;
</p>
<script></script>
<p>
	<br />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;此后超极本的薄可谓越来越极致，以三星900X3C为例，这款最薄处仅为12.9mm的超极本又一次向世界证明了超极本所能到达的极限。三星900X3C相对于曾经的轻薄之冠蜂鸟S3而言有着0.1mm的突破，而其锋利、棱角分明的边缘更是在视觉效果上给人更加纤薄的感觉。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="三星900X3C" alt="三星900X3C" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-2.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;相信没有人喜欢太过笨重的笔记本，那纤薄的机身下又带给了我们怎样的使用体验呢？好处自然是不用多说，便携二字足以代表一切。但是为了控制机身的厚度难免会牺牲掉很多，比如键盘的键程，我们再也无法从超极本身上看到传统键盘的身影，那种超有存在感的敲击也在也无法体会，毫无疑问，短键程是几乎所有超极本都存在的弊端，无法避免。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="三星" alt="三星" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-4.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;除此之外，超薄机身无法容纳足够的接口也是一大诟病，通常，你用超极本的时候无法使用有线网络，无法同时链接多项外设，当然，这点在14英寸以上机型中略有缓解，但是相对的，14英寸的机身显然不如小尺寸超极本来的轻薄。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="三星900X3C" alt="三星900X3C" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-3.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;不仅超极本在逐渐向着轻薄的极致进发，包括在超极本之外的笔记本也在朝着这个方向改进，如索尼Z13等。纤薄的机身已经成为了笔电类产品的总体发展趋势，确实，现在人们的生活步调逐渐加快，越来越多的移动办公需求使得电脑设备也逐渐趋向小型化，同样，只有顺应趋势的产品才能在如此激烈的竞争中脱颖而出，只有符合用户切身需求的笔记本才能称为潮流的趋势。
</p>
<p>
	<br />
</p>',99,74,0,0,0,0,1,0,1,1,N'admin',N'2012/10/20 10:50:42')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 36,2,21,N'YORK空调YHFH-120B/N2CS',N'/upload/201210/20/small_201210201052093300.jpg',N'\正确选购空调更节能购买空调时购买直流变频空调更省电；能效比越高的空调越省电：空调的能效比是衡量一台空调是否节能的唯一标准；空调能效等级越小越省电：购买冷暖型空调，应选购其电辅助加热可以单独控制的；空调的输出冷(热)量要与使用面积相对应，选大选小都会更耗电。 …',N'<br />
<table style="width:700px;color:#000000;font-family:tahoma, arial, 宋体;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
							</td>
			<td>
				<span style="line-height:22px;"><strong><br />
<br />
正确选购空调更节能<br />
</strong>购买空调时购买直流变频空调更省电；<br />
能效比越高的空调越省电：空调的能效比是衡量一台空调是否节能的唯一标准；<br />
空调能效等级越小越省电：购买冷暖型空调，应选购其电辅助加热可以单独控制的；<br />
空调的输出冷(热)量要与使用面积相对应，选大选小都会更耗电。</span> 
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;&nbsp;
			</td>
			<td>
				<span style="line-height:22px;"><strong><br />
<br />
正确使用空调更节能</strong><br />
睡觉时应使用睡眠功能，即舒适又节能；<br />
定时在起床前1-2小时提前关闭空调；不要频繁开关空调；<br />
尽量少开门窗，减少室内外热交换；<br />
运行时勿挡住室外机的出风口，否则会降低冷暖气效果，浪费电力。</span> 
			</td>
		</tr>
		<tr>
			<td>
				<br />
			</td>
			<td>
				<span style="line-height:22px;"><strong><br />
<br />
<br />
正确保养空调更节能<br />
</strong>定期清洗空调的换热器及滤尘网可提高效率；<br />
长时间不使用空调应拔掉电源插头，因为待机状态也会耗电。&nbsp;&nbsp;&nbsp;&nbsp;<br />
<br />
</span> 
			</td>
		</tr>
	</tbody>
</table>',99,13,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:52:35',N'2013/12/10 4:09:19')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 37,2,21,N'格力空调KFR-35GW/(35556)FNFa-3(镜面红)',N'/upload/201210/20/small_201210201055447111.jpg',N'主要功能特点：                          ★ 采用G10变频引擎                          ★ 150-260V超宽电压运行，适用范围更广泛                          ★ 行业首创舒适省电模式                          ★ 静音设计，静享舒适睡眠                          ★ 抗菌…',N'<div style="font-family:tahoma, arial, 宋体;background-color:#FFFFFF;" class="detail_img">
	<table style="width:700px;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
		<tbody>
			<tr>
				<td>
					<p style="text-align:center;">
						<br />
					</p>
				</td>
			</tr>
			<tr>
				<td>
					<table cellspacing="0" cellpadding="3" width="100%">
						<tbody>
							<tr>
								<td class="u_td_menu" colspan="2">
									<span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 主要功能特点：<br />
</span> 
								</td>
							</tr>
							<tr>
								<td class="u_td_menu" colspan="2">
									<span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 采用G10变频引擎<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;★ 150-260V超宽电压运行，适用范围更广泛<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 行业首创舒适省电模式<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 静音设计，静享舒适睡眠<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 抗菌防霉过滤网、儿茶素滤网<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 智能+可控电辅助加热<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 可控超强档<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 自动清洁<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 独立除湿<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★ 防冷风设计</span> 
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>',99,154,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:56:05',N'2013/12/10 4:09:15')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 38,1,10,N'“滑”是一种技术! 索尼duo11跨界本评测',N'/upload/201210/20/201210202205217874.jpg',N'索尼秋季的新品中有一款被称作VAIO Duo 11。其实在第一次看到这款产品的时候编辑也是很难说清楚这到底是一台平板电脑，还是一台笔记本电脑。当滑盖关闭时，VAIO Duo 11看上去像是一台很轻薄的平板电脑，不过推起来的时候，这台11英寸的设备更像是一款很别致的笔记本。',N'<p style="text-align:left;">
	在今年变形本盛行的情况下，VAIO Duo 11的出现并不奇怪，在见过了翻转本，双屏本之后再看到如同滑盖手机一般的产品也不会让人太过惊讶了。比较有意思的是索尼VAIO Duo 11的创意和东芝的U920T滑盖笔记本雷同了，两家日系厂商似乎都很推崇这种样式的笔记本。在配备键盘，具备完整的intel处理器的情况下，我们还是认为它更多归属于超极本。至于详细的定义，还有待索尼官方给出说明。
</p>
<p style="text-align:left;">
	<strong>■ 外形奇特 IPS全高清屏幕</strong> 
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_1.jpg" /> 
</p>
<p style="text-align:left;">
	今年似乎是变形和跨界类产品集中爆发的一年，在过去一两年之中很少有产品会设计出融合类的机器，不过索尼确实一直都在尝试各种造型奇异的产品，看上去duo11也只是这其中的一款而已。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_5.jpg" /> 
</p>
<p style="text-align:left;">
	除了折叠的挡板之外，VAIO Duo 11的整个机身外壳都是由合金材质制成，拿在手中非常有质感。从侧面来看，它似乎就是一块平板电脑架在了一个键盘底座之上。不过想要做到这一点简单的支架是很难实现的，必须要解决排线和支架的问题。后面我们会对它的支架做相关的介绍。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_2.jpg" /> 
</p>
<p style="text-align:left;">
	VAIO Duo 11配置了11.6英寸的全高清IPS显示屏，分辨率达到了1920 x 1080。这样的屏幕分辨率要比多数的超极本还要惊人，即便是目前热门的surface也远远不及。它屏幕的锐利度、画面色彩和明亮度都令人印象深刻。IPS屏幕还具有广阔的视角，几乎可以从任何角度看清屏幕上的内容。可以看出索尼在这款产品上也是下了不少功夫的。
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_DSC_4190.jpg" /> 
</p>
<p style="text-align:left;">
	VAIO Duo 11的屏幕与目前最常见的平板电脑屏幕非常相似，都是在屏幕上方加装了一块外屏。屏幕最多支持10点触控，在触控体验时感觉还是非常流畅的。
</p>',99,7,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:03:57')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 40,2,20,N'飞利浦彩电42PFL3320/T3',N'/upload/201210/21/small_201210210001069890.jpg',N'图片/显示宽高比: 16:9 宽屏幕屏幕对角线尺寸（英寸）: 42英寸屏幕对角线尺寸（公制）: 107厘米显示屏类型: 有源阵列 LCD, 全高清面板分辨率: 1920 x 1080画面效果增强: 720p 50/60 赫兹处理, 2D/3D 降噪, 3/2 - 2/2 移动下拉, 3D 梳状滤波器, 晶彩, 数码降噪, 动态对比度增强…',N'<br />
<table style="width:700px;color:#000000;font-family:tahoma, arial, 宋体;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				<span style="line-height:25px;"><strong>图片/显示<br />
</strong>宽高比:&nbsp;<span style="color:#808080;">16:9 宽屏幕</span><br />
屏幕对角线尺寸（英寸）:&nbsp;<span style="color:#808080;">42英寸</span><br />
屏幕对角线尺寸（公制）:&nbsp;<span style="color:#808080;">107厘米<br />
</span></span><span style="line-height:25px;">显示屏类型:&nbsp;<span style="color:#808080;">有源阵列 LCD, 全高清</span><br />
面板分辨率:&nbsp;<span style="color:#808080;">1920 x 1080<br />
</span>画面效果增强:&nbsp;<span style="color:#808080;">720p 50/60 赫兹处理,&nbsp;</span><span style="color:#808080;">2D/3D 降噪, 3/2 - 2/2 移动下拉, 3D 梳状滤波器, 晶彩, 数码降噪, 动态对比度增强, 清晰度调节<br />
</span>屏幕增强:&nbsp;<span style="color:#808080;">抗反射镀膜玻璃<br />
</span><strong>支持的显示分辨率</strong><br />
电脑格式:<span style="color:#808080;">1920 x 1080，60 赫兹, 640 x 480，60 赫兹, 800 x 600，60 赫兹, 1024 x 768，60 赫兹, 1360 x 768，60 赫兹</span><span style="color:#808080;"><br />
</span>视频格式:&nbsp;<span style="color:#808080;">1080p、50、60 赫兹, 480i、60 赫兹, 480p、60 赫兹, 576i，50 赫兹, 576p，50 赫兹, 720p、50、60 赫兹, 1080i、50、60 赫兹<br />
<span style="color:#000000;"><strong>声音</strong></span><br />
</span>输出功率 (RMS):&nbsp;<span style="color:#808080;">2x10 瓦<br />
</span>音效增强:&nbsp;<span style="color:#808080;">自动音量调衡, 超宽环绕立体声<br />
<span style="color:#000000;">声音系统:&nbsp;</span>单声道, 立体声<br />
<span style="color:#222222;"><strong>便利性<br />
</strong>儿童保护:&nbsp;</span>儿童锁 + 父母端控件<br />
</span></span> 
			</td>
			<td>
				<span style="line-height:25px;"><span style="color:#808080;"><span style="color:#222222;">时钟:&nbsp;</span>定时关机<br />
</span>连接增强:&nbsp;<span style="color:#808080;">捷联技术<br />
</span>便于安装:&nbsp;<span style="color:#808080;">自动存储, 微调, PLL 数字调谐<br />
</span>易于使用:&nbsp;<span style="color:#808080;">自动音量调衡, EasyLink, 屏幕显示, 侧控, 灵智图像, 灵智声音<br />
</span>屏幕显示语言:&nbsp;<span style="color:#808080;">英语, 简体中文<br />
</span>遥控器:&nbsp;<span style="color:#808080;">电视遥控器<br />
</span>屏幕格式调整:&nbsp;<span style="color:#808080;">4:3, 缩放 1, 缩放 2, 宽银幕</span><span style="color:#808080;">多</span><strong>媒体应用</strong><br />
多媒体连接:&nbsp;<span style="color:#808080;">USB<br />
</span>播放格式:&nbsp;<span style="color:#808080;">RMVB（RealMedia 可变比特率）, MPEG4, MPEG2, MPEG1, H.264/MPEG-4 AVC, AVI, 照片 (JPEG), MP3<br />
</span><strong>调谐器/接收/发送</strong><br />
天线输入:&nbsp;<span style="color:#808080;">75 欧姆（IEC 类）（背面）<br />
</span>预设频道数:&nbsp;<span style="color:#808080;">200</span><br />
调谐波段:&nbsp;<span style="color:#808080;">UHF, VHF<br />
</span>电视制式:&nbsp;<span style="color:#808080;">PAL B/G, PAL D/K, PAL I</span><br />
视频播放:&nbsp;<span style="color:#808080;">NTSC, PAL</span><br />
<strong>连接</strong><br />
电视天线:&nbsp;<span style="color:#808080;">75 欧姆（IEC 类）（背面）<br />
</span>HDMI 1:&nbsp;<span style="color:#808080;">HDMI v1.3（背面）&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
HDMI 2:&nbsp;<span style="color:#808080;">HDMI v1.3（侧面）</span></span> 
			</td>
			<td>
				<span style="line-height:25px;">分量视频 1:&nbsp;<span style="color:#808080;">YPbPr + L/R 音频（背面）<br />
</span>AV 1:&nbsp;<span style="color:#808080;">CVBS 带 L+R 音频（背面）<br />
</span>AV 2:&nbsp;<span style="color:#808080;">CVBS 带 L+R 音频（旁边）<br />
</span>PC 输入:&nbsp;<span style="color:#808080;">D-sub（背面）, 3.5 毫米迷你音频插孔（背面）<br />
</span>AV OUT:&nbsp;<span style="color:#808080;">CVBS（背面）, 音频 L/R 输出（背面）<br />
</span>USB:&nbsp;<span style="color:#808080;">USB2.0x1（侧面）, USB2.0x1（背面）<br />
</span>EasyLink (HDMI-CEC):&nbsp;<span style="color:#808080;">单键式播放, 系统信息（菜单语言）, 系统待机<br />
</span><strong>功率</strong><br />
环境温度:&nbsp;<span style="color:#808080;">5 °C 至 40 °C<br />
</span>主电源:&nbsp;<span style="color:#808080;">200-240 伏；50 赫兹<br />
</span>功耗:&nbsp;<span style="color:#808080;">13</span><span style="color:#808080;">0 瓦</span><br />
待机功耗:&nbsp;<span style="color:#808080;">&lt; 0.5 瓦<br />
</span><strong>尺寸</strong><br />
兼容的墙架:&nbsp;<span style="color:#808080;">VESA 400x400 毫米<br />
</span><strong>附件</strong><br />
随附的附件:&nbsp;<span style="color:#808080;">2</span><span style="color:#808080;">&nbsp;节 AAA 电池, 电源线, 遥控器, 桌架, 用户手册, 保修单<br />
</span>用户手册:&nbsp;<span style="color:#808080;">简体中文&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span> 
			</td>
		</tr>
	</tbody>
</table>',99,433,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 11:06:58',N'2013/12/10 4:09:10')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 42,1,9,N'双核就如大白菜 刷机精灵698元新机来了',N'/upload/201210/22/201210220953227953.jpg',N'这几天似乎是国产机大爆发的时刻，从大可乐到纽曼再到淘宝都推出了自家的Android智能手机产品，这还不算完，今天刷机精灵CEO在微博上也放出旗下第二款力荐机的详细配置，又一款低价双核手机来了。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;从微博上曝光的信息来看，<strong>刷机精灵第二款力荐机是与夏朗合作推出的，命名为蘑菇M2，将由杨幂代言，市场价位898元，力荐机平台的优惠价格为698元</strong>。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;该机的尺寸为122×63.6×10.4mm，采用一块<strong>4英寸IPS全视角触控屏，分辨率为800×480，配备了一颗主频1GHz的MTK6577双核处理器，内置1GB 
RAM以及4GB ROM</strong>，最大支持32GB 
MicroSD卡扩展；同时还提供了500万像素后置摄像头以及30万像素前置摄像头，支持自动对焦以及720P视频拍摄，运行Android 4.0操作系统。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;此外该机还支持双卡双待功能，配备一块1500mAh电池。从曝光的图片来看，他的外观与小米手机2有相似的地方，背壳为白色，而机身正面则采用了纯黑配色。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;实在是没什么的好说的了，最近千元以下双核智能机频现应该都算是联发科的功劳吧，没有MTK6577这个神奇，估计也不会有这么多的“神器”诞生。
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:09:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 46,3,25,N'#泰坦尼克号# 拍摄花絮',N'/upload/201210/20/small_201210201128412942.jpg',99,15,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:29:03')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 47,3,26,N'那最美的油菜花上有我青春的泪.',N'/upload/201210/20/small_201210201134400466.jpg',99,6,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:34:58')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 48,3,25,N'学生嫩模于欣鹭湿身性感照片',N'/upload/201210/20/small_201210201137062000.jpg',99,33,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:37:35')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 49,3,25,N'杭州花貌',N'/upload/201210/20/small_201210201143259178.jpg',99,25,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 11:44:27')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 51,3,25,N'街头霸王',N'/upload/201210/20/small_201210201150403758.jpg',99,14,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:51:25')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 52,3,29,N'游戏中的美女，供你做壁纸',N'/upload/201210/20/201210202300203204.jpg',99,55,0,0,0,1,1,0,0,1,N'admin',N'2012/10/20 11:54:23')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 53,3,25,N'韩国jiwon pang CG作品',N'/upload/201210/20/small_201210201156192282.jpg',99,47,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 11:56:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 50,3,25,N'印象杭州',N'/upload/201210/20/201210202304102474.jpg',N'十一长假去杭州玩了三天半，9月11号在携程上订了机票，9月13号在同程网上订了酒店——如家酒店（浙大玉泉校区对面），370元一晚。10月2号晚上9点20的飞机（不过晚点起飞了，9点40），6号下午3点返回。去时290元，回来680元。       到酒店已经是3号的0点30分了，早上六点…',N'<p align="left">
	&nbsp;&nbsp; &nbsp; 十一长假去杭州玩了三天半，9月11号在携程上订了机票，9月13号在同程网上订了酒店——如家酒店（浙大玉泉校区对面），370元一晚。10月2号晚上9点20的飞机（不过晚点起飞了，9点40），6号下午3点返回。去时290元，回来680元。
</p>
<p align="left">
	&nbsp; &nbsp; &nbsp; &nbsp;到酒店已经是3号的0点30分了，早上六点半醒了，到浙大路上的新丰小吃吃早饭，虾肉小笼包不错，就是有点咸。沿着小巷走到玉泉，本来想去岳庙的，碰到个老太太，她说早上去寺庙坟墓不好，推荐我们去龙井家园附近的翁家山，说可以去茶农家里买龙井茶，然后再去雷峰塔，刚好那天是阴历八月十八，下午在去六和塔看钱塘江大潮。
</p>
<p align="left">
	&nbsp; &nbsp; &nbsp; &nbsp;好吧，依照老人家的指引吧，先上27路车，人好多啊，还都是老头老太太，上车也没秩序，我们也不好意思跟他们挤。翁家山的茶农家都是杭州市规划的白墙黑瓦的江南风二层小楼，到茶农家里喝了明前茶和明后茶，味道真的差别很大，茶农说龙井分三种——狮峰龙井、西湖龙井、浙江龙井，狮峰龙井是白沙土种的，西湖龙井是红土地种的，浙江龙井市黑土地种的，她家种的是狮峰龙井，有股炒黄豆的味道。买了8两，500元。
</p>',99,55,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 11:47:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 54,3,29,N'这虽是游戏，但可不是闹着玩的！',N'/upload/201210/20/small_201210201200526551.jpg',99,50,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 12:02:11')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 55,3,25,N'幻色的思念33',N'/upload/201210/20/small_201210201205466391.jpg',99,13,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:05:50')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 56,3,25,N'【新闻】梦圆《仙剑5前传》 龙溟凌波3D曝光',N'/upload/201210/20/small_201210201207599384.jpg',99,21,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:08:05')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 57,3,26,N'嘿，做个轻松的人吧',N'/upload/201210/20/small_201210201209063079.jpg',N'嘿，做个轻松的人吧',99,66,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 12:11:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 58,1,5,N'联通4G频率规划曝光：与3G共用可平滑过渡',N'/upload/201210/22/201210220957016335.jpg',N'在工信部透露TDD-LTE频谱规划后，知情人士向新浪科技透露称中国联通可能获发的4G牌照和频谱资源，据悉，中国联通将获得的4G牌照为FDD-LTE，而使用的4G频率将可与3G共用，这样将有利于联通3G向4G平滑过渡，对联通对4G非常有利。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;据悉，中国联通可能将获得的4G频段为1.8GHz和2.1GHz频段2×60MHz，这是目前并未使用的频段，频谱资源也比较丰富。而更重要的是，国家可能允许该频段既用于3G，又用于4G。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;而中国联通在近年来采购的3G设备上也已做好准备，只需要软件升级就可过渡到4G。因此，业内认为4G时代将继续对联通有利。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;不过，目前尚无法确定1.8GHz和2.1GHz频段2×60MHz这120MHz是否全部归拨给联通，因为中国电信也一直希望上FDD-LTE，而并不希望上TD-LTE。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;而几天前，工信部相关负责人已透露，我国已经决定将2.6GHz频段的2500-2690Hz，全部190MHz频率资源规划为TDD频谱，规划的TD-LTE频谱多达190 
MHz，不可能是只分给一家运营商使用，这样的话，很可能中国电信要使用TD-LTE频谱资源，从而在4G时代上TD-LTE。
</p>',99,79,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 12:12:39')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 59,1,3,N'法官拒绝苹果封存财务文件的请求',N'/upload/201210/22/201210221005341893.jpg',N'苹果和三星全球各地官司仍在继续当中。今天美国地区法院法官Lucy Koh驳回了苹果有关封存财务文件的请求。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;苹果和三星全球各地官司仍在继续当中。今天美国地区法院法官Lucy Koh驳回了苹果有关封存财务文件的请求。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;苹果请求远离公众视线的文件包括“特定产品的单位销售收入、利润、利润率和成本数据。”苹果请求法院封存这些文件，以便它在未来庭审当中使用这些文件当中的数据，以利于苹果在官司当中胜出。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;这些财务文件，可以帮助苹果从三星那里再赢得5.35亿赔款，迄今为止，苹果已经从和三星的官司当中赢得10.5亿美元赔款。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;法官Lucy 
Koh指出，苹果不得使用这些财务文件作为证据，同时要求保密这些文件，以寻求更多赔偿。苹果必须决定，公开文件，并继续寻求更多的赔偿，或封存文件，并结束和三星之间的官司。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;法官Lucy Koh表示，苹果并没有提供任何令人信服的理由来让法庭封存这些财务文件，苹果目前的理由仅仅宣称文件中的信息是商业秘密。
</p>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:15:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 60,3,26,N'只是想你了如此而已',N'/upload/201210/20/small_201210201224112027.jpg',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:24:21',N'2013/12/10 4:07:59')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 61,1,3,N'Google乌龙：财报提前泄漏 股价暴跌',N'/upload/201210/22/201210221015558926.jpg',N'根据今天发布的财报，Google在截至9月30日的2012财年第三季度内总收入141亿美元，比去年同期的97.2亿美元增加了45.1％，不过净利润只有21.8亿美元，比去年同期的27.3亿美元大幅锐减了20.1％。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;根据今天发布的财报，Google在截至9月30日的2012财年第三季度内总收入141亿美元，比去年同期的97.2亿美元增加了45.1％，不过<strong>净利润只有21.8亿美元，比去年同期的27.3亿美元大幅锐减了20.1％。</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;颇为诡异的是，<strong>Google的新财报被错误地提早发了出来，导致其股价重挫9％，随后交易被暂停。</strong>据称，Google提交给美国证券交易委员会的这份报告里出现了“拉里(Google 
CEO拉里佩奇)评论待定”(pending larry quote)的短语，而这个短语在Twitter上迅速走红。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Google随后发表声明届时手，这是<strong>印刷服务公司RR 
Donnelley未经授权、擅自公布其8K财务报告草稿所致</strong>，为此Google暂停了其股票在纳斯达克的交易，并在财报正式发布后重新交易。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Google第三季度每股收益6.53美元，比去年同期的8.33美元减少了21.6％。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;摩托罗拉为Google贡献的收入为25.8亿美元，占总收入的18％，其中17.8亿美元来自移动部门，7.97亿美元来自家庭部门；<strong>亏损5.27亿美元</strong>，移动部门和家庭部门分别为5.05亿美元、2200万美元。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Google目前持有现金、现金等价物、可变现有价证券总值457亿美元，<strong>全球全职雇员53546人</strong>，其中Google业务员工36118人、摩托罗拉业务员工17428名，<strong>合计比一个季度前减少了1058人</strong>。
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:25:56')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 62,1,3,N'上岗半月 “巨无霸”吞10吨垃圾',N'/upload/201501/30/201501301550320359.jpg',N'随手一扔的废塑料瓶、废纸、废铁等垃圾，你可曾想过它们的命运?时而走俏，时而遇冷。废品回收产业，与经济走向息息相关，与生态环保息息相关。废品去哪了?追踪回收产业链，我们走进这些“冰点”产业。',N'<p>
	<table>
		<tbody>
			<tr>
				<td class="line-content">
					<span class="html-tag">&lt;P&gt;</span>“饮料瓶一毛钱三个都不敢收，一毛钱四个才勉强有得赚。”24日，武汉61岁的“破烂王”邓传明扛着一麻袋塑料瓶回家，垂头丧气。“废品站塑料瓶一周一个价，跌到我想哭，家里还有500公斤以前高价收来的存货。”邓传明指着阁楼上装满塑料瓶的麻袋说。他掏出记账本给记者看：2014年11月，废塑料瓶每个0.1元，每公斤6.8元，拖到废品站，每公斤只卖4.2元，每公斤净亏2.6元;2014年12月，按2个瓶子0.1元收，仍在亏本。现在3&amp;nbsp;个瓶子0.1元，每公斤约2.27元，仅比废品站收购价高不到1分钱。“68个农夫山泉或者36个脉动瓶子才凑一公斤，赚的是辛苦钱。”邓传明亮出一双长满老茧的手。<span class="html-tag">&lt;/P&gt;</span> 
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;价格倒挂也让废品站老板喊亏。在武昌秦园路一条偏僻巷子里，有座半个足球场大小的废塑料堆场。“塑料瓶至少有30万个，江浙下游加工企业收购价比我从破烂王那儿的进价还低，这个年没法过了。”该废品站老板很无奈。<span class="html-tag">&lt;/P&gt;</span> 
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;武汉再生资源行业协会副会长谢生慧分析，国际石油价格持续下跌是废塑料回收产业“掉链子”的主要原因。现在，用于生产化纤的聚酯纤维颗粒料(塑料瓶原材料，从石油中提取)，新料每公斤只要5元，与废塑料瓶回收加工制成的颗粒料价格相差无几，化纤企业怎么可能还用旧料?<span class="html-tag">&lt;/P&gt;</span> 
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;谢生慧说，新料纯度高、韧性好，还能避免化纤企业加工旧料产生的治污成本。此外，化纤企业购买新料可以拿到增值税发票，而从破烂王手中回收的旧料没有发票，17%的增值税无法抵扣，无形增加了企业税费负担。每吨新旧料差价不超过5000元钱，旧料就难以翻身。<span class="html-tag">&lt;/P&gt;</span> 
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
				</td>
			</tr>
			<tr>
				<td class="line-number">
				</td>
				<td class="line-content">
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;谢生慧表示，目前武汉大小废塑料回收站近千家，积压的废塑料瓶以亿计。由于旧料回收包含破烂王、废品站、颗粒料加工等多道环节，人工成本高，降价空间有限。在石油价格长期低位徘徊的背景下，废塑料何去何从?这是新问题、新矛盾。&amp;nbsp;<span class="html-tag">&lt;/P&gt;</span>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<p>
	<br />
</p>',0,34,0,0,0,0,0,0,0,1,N'admin',N'2015/1/30 15:50:38',N'2015/1/30 16:07:43')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 63,1,4,N'网友曝光微信密码漏洞 马化腾账号遭入侵',N'/upload/201210/20/201210201256195408.jpg',N'在前不久，有网友根据电话采访周鸿祎的视频拨号声，通过技术手段分析出了周鸿祎的电话号码，周鸿祎得知后还亲自在微博上向他抛出了橄榄枝。近日又有网友通过利用微信账号安全的设置漏洞，成功地破解了腾讯CEO马化腾微信账号，只是不知道他会不会获得马化腾的垂青。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在前不久，有网友根据电话采访周鸿祎的视频拨号声，通过技术手段分析出了周鸿祎的电话号码，周鸿祎得知后还亲自在微博上向他抛出了橄榄枝。近日又有网友通过利用微信账号安全的设置漏洞，成功地破解了腾讯CEO马化腾微信账号，只是不知道他会不会获得马化腾的垂青。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;这位来自WooYun论坛的黑客网友公布了漏洞及破解具体过程，虽然在技术方面对我们普通人来说有一些难度，但对于相关专业人士来说应该算是小菜一碟。
</p>',99,10,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:57:06')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 64,1,5,N'意大利最高法院判决：手机致人患脑瘤',N'/upload/201210/20/201210201259238484.jpg',N'手机辐射对人体究竟有什么危害？这一点科学家并没有做出肯定性答复。然而，近日意大利最高法院的一项判决，则给出了“肯定”答案。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;意大利最高法院近日接受了这样一起案件，该国一名商人Innocente 
Marcolin患上了良性脑瘤，据他自己陈述，<strong>这是由于自己过去12年来与多国客户谈生意，每天使用手机和无绳电话超过6小时，导致脑部的三叉神经产生了肿瘤</strong>，因而才患病，当前他已经部分面瘫，希望得到工伤赔偿。根据律师提供的医生证明，过量使用手机会增加患此类肿瘤的风险。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;意大利最高法院做出判决，<strong>认为Innocente Marcolin诉求成立，理应获得工伤赔偿</strong>。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;需要指出的是，当前的科学研究并未能发现手机辐射与脑瘤之间存在直接关系，世界卫生组织也只是将手机归类为“可能的”致癌物，与杀虫剂和咖啡一样。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;意大利最高法院的此次判决是否会给其它国家的此类案件产生指导性作用？也许今后客服人员得肿瘤也能按工伤处理了。
</p>',99,9,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 12:59:47')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 65,1,3,N'王府井苹果店正式开业 粉丝连夜排队',N'/upload/201210/20/201210201309186909.jpg',N'北京王府井Apple Store苹果商店今日上午9点正式开业，座落于王府井商业街apm(原新东安商场)，是目前亚洲最大的苹果商店。',N'<p style="text-align:center;">
	<img src="/upload/201210/20/201210201309307338.jpg" alt="" />
</p>
<p>
	<br />
</p>
<p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;今早7点30分，现场已有约200人在外排队等候，最靠前的一位年轻人称自己<strong>昨晚9点就已经在此排队</strong>。9点整开业时，排在前面进店顾客均获增了一件纪念T恤，但只用了半个小时就发完了。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;王府井苹果店共有三层，包括地上两层和地下一层，并且带有标志性的玻璃旋转梯。<strong>地上一层为产品销售区</strong>，展示iPhone、iPad、MacBook等产品，但因为行货尚未发布，所以没有最新的iPhone 
5、iPod 
touch；<strong>地上二层为天才吧</strong>，360度设计，顾客可站在苹果的服务人员身边交流或接受服务，不同于以往柜台式的面对面，这也是<strong>目前亚洲唯一的360度设计的天才吧</strong>；<strong>地下一层为配件销售区</strong>，产品类型非常丰富。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;苹果称王府井店将拥有<strong>大约300名苹果员工</strong>加入，北京的苹果员工总数也将达到800名。苹果零售店总监John 
Browett亲自到场为媒体讲解这家新店。此前他还曾表示，这家店地理位置优于香港IFC和上海南京路店，是亚洲位置最好。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;苹果现已在中国拥有6家零售店，全球零售店总数达到390家。接下来，苹果还将在深圳开设一家新店。
	</p>
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:11:08')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 66,1,8,N'Surface英国/加拿大也火爆 但微软喜忧参半',N'/upload/201210/22/201210221104494757.jpg',N'微软Windows RT版Surface已经在10月17日开始接受预订，并将于10月26日面向澳大利亚、加拿大、中国、法国、德国、中国香港、英国和美国首发。在接受预订当天，美国市场的不含Touch Cover的32GB版Surface（售价为499美元）就售罄了。',N'<div class="post">
	<div style="word-break:break-all;" class="content">
		<p>
			<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在加拿大和英国，Surface同样十分火爆</strong>，当前，<strong>两国的微软在线商店上都无法再预订到不含Touch 
Cover的32GB版Surface了</strong>。
		</p>
		<p>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;不含Touch Cover的32GB版Surface在加拿大的预售价为519美元，英国为399英镑。
		</p>
		<p>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;微软当前并未公开透露已经有多少台Surface被预订，但是从当前的情形来看，32GB版Surface更受欢迎，尤其是不带Touch 
Cover的。这一结果一定是让微软喜忧参半。
		</p>
		<p>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;自开始推广Surface以来，Touch Cover一直是微软宣传的重中之重，Touch 
Cover是微软专为Surface研发的外置触摸虚拟键盘，同时兼具保护套作用，是微软的创新产品。<strong>微软一直希望消费者能够喜欢它，但是，显然，Touch 
Cover那高昂的售价让大家望而却步</strong>。在美国，不含Touch 
Cover的32GB版Surface价格比含Cover的便宜100美元，在我国，不含Touch Cover的32GB版Surface价格则低出800元。
		</p>
		<p align="center">
			<a href="http://news.mydrivers.com/img/20121020/a71fcdfae4674e9cbd81e46df112a47c.jpg" target="_blank"><img style="border-bottom:black 1px solid;border-left:black 1px solid;border-top:black 1px solid;border-right:black 1px solid;" alt="Surface英国/加拿大也火爆 但微软喜忧参半" src="http://news.mydrivers.com/img/20121020/s_a71fcdfae4674e9cbd81e46df112a47c.jpg" /></a> 
		</p>
	</div>
	<div class="postutility">
		<br />
		<table border="0" cellspacing="0" cellpadding="10" width="100%" class="ke-zeroborder">
			<tbody>
				<tr>
					<td align="middle">
<script></script>
<script></script>
						<ins style="border-bottom:medium none;position:relative;border-left:medium none;padding-bottom:0px;margin:0px;padding-left:0px;width:468px;padding-right:0px;display:inline-table;height:60px;visibility:visible;border-top:medium none;border-right:medium none;padding-top:0px;">
							<ins style="border-bottom:medium none;position:relative;border-left:medium none;padding-bottom:0px;margin:0px;padding-left:0px;width:468px;padding-right:0px;display:block;height:60px;visibility:visible;border-top:medium none;border-right:medium none;padding-top:0px;" id="aswift_1_anchor">
								<iframe style="position:absolute;top:0px;left:0px;" id="aswift_1" vspace="0" height="60" marginheight="0" frameborder="0" width="468" allowtransparency="" name="aswift_1" marginwidth="0" scrolling="no" hspace="0">
								</iframe>
							</ins>
						</ins>
						<div id="ad_468x60_01" class="ad_baidu_jiange">
							<div id="baidu_clb_slot_384768">
								<iframe style="border-width:0px;margin:0px;display:block;vertical-align:bottom;" id="baidu_clb_slot_iframe_384768" vspace="0" height="60" marginheight="0" src="http://news.mydrivers.com/domain-policy.htm" frameborder="0" width="468" allowtransparency="" marginwidth="0" scrolling="no" hspace="0">
								</iframe>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="post_module">
	<div class="head">
	</div>
</div>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:13:28')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 67,1,3,N'听第一位进入Google数据中心的记者爆料',N'/upload/201210/20/201210201314407898.jpg',N'据腾讯科技报道，史蒂文列维（Steven Levy）是第一位有幸进入谷歌数据中心的记者。他将自己的亲身经历娓娓道来，令读者有种身临其境的感觉。',N'<div style="word-break:break-all;" class="content">
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;据腾讯科技报道，史蒂文列维（Steven 
Levy）是第一位有幸进入谷歌数据中心的记者。他将自己的亲身经历娓娓道来，令读者有种身临其境的感觉。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;列维写道：“<strong>谷歌数据中心门口有一个标识牌，注明如果没有戴耳塞或耳套就不得入内</strong>。你可以使用自动出货机吐出的橙红色耳塞或佩戴象机场地勤人员佩戴的那种头盔。我们戴好耳塞，卡瓦（Kava）将手抬起来对准安全扫描器进行身份验证，然后厚重的大门就打开了。然后我们就走进这个充满数据的世界。”
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;但是正如列维在他的文章末尾所指出的那样，谷歌仍然将它的数据中心帝国看作是它在网络竞争中掌握的最重要的一项优势，它仍然决定不向竞争对手透露它的最新技术。数据中心技术成熟后，谷歌可能会向外界分享它的一点点技术成果，但最新的研发成果只有它自己掌握。谷歌基础设施主管乌尔兹霍尔泽（Urs 
Holzle）称：“我们尽可能保持开放性，但前提是不能失去我们的竞争优势。我们将传播思想，而不是行为。”
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在过去的几年里，我们对谷歌网络了解了很多，它被公认为最先进的网络业务。但是我们不知道的东西还有很多。最明显的是，谷歌一直对其数据中心帝国中使用的联网技术守口如瓶。它只说想要开发自己的服务器。与Facebook等大型网络公司一样，它没有透露它在全球运行着多少台服务器。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;这些问题的答案都值得探寻，因为谷歌是整个技术行业的巨无霸。它的数据中心建设总是领先于行业，当那些数据中心建设方法或技术被披露出来后，立刻就会被整个行业采用。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;现在，谷歌联网设置中存在着巨大问题。今年秋季，谷歌承认它正在设计定制联网设备，利用OpenFlow开源协议在数据中心之间传递信息。但是这种技术与在计算设备中传递信息的联网技术是不 同的。我们在今年夏季的时候曾采访过霍尔泽，但他当时拒绝谈论相关事宜。
	</p>
	<p>
		<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;谷歌所有的联网设备都是它自己设计的，这已经是公开的秘密</strong>。据谷歌前工程师JR李沃斯（JR 
Rivers）称，谷歌从2005年起就开始设计自己的联网设备了。今年2月，一台名为Pluto 
Switch的神秘联网设备的照片出现在一个不知名的论坛上，那些照片显然是发错了地方。从照片泄露的信息来看，那似乎是谷歌在3年前开发出来的一台廉价的交换机，但谷歌仍然没有公开关于那台设备的任何信息。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;有人怀疑谷歌已经在其数据中心中使用了一种全新的光纤联网交换机，但这似乎不大可能。对于在服务器之间短程传输数据来说，光纤交换机的成本一直都太高。而且要想用光纤交换机替代铜线交换机，还需要解决一些技术上的难题。
	</p>
	<p>
		<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;目前还不清楚谷歌是否在其数据中心中使用了OpenFlow技术</strong>。据推测，这是谷歌内部业务的很大一部分内容。但谷歌也可能会采用某种虚拟联网方案和Nicira提供的虚拟化技术。Nicira最近刚刚被虚拟化厂商VMware以12.6亿美元的价格收购。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;鉴于OpenFlow是一种远程管理网络硬件的技术，虚拟化联网技术让你可以只利用软件就能架设其复杂的网络，这样就可以更容易地在数据中心内部调整数据的流向。在谷歌的各个数据中心之间传送信息的广域网上，谷歌使用了它与Nicira合作开发的一款网络控制器。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;现在，谷歌已经坦言承认它自己的服务器都是它自己设计的这一事实。它在2009年的时候对外公布了某些设计。但在过去的3年里，它可能又开发了不少的新设备，至于到底有多少，谁也说不清楚。谷歌发言人对我们说，至少谷歌开发的一些最新的服务器设计可以在这段视频中看到。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;截至上个月，我们已经知道<strong>谷歌为它的部分服务器配备了GPS设备和原子钟</strong>，以协助构建其全球性数据库Spanner。是的，GPS设备和原子钟。上周，谷歌工程师杰夫迪恩（Jeff 
Dean）在洛杉矶召开的一次系统工程师会议上对我们说，<strong>这些设备相对更廉价一些，可能每台设备的成本只有几千美元</strong>。
	</p>
	<p>
		<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;我们仍然不知道谷歌到底运行着多少台服务器</strong>。列维认为这个数据并不重要。 
他写道：“<strong>走在庞大的数据中心内部，我意识到那是一个庞大的天文数字。即便可以数清楚，那个数字基本上也是毫无意义的。</strong>现在的设备配备着多核心处理器和其他先进组件，它们的处理能力和功能不知道比以前提高了多少倍。 
谷歌现在的一台服务器也许相当于以前的20台服务器。无论如何，谷歌已经在使用群集技术了。” 
他的说法也有一定的道理，但是从另一个角度来说，谷歌运行的服务器数量仍然是重要的。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;由于谷歌的服务器都是它自己设计的，而且它运行着云服务，这将推动全球硬件市场发生巨大的变化。据英特尔的狄安布莱恩特（Diane 
Bryant）称，谷歌现在是英特尔的第五大服务器芯片客户，这明显说明谷歌已经成为全球最大的硬件制造商之一，它正在蚕食戴尔和惠普等厂商的业务。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;显然，谷歌在制造它自己设计的设备时需要与外部厂商签订合同。这就会鼓励许多其他的公司如Facebook和高盛等直接到谷歌的原设备厂商处设计它们自己的硬件。 
但是在今年夏天的时候，霍尔泽对我们说，谷歌没有必要将所有的设备都交给原设备厂商来制造。也许谷歌将通过加拿大、墨西哥或是南美洲的一家代工厂商来制造它的设备。 
从目前的情况来看，加拿大厂商Celestica就是一个很好的选择。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;那么谷歌运行着多少个数据中心呢？ <strong>它在美国拥有6个数据中心，在欧洲有3个数据中心，还有4个数据中心正在建设之中</strong>（其中有3个在建的数据中心位于亚洲，1个位于南美洲）。 
但谷歌没有透露它通过与其他公司合作获得使用权的数据中心有多少个。
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;另一个重要的问题是，谷歌正在对其基础设施进行维护。那也是一个秘密。
	</p>
	<p align="center">
		<img style="border-bottom:black 1px solid;border-left:black 1px solid;border-top:black 1px solid;border-right:black 1px solid;" alt="听第一位进入Google数据中心的记者爆料" src="http://news.mydrivers.com/img/20121020/a92c01aa5bbd48da901f89f96fd4c065.jpg" /><br />
Google技术员麦克巴哈姆安装一块主板
	</p>
</div>
<div class="postutility">
	<br />
	<table border="0" cellspacing="0" cellpadding="10" width="100%" class="ke-zeroborder">
		<tbody>
			<tr>
				<td align="middle">
<script></script>
<script></script>
					<ins style="border-bottom:medium none;position:relative;border-left:medium none;padding-bottom:0px;margin:0px;padding-left:0px;width:468px;padding-right:0px;display:inline-table;height:60px;visibility:visible;border-top:medium none;border-right:medium none;padding-top:0px;">
						<ins style="border-bottom:medium none;position:relative;border-left:medium none;padding-bottom:0px;margin:0px;padding-left:0px;width:468px;padding-right:0px;display:block;height:60px;visibility:visible;border-top:medium none;border-right:medium none;padding-top:0px;" id="aswift_1_anchor">
							<iframe style="position:absolute;top:0px;left:0px;" id="aswift_1" vspace="0" height="60" marginheight="0" frameborder="0" width="468" allowtransparency="" name="aswift_1" marginwidth="0" scrolling="no" hspace="0">
							</iframe>
						</ins>
					</ins>
					<div id="ad_468x60_01" class="ad_baidu_jiange">
						<div id="baidu_clb_slot_384768">
							<iframe style="border-width:0px;margin:0px;display:block;vertical-align:bottom;" id="baidu_clb_slot_iframe_384768" vspace="0" height="60" marginheight="0" src="http://news.mydrivers.com/domain-policy.htm" frameborder="0" width="468" allowtransparency="" marginwidth="0" scrolling="no" hspace="0">
							</iframe>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>',99,13,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:16:40')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 68,1,4,N'微软哪个部门最赚钱？',N'/upload/201210/20/201210201319126903.jpg',N'10月20日消息，据国外媒体报道，在微软发布其首款平板电脑Surface时，CEO史蒂夫?鲍尔默（Steve Ballmer）就指出：“Windows是微软的最核心业务，范围涵盖个人电脑、服务器、手机操作系统以及云计算平台Azure。”',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;10月20日消息，据国外媒体报道，在微软发布其首款平板电脑Surface时，CEO史蒂夫?鲍尔默（Steve 
Ballmer）就指出：“Windows是微软的最核心业务，范围涵盖个人电脑、服务器、手机操作系统以及云计算平台Azure。”
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;虽然鲍尔默所言不虚，但从上个季度的财报来看，Windows却并不是微软运营利润的最大来源业务，而来自隶属于Office业务的商务部门的运营利润达到Windows的两倍。甚至连来自服务器和工具的运营利润都要高于Windows部门。
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_120605_534.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;微软目前正处于从Windows7向Windows8转型的过渡期，这是Windows部门运营利润表现不佳的主要原因。一旦Windows 
8销售在本季度到明年的这段时间里出现上涨，微软Windows部门的运营利润届时将出现反弹。
</p>',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:19:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 69,1,4,N'微软宣布Office365大学生版：十个理由让你爱她',N'/upload/201210/22/201210221058594848.jpg',N'10月20日消息，微软正式宣布全新的面向高校学生的“Office 365 University”计划。Office 365大学版将于2013年第一季度正式上线，会通过线上、零售商以及微软商店面向全球52个市场推出。',N'<p>
	10月20日消息，微软正式宣布全新的面向高校学生的“Office&nbsp;365 University”计划。Office 
365大学版将于2013年第一季度正式上线，会通过线上、零售商以及微软商店面向全球52个市场推出。
</p>
<p>
	从今天起，符合条件的学生可以购买Office University 2010或者Office University for Mac 
2011，并可以获赠免费的Office 365 University订阅。
</p>
<p>
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_112110_565.jpg" /> 
</p>
<p>
	高校学生会爱上Office 365 University的10个理由如下：
</p>
<p>
	<strong>最好的Office</strong>：包括全新的Word、PowerPoint、Excel、OneNote、Outlook、Publisher和Access。
</p>
<p>
	<strong>最好的价格</strong>：每月1.67美元。预计四年订阅的零售价是79.99美元。
</p>
<p>
	<strong>四年</strong>：若继续再上学四年，可以续约一下，获得总计8年的Office 365 University。
</p>
<p>
	<strong>数字笔记</strong>：通过触控、笔或者键盘在OneNote上记录笔记，并可保存在云中和通过多设备访问。
</p>
<p>
	<strong>保存到SkyDrive</strong>：Office 365 
University默认将文档保存到SkyDrive，所以内容会始终在设备间同步。
</p>
<p>
	<strong>更多的存储</strong>：额外获得20GB的SkyDrive存储，总计为27GB。
</p>
<p>
	<strong>Skype</strong>：每月60分钟的Skype国际通话。
</p>
<p>
	<strong>新升级</strong>：获得未来的升级和改进。
</p>
<p>
	<strong>两设备的安装</strong>：一个用户可以将Office 365 University可以安装到两台电脑（PC或 Mac）中。
</p>
<p>
	<strong>办公需求</strong>：使用它，即使是离开电脑依旧可以通过互联网实现Office的全部功能。
</p>
<p>
	认证机构中的全日制/非全日制高校学生和教职工均可购买Office 365 University。高校生、教职工在激活Office 365 
University产品的过程中需要提供身份验证。除了微软零售店要求售前验证身份，其他的主要购买渠道则都是在售后认证身份。
</p>',99,10,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:22:20')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 71,1,4,N'Win8，最后的Windows操作系统',N'/upload/201210/20/201210201325180344.jpg',N'Salesforce.com的首席执行官管Marc Benioff一直是以直言不讳而著称的，现在他又就Win8做了一个大胆的预测。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Salesforce.com的首席执行官管Marc Benioff一直是以直言不讳而著称的，现在他又就Win8做了一个大胆的预测。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;据外媒Computerworld.com报道，Marc Benioff在纽约的一次公司大会上，公开称Windows8将会成为微软Windows操作系统的“终结者”，随着越来越多的企业软件服务迁移到基于云的解决方案，Windows会最终变得“无关紧要”。
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_094338_875.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Marc Benioff称现在很多大公司都想从PC中解放出来，让员工带着便携式个人电脑来工作。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;微软对Marc Benioff的言论并未作出任何回应。我们需要注意的一点，其实微软的Windows 8以及Windows RT系统，还有Windows Phone 
8都是以便携性和云连接为主题设计研发的。
</p>',99,35,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:26:01')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 74,1,9,N'799元360特供机：“海尔小潜艇”下周限量发售',N'/upload/201210/22/201210221038088694.jpg',N'10月19日消息，360和海尔共同宣布，360特供机新成员——海尔小潜艇，将于下周二（10月23日）正式发售，现货1万台，售价799元。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;10月19日消息，360和海尔共同宣布，360特供机新成员——海尔小潜艇，将于下周二（10月23日）正式发售，现货1万台，售价799元。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;海尔小潜艇，IP67级三防设计（防水、防尘、防刮），超长待机。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;海尔此前还曾和360合作推出“海尔超级旗舰W910”360特供机，其售价是1999元。
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_171105_626.jpg" /> 
</p>',99,29,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:42:40')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 75,1,7,N'小蛮腰随心扭，联想Win8变形本Twist宣传视频',N'/upload/201210/20/201210201343435821.jpg',N'联想Win8翻转设备ThinkPad Twist给大家留下了比较深刻的印象，其最大的卖点就是可以随心旋转。',N'<div class="current_nav">
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;联想Win8翻转设备ThinkPad 
Twist给大家留下了比较深刻的印象，其最大的卖点就是可以随心旋转。
</div>
<div id="paragraph" class="post_content">
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;近日联想发布了ThinkPad Twist的视频广告，广告中展示了ThinkPad 
Twist可以随心旋转的优点，小蛮腰真的很灵活啊。下面就来看下这个视频吧，其实这是一款很帅气也很灵活的产品。广告拍的也不错啊，很有大片范儿。
	</p>
	<p style="text-align:center;">
		<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_144551_958.jpg" />
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;联想超极本ThinkPad 
Twist屏幕大小为12.5英寸，触摸屏可以旋转，也可以折叠成平板。搭载Windows8 Pro系统，配置英特尔酷睿i7处理器，支持3G网络，用户可选择500GB硬盘或128GB固态硬盘，售价为849美元起。
	</p>
	<p style="text-align:center;">
		<embed style="visibility:visible;" height="500" type="application/x-shockwave-flash" align="middle" width="600" src="http://player.youku.com/player.php/sid/XNDYzOTI0Nzg4/v.swf" flashvars="winType=index" quality="high" allowfullscreen="true" />
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;还有一个比较长的ThinkPad Twist展示视频，有兴趣的用户可以一起看一下。
	</p>
	<p style="text-align:center;">
		<embed style="visibility:visible;" height="500" type="application/x-shockwave-flash" align="middle" width="600" src="http://player.youku.com/player.php/sid/XNDYzOTM1MTk2/v.swf" flashvars="winType=index" quality="high" allowfullscreen="true" />
	</p>
</div>',99,61,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:45:00')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 96,3,28,N'明媚',N'/upload/201210/20/201210202226228040.jpg',N'灵魂缺失的伤口、连泪都不知道为谁而流。我倔强的不愿屈服，换来的却也只是伤痕累累。为了等你，我错过了等我的人。一地的凄凉、写满了你赐予的悲伤。我感动天感动地，却感动不了你。',N'<p>
	灵魂缺失的伤口、连泪都不知道为谁而流。
</p>
<p>
	我倔强的不愿屈服，换来的却也只是伤痕累累。
</p>
<p>
	为了等你，我错过了等我的人。
</p>
<p>
	一地的凄凉、写满了你赐予的悲伤。
</p>
<p>
	我感动天感动地，却感动不了你。
</p>
<p>
	<br />
</p>',99,16,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 21:02:43')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 97,3,28,N'我的新娘',N'/upload/201210/20/201210202224582044.jpg',N'我想有一天和你去旅行。去那没有去过的地方，没有行李，没有背包，不带电脑更不要手机，走一个地方停一个地',N'<span style="white-space:nowrap;">我想有一天和你去旅行。去那没有去过的地方，没有行李，没有背包，不带电脑更不要手机，走一个地方停一个地</span>',99,20,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 21:04:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 70,1,9,N'华为神秘新机Ascend Mate曝光：6.1英寸+四核',N'/upload/201210/22/201210221055082458.jpg',N'三星Galaxy Note2智能手机那5.5英寸超大屏幕已经让人很难驾驭了，可手机屏幕越来越大的趋势已无法阻挡了。而华为即将推出拥有6.1英寸巨屏的Ascend Mate“神秘”手机今日再次曝光，更多参数被放出，现在就让我们抢先了解一下吧。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;三星Galaxy Note2智能手机那5.5英寸超大屏幕已经让人很难驾驭了，可手机屏幕越来越大的趋势已无法阻挡了。而华为即将推出拥有6.1英寸巨屏的Ascend 
Mate“神秘”手机今日再次曝光，更多参数被放出，现在就让我们抢先了解一下吧。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;华为Ascend Mate：拥有6.1英寸的1080p全高清触控屏；搭载1.8GHz海思K3V3四核处理器；运行Android 4.1操作系统，搭配华为开发的EMUI 
1.5界面；2G RAM；4000mAh电池；机身厚度9.9mm。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;这般的强机，你是否期待呢？
</p>',99,30,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:24:06')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 72,1,8,N'iPad Mini 23日登场',N'/upload/201210/22/201210221047038495.jpg',N'说起本周最值得关注的新闻就要属苹果的邀请函的发布了，虽然本次苹果发布会将要发布的具体产品我们无从得知，但是苹果有很大的可能性将会在23日发布其小尺寸平板iPad Mini。而大家一直抱有很大期望的微软Surface也已经在苏宁开售，同时本周还有很多其他有意思的新闻，相信…',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;说起本周最值得关注的新闻就要属苹果的邀请函的发布了，虽然本次苹果发布会将要发布的具体产品我们无从得知，但是苹果有很大的可能性将会在23日发布其小尺寸平板iPad 
Mini。而大家一直抱有很大期望的微软Surface也已经在苏宁开售，同时本周还有很多其他有意思的新闻，相信一定不会令大家失望的，接下来就让手机中国整理的平板新闻汇总：
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_100140_193.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;此前曾有消息称，苏宁将会率先开售微软的自有平板Surface。现在微软已经大方的承认这个传闻，随后苏宁也表示会在10月17日正式开启它的预购（10月26日0点与全球同步正式发售）。
</p>
<p style="text-align:center;">
	<img border="0" alt="" src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_093633_78.jpg" width="500" height="375" /> 
</p>
<p>
	<strong>微软Surface RT</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;从之前曝光的消息来看，Surface RT版将会搭载主频1.4GHz的NVIDIA Tegra 
3四核处理器，而之前微软公布的参数为，该机厚度为9.3mm，整机重约676克，配备的是10.6英寸16:9触摸屏，分辨率为1920×1080像素，并内置USB 
2.0、microSD、Micro HD Video接口和31.5Wh电池。
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_093633_125.jpg" /> 
</p>
<p>
	<strong>微软Surface RT</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;目前接受预定的只有Surface RT版，其中32GB版本的售价为3688元（16GB Wi-Fi版iPad 
3也是这个价格），而标配黑色触摸屏键盘Touch Cover的Surface 
32GB售价为4488元，64GB的价格则为5288元。随后微软还表示，为了让更多的中国用户近距离了解和感受Surface，苏宁电器将在其零售商店中设置它的专区，陈列并展示Surface，同时配备专业的销售人员。需要注意的是，微软还提供了Surface的多种配件，诸如拥有5种不同配色（黑色、白色、洋红色、青蓝色以及红色）的触控式键盘保护套Touch 
Cover，其售价为908.88元，而黑色实体键盘保护套的价格是988.88元。
</p>',99,22,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:37:19')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 73,1,5,N'技术宅拯救世界：用纸糊一辆自行车',N'/upload/201210/22/201210221043246420.jpg',N'你见过纸糊的自行车吗？来自以色列的工程师兼自行车爱好者伊扎尔加夫尼（Izhar Gafni）就糊出了一辆。这辆自行车除了车胎和链条等配件材料之外完全由回收利用的硬纸板制成，并且成本仅需 12 美元。有了这种环保廉价的自行车，都市人群又多了一种节能减排的出行方式。同时…',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;你见过纸糊的自行车吗？来自以色列的工程师兼自行车爱好者伊扎尔·加夫尼（Izhar 
Gafni）就糊出了一辆。这辆自行车除了车胎和链条等配件材料之外完全由回收利用的硬纸板制成，并且成本仅需 12 
美元。有了这种环保廉价的自行车，都市人群又多了一种节能减排的出行方式。同时，该自行车在收入较低的发展中国家将大有市场。
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_210309_409.png" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;伊扎尔最初的创意来自于他听说有人造出了一艘纸质的独木舟，他也由此萌生出制造纸质自行车的念头。尽管“专家”们极力劝告他放弃自己的“痴心妄想”，但伊扎尔在妻子的鼓励下还是选择了将想法付诸实践。为了造出成本低廉、质量可靠且适合日常使用的纸质自行车，伊扎尔花了整整三年来实验他的各个模型，终于在最近取得了成功。
</p>
<p>
	纸质自行车的制造流程并不简单。首先，伊扎尔要将硬纸板被裁减为特定的形状，之后将纸板折叠、粘合、挤压，制成具备特定强度的自行车部件。之后，伊扎尔使用自己钻研出的独门秘方再次处理这些部件，使其拥有更高的强度。最后，伊扎尔给每个部件刷上松香进行防水处理，再和组装普通自行车一样把每个部件组装起来。
</p>
<p>
	通过下面这个视频，我们可以了解一下纸质自行车是怎样诞生的。
</p>
<p style="text-align:center;">
	<embed style="visibility:visible;" height="500" type="application/x-shockwave-flash" align="middle" width="600" src="http://player.youku.com/player.php/sid/XNDYzNzk5ODY0/v.swf" flashvars="winType=index" quality="high" allowfullscreen="true" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;伊扎尔研发的纸质自行车仅有9公斤重，而同类型的自行车通常都有14公斤。虽然是纸质的，但此自行车不仅防水防潮，还能承载高达220公斤的重量。该自行车使用十分方便，无需任何调试，任何会骑自行车的人都能瞬间上手。而由二手车胎和二手汽车同步齿带打造的车胎和链条也保证了低廉的成本和可靠的质量。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;伊扎尔如今还在精益求精地优化纸质自行车的工艺流程，他估计成品纸质自行车的市场售价应该为20美元。20美元的售价在发展中国家非常有竞争力，尤其是这样一辆外观拉轰质量靠谱的环保自行车。对于发达地区的自行车爱好者而言，有了20美元一辆的自行车，大家就不用再担心自行车被盗的问题了。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;伊扎尔表示，未来他将推出成人版和儿童版两种规格的纸质自行车，而成人版的纸质自行车上还将安装一个电动马达，使其华丽丽地升级为纸质电动自行车。
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_210309_497.png" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;如果纸质自行车上市，你会去买一辆来试试吗？
</p>',99,27,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:40:18')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 76,1,3,N'超级黑客Comex离开苹果',N'/upload/201210/20/201210201346386615.jpg',N'如果你是一名在 iOS 5 以后才接触苹果设备的用户，认识的越狱大神应该是 pod 2g、前绿毒大哥 p0sixninja、Planetbeing 等对 iOS 5.0.1、5.1.1 完美越狱做出卓越贡献的黑客。但是如果你在记载完美越狱历史的小册子上再往前翻一页，就会看到一个曾经以一己之力“感动”无数…',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;如果你是一名在 iOS 5 以后才接触苹果设备的用户，认识的越狱大神应该是 pod 2g、前绿毒大哥 p0sixninja、Planetbeing 等对 
iOS 5.0.1、5.1.1 完美越狱做出卓越贡献的黑客。但是如果你在记载完美越狱历史的小册子上再往前翻一页，就会看到一个曾经以一己之力“感动”无数 iOS 
用户的名字：Nicholas Allegra。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Nicholas Allegra 太过正式，我们就记住他那个在一年多之前呼风唤雨的 ID——Comex 吧。在发布 JailbreakMe 3.0、为所有 
iOS 4.3.3 的用户带来史上最便捷的完美越狱之后，Comex 进入苹果实习，并且在 Twitter 
上表示不会再开发越狱——原因我们自然都知道，苹果能让你在眼皮底下造反？
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_110522_703.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;就在越狱社区即将把 Comex 忘记之时，这名超级黑客通过 Twitter 
向他的20万名关注者宣布：一年多的实习生活过后，我已经在上周离开了苹果。也许是预见到这个消息会引起广泛关注，Comex 
在随后的一则推文里解释：要问为什么（离开苹果）？因为我忘了回复上司的电子邮件。
</p>
<p style="text-align:center;">
	<img src="http://images.weiphone.com/attachments/Day_121019/7_2537775_625f8a4b3ad3557.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;虽然 Comex 在 Twitter 上最初表示的是“离开”，但是实际上我们都知道他是被苹果炒了。据了解，《福布斯》在得知此消息后第一时间与 Comex 
取得了电话联系，得到了对方已离开苹果的证实。Comex 
在电话里表示：上司给他发了一封电子邮件，声称他已经得到可以继续留在苹果实习的机会，悲剧的是他忘了回复这封邮件。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在苹果公司内部工作，这样的过失自然是致命的，Comex 
很快就收到了卷铺盖走人的通知，对此他表示“离开苹果对我来说很不舒服，不过我也知道一切已经不可挽回，就让它过去吧”。《福布斯》还透露，Comex 
离开苹果之后会返回布布朗大学继续求学，目前还没有重新进入越狱界的计划。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;也许你会对此失望，不过《福布斯》坚持认为这是 Comex 和苹果之间的“约定”：由于他刚刚离开苹果，因此还不能够马上投身 iOS 
越狱。一旦过了缓和期，也许我们又可以看到 Comex 大神当初解放万千 iPad 2 用户时的风采了。曾经被安全研究员赞喻“其它黑客与之相比至少落后了五年”的 
Comex，在重获自由之后会否会再一次在越狱界给用户带来惊喜呢？
</p>',99,152,0,0,1,0,0,0,1,1,N'admin',N'2012/10/20 13:47:27')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 77,1,5,N'历史性时刻：ARM首次成功模拟运行x86',N'/upload/201210/22/201210221028328511.jpg',N'ARM在移动领域风生水起，但是要想在桌面和服务器上占领一席之地，最大的麻烦就在于不兼容最为普及的x86代码系统和程序，而出路只有两条：要么大力推进自己的生态系统，要么模拟运行x86，就像曾经的全美达那样。',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ARM在移动领域风生水起，但是要想在桌面和服务器上占领一席之地，最大的麻烦就在于不兼容最为普及的x86代码系统和程序，而出路只有两条：要么大力推进自己的生态系统，要么模拟运行x86，就像曾经的全美达那样。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;今年七月份，英国厂商Boston Server推出了基于Calxeda 
ARM架构处理器的服务器“Viridis”，之后也一直在披露其工作进展，近日更是豪气万丈地官方宣布了一个历史性时刻的到来：这套ARM平台第一次成功运行了x86代码！
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;过去一段时间里，Boston一直在和来自Eltech的工程师团队就此进行合作。这家貌似来自俄罗斯的公司正在ARM服务器上开发能够运行x86程序的软件，并且已经成功开发出了一种可作为模拟器使用的二进制转换器(binary 
translator)，能够发挥出大约45%的原生ARM性能。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;双方在Viridis平台上进行了六大类别的深入测试后，将这一模拟效率提高到了65%，并且会争取在近期继续提高到80%，乃至更高。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;虽然Boston拒绝披露具体细节，但是AnandTech网站分析指出，Eltech的模拟器是实时翻译、运行x86代码的，因此整个模拟器会有些偏大，毕竟它要在两套完全不同的指令集架构之间牵线搭桥，不同于VMware那样在x86-x86之间转换。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;据称，Eltech使用了1MB的转换器缓存，这意味着代码转换可以重复利用，但随着缓存逐渐填满，重复利用率就会迅速降低，而且只有相对轻便的代码才能运行得比较快，获得宣称的45-65%的转换效率。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;但是我们知道，大多数服务器应用的代码和指令都很大，所以Eltech的转换器能否高效率运行它们也有待观察。高性能计算软件倒是相对不那么复杂，但这玩意儿对处理器性能要求又特别高，很难说服他们放弃x86、改用ARM再去模拟x86(何苦来着)。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;总的来说，二进制转换器在特定场合下还是有用的，比如某些特定的Web应用软件不算很大，又是闭源的，没有ARM版本，但除此之外就很难说了。ARM服务器真想闯出一片天地，最稳妥的还得是催生一整套针对ARM架构完全优化编译的Linux软件。
</p>',99,202,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:49:36')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 78,3,25,N'三星I9300 GALAXY SIII',N'/upload/201210/20/201210202242561250.jpg',N'即便是市面上超级强大的拍照手机、或者是性能秒杀一切的四核心手机，其中最经常、最直接和我们打交道的还是那块华丽丽的屏幕。三星GALAXY S III在这方面有资格和市面上任何智能手机强硬对话。它采用了4.8英寸的1280*720分辨率Super AMOLED屏幕。说实话没有采用Plus屏幕我…',N'<span style="color:#666666;line-height:20px;font-family:&quot;Microsoft YaHei&quot;;white-space:normal;background-color:#FFFFFF;">即便是市面上超级强大的拍照手机、或者是性能秒杀一切的四核心手机，其中最经常、最直接和我们打交道的还是那块华丽丽的屏幕。三星GALAXY S III在这方面有资格和市面上任何智能手机强硬对话。它采用了4.8英寸的1280*720分辨率Super AMOLED屏幕。说实话没有采用Plus屏幕我们有些遗憾，但是720P的Super AMOLED似乎能够在显示效果和续航之间达到更好的平衡点。</span>',99,23,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 19:54:30')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 79,3,29,N'海贼王日历',N'/upload/201210/20/201210202242019748.jpg',N'一起陪我们走过无数次 欢乐的 日子 动漫无国界 只有快乐！',N'一起陪我们走过无数次 欢乐的 日子 动漫无国界 只有快乐！',99,25,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:12:40')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 80,3,29,N'唯美的图片第一期',N'/upload/201210/20/201210202241181983.jpg',N'怎样？！有没有 拿他们做背景的冲动呢？',N'怎样？！有没有 拿他们做背景的冲动呢？',99,12,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:18:01')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 81,3,26,N'唯美图片第二期',N'/upload/201210/20/201210202239307256.jpg',N'就请不要再随心所欲突然闯入我的生活又走的那么洒脱这是一个以光速往前发展的城市旋转的物欲和蓬勃的生机把城市变成地下迷宫般错综复杂你就像一只飞鸟 想走就走想留就留 害我没半点防备 当海水变成盐巴冬雪埋葬春华你肯爱上我吗没有准备我们来到这里我们一生下来手里就有一张车…',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	就请不要再随心所欲突然闯入我的生活又走的那么洒脱
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	这是一个以光速往前发展的城市<br />
旋转的物欲和蓬勃的生机<br />
把城市变成地下迷宫般错综复杂
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	你就像一只飞鸟 想走就走<br />
想留就留 害我没半点防备
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	当海水变成盐巴冬雪埋葬春华你肯爱上我吗
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	没有准备我们来到这里<br />
我们一生下来手里就有一张车票<br />
坐不同的车到同一个地方传说那里有温暖的床
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	自此地步 时光绊我前行你要弃我前去还是迁就于我
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	想知道你最近过的好吗 没有我对你或许是种解脱<br />
转了一大圈最终还是回到了原点<br />
我不想点破 你也不要多说<br />
这样也许是最好的办法 安于现状
</p>
<div style="text-align:left;">
	<span style="color:#333333;font-size:x-small;"><span style="line-height:21px;"><br />
</span></span> 
</div>',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:19:45',N'2013/12/10 4:07:51')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 82,3,26,N'喵星人的世界',N'/upload/201210/20/201210202238382318.jpg',N'瞄的世界 你不懂~ 喵了个咪的！',N'瞄的世界 你不懂~ 喵了个咪的！',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:23:20',N'2013/12/10 4:07:38')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 83,3,26,N'花语',N'/upload/201210/20/201210202236076088.jpg',N'花 无意惹东风一夜梦醒 含放天晴情 无意遥相望 翘首相思 心念尤重重 无意花落红碾作成泥 暗香独留留 无意风又起天涯飘零 何处相逢逢 无意相迎笑一眼情生 各许莫离离 无意寒霜降相依空却 来生再梦 。。。。。。',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	花 无意惹东风
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	一夜梦醒 含放天晴
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	情 无意遥相望&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	翘首相思 心念尤重
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	重 无意花落红
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	碾作成泥 暗香独留
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	留 无意风又起
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	天涯飘零 何处相逢
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	逢 无意相迎笑
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	一眼情生 各许莫离
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	离 无意寒霜降
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	相依空却 来生再梦&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	。。。。。。
</p>',99,12,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:26:39')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 84,3,26,N'爱！让我们一起去旅行',N'/upload/201210/20/201210202237224125.jpg',N'褪去原有的纯白岁月泛成黄的纸张便再无法，用清晰的笔调去渲染、刻画只剩，印下的高高低低的脚步如一排浅吟轻唱的诗行心灵却一往向前思绪蜿蜒缠绵无法承受的，也是生命的行囊从今往后，唯愿用睿智填补空缺让岁月错落成诗',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	褪去原有的纯白
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	岁月泛成黄的纸张
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	便再无法，用清晰的笔调
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	去渲染、刻画
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	只剩，印下的高高低低的脚步
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	如一排浅吟轻唱的诗行
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	心灵却一往向前思绪蜿蜒缠绵
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	无法承受的，也是生命的行囊
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	从今往后，唯愿
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	用睿智填补空缺
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	让岁月错落成诗
</p>',99,6,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:30:28',N'2013/12/10 4:07:25')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 85,3,26,N'小木屋，时空的谜题',N'/upload/201210/20/201210202233114575.jpg',N'有份情感无法代言 藏着噎着好难眠 有份感觉好纯好甜 飘过漫长的心海 找不到落脚地点有份思念像彩虹高悬 在迷茫的瞬间 突然闪现 有份清新浮出容颜 千呼万唤 却视而不见我在这里爱你 你在那里想我吗？ 一双目光同一盏灯一样明亮一个人同一朵花散发同样的芳香 细数的柔情把黑夜灌…',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">有份情感无法代言</span>&nbsp;<span style="font-family:楷体_GB2312;">藏着噎着好难眠</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">有份感觉好纯好甜 飘过漫长的心海 找不到落脚地点<br />
有份思念像彩虹高悬 在迷茫的瞬间 突然闪现</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">有份清新浮出容颜 千呼万唤 却视而不见<br />
我在这里爱你 你在那里想我吗？</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">一双目光同一盏灯一样明亮一个人同一朵花散发同样的芳香</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">细数的柔情把黑夜灌醉</span>&nbsp;<span style="font-family:楷体_GB2312;">夜醉了&nbsp;&nbsp;她却醒着 你呢？</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	<span style="font-family:楷体_GB2312;">感情是个傻子 软弱无力 经受不起伤心的回忆虚设的心障将自己囚禁在中央</span>&nbsp;<span style="font-family:楷体_GB2312;">爱在街角</span>&nbsp;<span style="font-family:楷体_GB2312;">难舍难离</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	<span style="font-family:楷体_GB2312;">繁华烟云是演不完的游戏</span> 
</p>',99,7,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:33:04',N'2013/12/10 4:07:17')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 86,3,27,N'懂得生活',N'/upload/201210/20/201210202234148251.jpg',N'我想走在寻找快乐的路上。我想在追寻阳光的路上狂奔。如果你也如此，那么就和我一起吧。如果你给予我温暖，我必以真诚相待回报于你。如果你给予我爱，我也会回报给你更多的爱。如果你信任我，我也无条件的相信你。突然觉得世界变得如此的简单与分明，就连心情都变得透明。今天…',N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">我想走在寻找快乐的路上。我想在追寻阳光的路上狂奔。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你也如此，那么就和我一起吧。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你给予我温暖，我必以真诚相待回报于你。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你给予我爱，我也会回报给你更多的爱。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你信任我，我也无条件的相信你。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">突然觉得世界变得如此的简单与分明，就连心情都变得透明。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">今天特别喜欢的一句话：在遇见他之前，请给我明媚的阳光。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">因为蓝色性格的世界，已经是如此的悲观与规则。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">所以想要温暖向阳，哪怕是身处晚秋，还是能收获一身温暖。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">若有一天世界已经荒芜，</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">若有一天负面情绪已经将我打败，</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">若有一天前方的路已经模糊混沌，被阴霾笼罩。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">希望上面的文字提醒我：要温暖向阳。</span>',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:35:07',N'2013/12/10 4:07:09')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 87,3,27,N'动物图片',N'/upload/201210/20/201210202235129902.jpg',N'又是一日。每日每日，时间走得飞快，生怕被什么赶超过去一般，匆忙而淡漠。好在我已不再像从前，恨不得把每一分钟都要捏成无数个碎片，一定要不辜负每一个碎片才好。年轮教给我最多的，常常就是，平淡，也是一种厚度。少年时，总担心辜负了时光，到如今才懂得，再努力，时光终…',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	又是一日。
</p>
<div style="margin:0px;padding:0px;text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<div style="margin:0px;padding:0px;">
		每日每日，时间走得飞快，生怕被什么赶超过去一般，匆忙而淡漠。好在我已不再像从前，恨不得把每一分钟都要捏成无数个碎片，一定要不辜负每一个碎片才好。年轮教给我最多的，常常就是，平淡，也是一种厚度。少年时，总担心辜负了时光，到如今才懂得，再努力，时光终会辜负了自己。
	</div>
	<div style="margin:0px;padding:0px;">
		&nbsp;
	</div>
</div>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:38:55',N'2013/12/10 4:07:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 88,3,26,N'有的时候爱的太久，人心会醉！',N'/upload/201210/20/201210202229412330.jpg',N'记忆就像是握在手中的水，不管你握紧还是摊开都会慢慢的消失。最好不相见，如此便可不相恋，最好不相知，如此便可不相思。有的时候爱的太久，人心会醉，有的时候恨的太久，人心也会碎；有时候等待太久，人心会干涸！爱的太久，心会碎么？其实不然，爱久了，就成了一种习惯…',N'<p>
	<strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">记忆就像是握在手中的水，不管你握紧还是摊开都会慢慢的消失。最好不相见，如此便可不相恋，最好不相知，如此便可不相思。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;"><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">有的时候爱的太久，人心会醉，有的时候恨的太久，人心也会碎；有时候等待太久，人心会干涸！爱的太久，心会碎么？其实不然，爱久了，就成了一种习惯，没有了激情的爱情，还能让人心碎么？恨的太久，心会碎么？</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">我们用眼泪冲刷生活的酸楚，用时光沉淀情感的碎片。静静的站在角落里，看着这个世界，看着来来往往的人群。每个人都步履匆匆的从我的身边走过，渐行渐远。 似乎所有的人都处于已经离开我，或者将要离开，以及正在离开。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">人生若只如初见，何事秋风悲画扇。等闲变却故人心，却道故人心易变。骊山语罢清宵半，夜雨霖铃终不怨。何如薄幸锦衣儿，比翼连枝当日愿。有情不必终老，暗香浮动恰好，无情未必就是决绝，我只要你记着：初见时彼此的微笑。记住美好的时光，忘记遗憾的往事。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">当眼泪忍不住要流出来的时候，睁大眼睛别眨眼，你会看到世界由清晰到模糊的全过程。心，却在眼泪落下的那一刻变得清晰！爱久了，成了一种习惯；痛久了，成了一道刻痕；恨久了，成了一种负担。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">时间会过去，人也会随着时间而老去。做过的梦，有过的期待，走过的路，现在又如何呢？这世上的事本来就是经不起时间的等待，曾以为自己会为谁而难过很久，曾以为自己会真的放不下一些东西。而现在又是好好的,谁不会永远陪在谁身边，美丽的东西都会成为过去，成为回忆。</strong><br />
</strong> 
</p>',99,42,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:43:14')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 90,3,26,N'梦想~起航',N'/upload/201210/20/201210202228415528.jpg',N'那些被搁浅的梦想，被刻在时光里，深深浅浅吟吟哼唱。',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	那些被搁浅的梦想，
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	被刻在时光里，
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	深深浅浅吟吟哼唱。
</p>',99,57,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:51:12')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 91,3,26,N'花',N'/upload/201210/20/201210202240396556.jpg',N'仿佛是天神无意间错乱了时节夏花还未凋谢   秋天的花早已盛放忙晕了蜜蜂    蝴蝶依旧痴情原以为早已颓败的红莲此时竟还在半开半落间倔强的夏天   颠覆了我预谋的诗篇看着一个个幻想的破灭',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	仿佛是天神无意间错乱了时节
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	夏花还未凋谢 &nbsp;&nbsp;秋天的花早已盛放
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	忙晕了蜜蜂 &nbsp;&nbsp;&nbsp;蝴蝶依旧痴情
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	原以为早已颓败的红莲
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	此时竟还在半开半落间
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	倔强的夏天 &nbsp;&nbsp;颠覆了我预谋的诗篇
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	看着一个个幻想的破灭 &nbsp;&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	外面的世界并不如我的预料
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	当初还不舍夏天的离开
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	如今却怨起迟来的秋天
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	连心中的一抹枫红 &nbsp;&nbsp;终究成了空念
</p>',99,56,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:53:55')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 94,3,26,N'喜欢你——温柔的鱼',N'/upload/201210/20/201210202232163549.jpg',N'尘缘从来都如水，罕须泪，何尽一生情？莫多情，情伤己。',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	&nbsp;One day someone will walk into your life, then you realize love was always worth waiting for！
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	&nbsp;&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;尘缘从来都如水，罕须泪，何尽一生情？莫多情，情伤己。
</p>',99,232,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:59:37')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 95,3,28,N'少女物语--梦瑶.',N'/upload/201210/20/201210202227157663.jpg',N'我一生渴望把你收藏好，妥善安放，细心保存，免你惊，免你苦，免你四下流离，免你无枝可依。要记得，我在，我一直在，永不离开。',N'<span style="text-align:left;color:#333333;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;white-space:normal;background-color:#FFFFFF;">我一生渴望把你收藏好，妥善安放，细心保存，免你惊，免你苦，免你四下流离，免你无枝可依。要记得，我在，我一直在，永不离开。</span>',99,308,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 21:01:05')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 89,3,27,N'我喜爱阳光 是因为我想做个温暖灿烂的人 你呢',N'/upload/201210/20/201210202301235320.jpg',N'桥是江南水乡停住的梦。古老而深邃的青石板桥，悠悠绵延的小巷，喧嚣皆空的黄昏，一切都是现实，一切却又显得那般纯真、唯美，仿佛一个让人甘愿从此沉沦的梦境，令人心碎，更令人感动，泪，潸然落下。我想，江南的才子佳人是幸福的，因为他们曾携手走过一段悠远的青石板桥，而…',N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">&nbsp;桥是江南水乡停住的梦。古老而深邃的青石板桥，悠悠绵延的小巷，喧嚣皆空的黄昏，一切都是现实，一切却又显得那般纯真、唯美，仿佛一个让人甘愿从此沉沦的梦境，令人心碎，更令人感动，泪，潸然落下。我想，江南的才子佳人是幸福的，因为他们曾携手走过一段悠远的青石板桥，而非一世虚空；甚至那午后的小巷里有他们相拥的背影。他们的梦简单而纯粹，一如沉默而稳重的青石板桥，一如宁静和谐的小巷，一如仍湿着露珠的清晨，从此沉醉的一生。</span>',99,15,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:47:01',N'2013/12/10 4:06:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 92,3,26,N'就是，爱这阳光明媚的模样。',N'/upload/201210/20/201210202236451044.jpg',N'阳光明媚的样子，总会让人感到愉悦。之前总是觉得秋天是凄凉的，却没发现也有如此绚烂的色彩。此时，还不是那光秃秃的树干，还不是让人瑟瑟发抖的寒风，还不是缩头缩颈的行人。我喜欢的，就是如此自娱自乐的生活。总有人问我怎么摄影之类的问题，其实我真的不懂，学校的摄…',N'<span style="text-align:left;color:#333333;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;white-space:normal;background-color:#FFFFFF;">阳光明媚的样子，总会让人感到愉悦。之前总是觉得秋天是凄凉的，却没发现也有如此绚烂的色彩。此时，还不是那光秃秃的树干，还不是让人瑟瑟发抖的寒风，还不是缩头缩颈的行人。我喜欢的，就是如此自娱自乐的生活。总有人问我怎么摄影之类的问题，其实我真的不懂，学校的摄影比赛我也不知道是怎么蒙到三等奖的！用最简单的话来说，就是把喜欢的一切都记录下来，之后再去看，就知道哪个拍的好哪个坏。不过，都是在记录生活，我都喜欢。拍照的态度和生活的相似，经历过了，才能体会到酸甜苦辣人生百态。</span>',99,69,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:55:30')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 93,3,28,N'你不知道，不是所有的南方都叫温暖。',N'/upload/201210/20/201210202240309222.jpg',N'阳光亲吻过的落叶 卷起光阴里的轻叹 一枚枚舒展，如同生命前行的脚印   顺着金色的方向 用心聆听，滴落的旋律 正擦拭发烫的季节   此刻,寂静的栅栏 围住不小心浮起来的小情绪 当我捧起一枚落叶 仿佛握住远去的时光  再次返回梦开始的地方 一场辽阔的爱 安静得像远方的思念',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">阳光亲吻过的落叶</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">卷起光阴里的轻叹</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">一枚枚舒展，如同生命前行的脚印</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;"><span style="font-family:&quot;&quot;;">&nbsp;</span></span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">顺着金色的方向</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">用心聆听，滴落的旋律</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">正擦拭发烫的季节</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;"><span style="font-family:&quot;&quot;;">&nbsp;</span></span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">此刻,寂静的栅栏</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">围住不小心浮起来的小情绪</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">当我捧起一枚落叶</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">仿佛握住远去的时光</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">再次返回梦开始的地方</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">一场辽阔的爱</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">安静得像远方的思念</span></b> 
</p>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:58:10',N'2013/12/10 4:06:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[seo_title],[seo_keywords],[seo_description],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 98,4,30,N'16*16PNG网页小图标',N'/upload/201210/21/201210211433570142.jpg',N'16*16PNG网页小图标',N'16*16PNG网页小图标',N'16*16PNG网页小图标',N'16*16PNG网页小图标',N'16*16PNG网页小图标',99,61,0,0,0,0,1,0,0,1,N'admin',N'2012/10/21 14:34:06',N'2013/12/10 4:09:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[seo_title],[seo_keywords],[seo_description],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 99,4,30,N'绿色常用简洁PNG图标',N'/upload/201210/22/201210221634334069.jpg',N'绿色常用简洁PNG图标',N'绿色常用简洁PNG图标',N'此专辑共含98张尺寸为32x32像素的绿色常用简洁PNG图标素材',N'此专辑共含98张尺寸为32x32像素的绿色常用简洁PNG图标素材，具有最新WIN8风格，简单工整，相信大家都可以用得上！',N'<p>
	此专辑共含98张尺寸为32x32像素的绿色常用简洁PNG图标素材，具有最新WIN8风格，简单工整，相信大家都可以用得上！
</p>
<p>
	&nbsp;
</p>',99,51,0,0,0,1,1,0,0,1,N'admin',N'2012/10/21 14:43:39',N'2013/12/10 4:08:59')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 100,4,30,N'物流汽车和货物PNG图标',N'/upload/201210/22/201210221641205768.jpg',N'PNG格式透明背景图标，可打包下载。触动你的视觉神经，启发你的设计灵感！此专辑共含48张尺寸为256x256像素的物流汽车和货物PNG图标素材。',N'<p>
	PNG格式透明背景图标，可打包下载。触动你的视觉神经，启发你的设计灵感！
</p>
<p>
	此专辑共含48张尺寸为256x256像素的物流汽车和货物PNG图标素材。
</p>
<p>
	<img alt="google_shipping" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/google_shipping.png" /> <img alt="pinterest物流汽车" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/pinterest_front.png" /> <img alt="ups_shipping货物" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/ups_shipping.png" /> <img alt="linkedin_front" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/linkedin_front.png" /> 
</p>',99,112,0,0,0,1,1,0,0,1,N'admin',N'2012/10/22 16:43:39',N'2013/12/10 4:08:55')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 101,4,30,N'国际信用卡PNG图标',N'/upload/201210/22/201210221647536218.jpg',N'此专辑共含8张尺寸为512x512像素的国际信用卡PNG图标素材。PNG格式透明背景图标，可打包下载。触动你的视觉神经，启发你的设计灵感！',N'<div class="jieshao">
	此专辑共含8张尺寸为512x512像素的国际信用卡PNG图标素材。
</div>
PNG格式透明背景图标，可打包下载。触动你的视觉神经，启发你的设计灵感！',99,124,0,0,0,1,1,0,0,1,N'admin',N'2012/10/22 16:48:51',N'2013/12/10 4:08:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[seo_keywords],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 102,4,31,N'淘宝商城多格jQuery焦点图',N'/upload/201210/23/201210231350163795.jpg',N'淘宝商城,jQuery焦点图',N'完全模仿了淘宝商城的效果，图片自动播放到最后一张时继续向右切换至第一张，懒人图库推荐下载！！',N'<div class="jieshao">
	<p>
		完全模仿了淘宝商城的效果，图片自动播放到最后一张时继续向右切换至第一张，懒人图库推荐下载！！
	</p>
</div>',99,276,0,0,0,1,1,0,0,1,N'admin',N'2012/10/23 13:50:58',N'2013/12/10 4:08:47')

SET IDENTITY_INSERT [mfp_article] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_albums]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_albums]

CREATE TABLE [mfp_article_albums] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[article_id] [int]  NULL DEFAULT (0),
[thumb_path] [nvarchar]  (255) NULL DEFAULT (''),
[original_path] [nvarchar]  (255) NULL DEFAULT (''),
[remark] [nvarchar]  (500) NULL DEFAULT (''),
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_article_albums] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article_albums] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_article_albums] ON

INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 24,21,N'/upload/201210/20/small_201210201011047116.jpg',N'/upload/201210/20/201210201011047116.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 25,21,N'/upload/201210/20/small_201210201011070070.jpg',N'/upload/201210/20/201210201011070070.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 26,21,N'/upload/201210/20/small_201210201011094118.jpg',N'/upload/201210/20/201210201011094118.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 28,22,N'/upload/201210/20/small_201210201013178785.jpg',N'/upload/201210/20/201210201013178785.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 29,24,N'/upload/201210/20/small_201210201015343889.jpg',N'/upload/201210/20/201210201015343889.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 30,25,N'/upload/201210/20/small_201210201020428486.jpg',N'/upload/201210/20/201210201020428486.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 31,26,N'/upload/201210/20/small_201210201022057543.jpg',N'/upload/201210/20/201210201022057543.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 32,26,N'/upload/201210/20/small_201210201022078624.jpg',N'/upload/201210/20/201210201022078624.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 33,26,N'/upload/201210/20/small_201210201022088775.jpg',N'/upload/201210/20/201210201022088775.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 34,26,N'/upload/201210/20/small_201210201022111731.jpg',N'/upload/201210/20/201210201022111731.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 35,27,N'/upload/201210/20/small_201210201022485736.jpg',N'/upload/201210/20/201210201022485736.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 36,12,N'/upload/201210/20/small_201210201027425186.jpg',N'/upload/201210/20/201210201027425186.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 37,13,N'/upload/201210/20/small_201210201028435944.jpg',N'/upload/201210/20/201210201028435944.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 38,13,N'/upload/201210/20/small_201210201028562124.jpg',N'/upload/201210/20/201210201028562124.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 40,28,N'/upload/201210/20/small_201210201029038332.jpg',N'/upload/201210/20/201210201029038332.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 41,28,N'/upload/201210/20/small_201210201029059258.jpg',N'/upload/201210/20/201210201029059258.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 42,14,N'/upload/201210/20/small_201210201030215722.jpg',N'/upload/201210/20/201210201030215722.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 43,14,N'/upload/201210/20/small_201210201030253982.jpg',N'/upload/201210/20/201210201030253982.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 44,14,N'/upload/201210/20/small_201210201030347525.jpg',N'/upload/201210/20/201210201030347525.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 45,18,N'/upload/201210/20/small_201210201033194448.jpg',N'/upload/201210/20/201210201033194448.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 46,18,N'/upload/201210/20/small_201210201033230991.jpg',N'/upload/201210/20/201210201033230991.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 47,19,N'/upload/201210/20/small_201210201034383555.jpg',N'/upload/201210/20/201210201034383555.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 48,29,N'/upload/201210/20/small_201210201035354966.jpg',N'/upload/201210/20/201210201035354966.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 49,29,N'/upload/201210/20/small_201210201035365742.jpg',N'/upload/201210/20/201210201035365742.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 50,29,N'/upload/201210/20/small_201210201035375112.jpg',N'/upload/201210/20/201210201035375112.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 51,20,N'/upload/201210/20/small_201210201036462871.jpg',N'/upload/201210/20/201210201036462871.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 52,20,N'/upload/201210/20/small_201210201036514094.jpg',N'/upload/201210/20/201210201036514094.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 53,20,N'/upload/201210/20/small_201210201036545796.jpg',N'/upload/201210/20/201210201036545796.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 54,9,N'/upload/201210/20/small_201210201038276866.jpg',N'/upload/201210/20/201210201038276866.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 56,30,N'/upload/201210/20/small_201210201039160518.jpg',N'/upload/201210/20/201210201039160518.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 57,30,N'/upload/201210/20/small_201210201039192532.jpg',N'/upload/201210/20/201210201039192532.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 58,10,N'/upload/201210/20/small_201210201039367753.jpg',N'/upload/201210/20/201210201039367753.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 59,10,N'/upload/201210/20/small_201210201039377279.jpg',N'/upload/201210/20/201210201039377279.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 60,10,N'/upload/201210/20/small_201210201039415696.jpg',N'/upload/201210/20/201210201039415696.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 61,10,N'/upload/201210/20/small_201210201039454270.jpg',N'/upload/201210/20/201210201039454270.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 63,16,N'/upload/201210/20/small_201210201041028868.jpg',N'/upload/201210/20/201210201041028868.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 64,15,N'/upload/201210/20/small_201210201043119922.jpg',N'/upload/201210/20/201210201043119922.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 65,32,N'/upload/201210/20/small_201210201044429301.jpg',N'/upload/201210/20/201210201044429301.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 66,32,N'/upload/201210/20/small_201210201044448666.jpg',N'/upload/201210/20/201210201044448666.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 67,32,N'/upload/201210/20/small_201210201044466625.jpg',N'/upload/201210/20/201210201044466625.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 68,33,N'/upload/201210/20/small_201210201044509728.jpg',N'/upload/201210/20/201210201044509728.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 69,34,N'/upload/201210/20/small_201210201048503818.jpg',N'/upload/201210/20/201210201048503818.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 70,34,N'/upload/201210/20/small_201210201048536458.jpg',N'/upload/201210/20/201210201048536458.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 71,34,N'/upload/201210/20/small_201210201048560040.jpg',N'/upload/201210/20/201210201048560040.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 73,17,N'/upload/201210/20/small_201210201051542905.jpg',N'/upload/201210/20/201210201051542905.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 74,17,N'/upload/201210/20/small_201210201052105013.jpg',N'/upload/201210/20/201210201052105013.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 75,17,N'/upload/201210/20/small_201210201052254003.jpg',N'/upload/201210/20/201210201052254003.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 76,36,N'/upload/201210/20/small_201210201052093300.jpg',N'/upload/201210/20/201210201052093300.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 77,36,N'/upload/201210/20/small_201210201052104545.jpg',N'/upload/201210/20/201210201052104545.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 78,36,N'/upload/201210/20/small_201210201052117351.jpg',N'/upload/201210/20/201210201052117351.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 79,37,N'/upload/201210/20/small_201210201055447111.jpg',N'/upload/201210/20/201210201055447111.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 80,37,N'/upload/201210/20/small_201210201055459917.jpg',N'/upload/201210/20/201210201055459917.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 82,39,N'/upload/201210/20/small_201210201104382108.jpg',N'/upload/201210/20/201210201104382108.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 83,39,N'/upload/201210/20/small_201210201104430838.jpg',N'/upload/201210/20/201210201104430838.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 84,39,N'/upload/201210/20/small_201210201104462700.jpg',N'/upload/201210/20/201210201104462700.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 85,39,N'/upload/201210/20/small_201210201104493468.jpg',N'/upload/201210/20/201210201104493468.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 86,39,N'/upload/201210/20/small_201210201104564376.jpg',N'/upload/201210/20/201210201104564376.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 87,39,N'/upload/201210/20/small_201210201104599518.jpg',N'/upload/201210/20/201210201104599518.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 88,39,N'/upload/201210/20/small_201210201105136649.jpg',N'/upload/201210/20/201210201105136649.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 89,39,N'/upload/201210/20/small_201210201105178350.jpg',N'/upload/201210/20/201210201105178350.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 90,39,N'/upload/201210/20/small_201210201105199904.jpg',N'/upload/201210/20/201210201105199904.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 92,40,N'/upload/201210/20/small_201210201106478295.jpg',N'/upload/201210/20/201210201106478295.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 95,43,N'/upload/201210/20/small_201210201109244855.jpg',N'/upload/201210/20/201210201109244855.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 96,43,N'/upload/201210/20/small_201210201109264066.jpg',N'/upload/201210/20/201210201109264066.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 97,43,N'/upload/201210/20/small_201210201109304206.jpg',N'/upload/201210/20/201210201109304206.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 98,44,N'/upload/201210/20/small_201210201121224163.jpg',N'/upload/201210/20/201210201121224163.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 99,44,N'/upload/201210/20/small_201210201121239314.jpg',N'/upload/201210/20/201210201121239314.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 100,44,N'/upload/201210/20/small_201210201121253527.jpg',N'/upload/201210/20/201210201121253527.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 101,44,N'/upload/201210/20/small_201210201121286484.jpg',N'/upload/201210/20/201210201121286484.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 102,44,N'/upload/201210/20/small_201210201121343183.jpg',N'/upload/201210/20/201210201121343183.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 103,45,N'/upload/201210/20/small_201210201122436999.jpg',N'/upload/201210/20/201210201122436999.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 104,45,N'/upload/201210/20/small_201210201122488699.jpg',N'/upload/201210/20/201210201122488699.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 105,45,N'/upload/201210/20/small_201210201122514784.jpg',N'/upload/201210/20/201210201122514784.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 106,45,N'/upload/201210/20/small_201210201122537276.jpg',N'/upload/201210/20/201210201122537276.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 107,45,N'/upload/201210/20/small_201210201123018653.jpg',N'/upload/201210/20/201210201123018653.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 108,45,N'/upload/201210/20/small_201210201123061451.jpg',N'/upload/201210/20/201210201123061451.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 109,45,N'/upload/201210/20/small_201210201123078320.jpg',N'/upload/201210/20/201210201123078320.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 110,45,N'/upload/201210/20/small_201210201123098000.jpg',N'/upload/201210/20/201210201123098000.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 111,46,N'/upload/201210/20/small_201210201128412942.jpg',N'/upload/201210/20/201210201128412942.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 112,46,N'/upload/201210/20/small_201210201128422470.jpg',N'/upload/201210/20/201210201128422470.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 113,46,N'/upload/201210/20/small_201210201128431061.jpg',N'/upload/201210/20/201210201128431061.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 114,46,N'/upload/201210/20/small_201210201128439183.jpg',N'/upload/201210/20/201210201128439183.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 115,46,N'/upload/201210/20/small_201210201128460426.jpg',N'/upload/201210/20/201210201128460426.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 116,46,N'/upload/201210/20/small_201210201128476982.jpg',N'/upload/201210/20/201210201128476982.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 117,46,N'/upload/201210/20/small_201210201128494476.jpg',N'/upload/201210/20/201210201128494476.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 118,46,N'/upload/201210/20/small_201210201128523373.jpg',N'/upload/201210/20/201210201128523373.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 119,46,N'/upload/201210/20/small_201210201128554143.jpg',N'/upload/201210/20/201210201128554143.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 120,47,N'/upload/201210/20/small_201210201134400466.jpg',N'/upload/201210/20/201210201134400466.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 121,47,N'/upload/201210/20/small_201210201134419834.jpg',N'/upload/201210/20/201210201134419834.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 122,47,N'/upload/201210/20/small_201210201134437953.jpg',N'/upload/201210/20/201210201134437953.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 123,47,N'/upload/201210/20/small_201210201134447481.jpg',N'/upload/201210/20/201210201134447481.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 124,47,N'/upload/201210/20/small_201210201134466225.jpg',N'/upload/201210/20/201210201134466225.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 125,47,N'/upload/201210/20/small_201210201134487311.jpg',N'/upload/201210/20/201210201134487311.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 126,47,N'/upload/201210/20/small_201210201134506367.jpg',N'/upload/201210/20/201210201134506367.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 127,47,N'/upload/201210/20/small_201210201134521049.jpg',N'/upload/201210/20/201210201134521049.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 128,48,N'/upload/201210/20/small_201210201137062000.jpg',N'/upload/201210/20/201210201137062000.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 129,48,N'/upload/201210/20/small_201210201137115107.jpg',N'/upload/201210/20/201210201137115107.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 130,48,N'/upload/201210/20/small_201210201137178680.jpg',N'/upload/201210/20/201210201137178680.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 131,48,N'/upload/201210/20/small_201210201137191644.jpg',N'/upload/201210/20/201210201137191644.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 132,48,N'/upload/201210/20/small_201210201137233817.jpg',N'/upload/201210/20/201210201137233817.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 133,48,N'/upload/201210/20/small_201210201137258028.jpg',N'/upload/201210/20/201210201137258028.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 134,49,N'/upload/201210/20/small_201210201143259178.jpg',N'/upload/201210/20/201210201143259178.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 135,49,N'/upload/201210/20/small_201210201143274486.jpg',N'/upload/201210/20/201210201143274486.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 136,49,N'/upload/201210/20/small_201210201143287450.jpg',N'/upload/201210/20/201210201143287450.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 137,49,N'/upload/201210/20/small_201210201143321658.jpg',N'/upload/201210/20/201210201143321658.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 138,49,N'/upload/201210/20/small_201210201143335560.jpg',N'/upload/201210/20/201210201143335560.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 139,49,N'/upload/201210/20/small_201210201143363676.jpg',N'/upload/201210/20/201210201143363676.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 140,49,N'/upload/201210/20/small_201210201143385075.jpg',N'/upload/201210/20/201210201143385075.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 141,49,N'/upload/201210/20/small_201210201143423969.jpg',N'/upload/201210/20/201210201143423969.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 142,49,N'/upload/201210/20/small_201210201143436934.jpg',N'/upload/201210/20/201210201143436934.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 143,49,N'/upload/201210/20/small_201210201143464268.jpg',N'/upload/201210/20/201210201143464268.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 144,49,N'/upload/201210/20/small_201210201143503787.jpg',N'/upload/201210/20/201210201143503787.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 145,49,N'/upload/201210/20/small_201210201143515033.jpg',N'/upload/201210/20/201210201143515033.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 146,49,N'/upload/201210/20/small_201210201143533777.jpg',N'/upload/201210/20/201210201143533777.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 147,49,N'/upload/201210/20/small_201210201143572827.jpg',N'/upload/201210/20/201210201143572827.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 148,49,N'/upload/201210/20/small_201210201143589071.jpg',N'/upload/201210/20/201210201143589071.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 149,49,N'/upload/201210/20/small_201210201144005629.jpg',N'/upload/201210/20/201210201144005629.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 150,49,N'/upload/201210/20/small_201210201144018906.jpg',N'/upload/201210/20/201210201144018906.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 151,49,N'/upload/201210/20/small_201210201144052176.jpg',N'/upload/201210/20/201210201144052176.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 152,49,N'/upload/201210/20/small_201210201144067328.jpg',N'/upload/201210/20/201210201144067328.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 153,49,N'/upload/201210/20/small_201210201144085759.jpg',N'/upload/201210/20/201210201144085759.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 154,49,N'/upload/201210/20/small_201210201144108564.jpg',N'/upload/201210/20/201210201144108564.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 155,49,N'/upload/201210/20/small_201210201144119186.jpg',N'/upload/201210/20/201210201144119186.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 156,49,N'/upload/201210/20/small_201210201144139492.jpg',N'/upload/201210/20/201210201144139492.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 157,49,N'/upload/201210/20/small_201210201144150582.jpg',N'/upload/201210/20/201210201144150582.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 158,49,N'/upload/201210/20/small_201210201144161829.jpg',N'/upload/201210/20/201210201144161829.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 159,49,N'/upload/201210/20/small_201210201144170888.jpg',N'/upload/201210/20/201210201144170888.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 160,49,N'/upload/201210/20/small_201210201144184634.jpg',N'/upload/201210/20/201210201144184634.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 161,49,N'/upload/201210/20/small_201210201144193381.jpg',N'/upload/201210/20/201210201144193381.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 162,49,N'/upload/201210/20/small_201210201144203690.jpg',N'/upload/201210/20/201210201144203690.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 163,49,N'/upload/201210/20/small_201210201144215249.jpg',N'/upload/201210/20/201210201144215249.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 164,49,N'/upload/201210/20/small_201210201144230244.jpg',N'/upload/201210/20/201210201144230244.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 165,50,N'/upload/201210/20/small_201210201146182533.jpg',N'/upload/201210/20/201210201146182533.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 166,50,N'/upload/201210/20/small_201210201146224864.jpg',N'/upload/201210/20/201210201146224864.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 167,50,N'/upload/201210/20/small_201210201146259384.jpg',N'/upload/201210/20/201210201146259384.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 168,50,N'/upload/201210/20/small_201210201146275004.jpg',N'/upload/201210/20/201210201146275004.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 169,50,N'/upload/201210/20/small_201210201146337641.jpg',N'/upload/201210/20/201210201146337641.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 170,50,N'/upload/201210/20/small_201210201146375442.jpg',N'/upload/201210/20/201210201146375442.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 171,50,N'/upload/201210/20/small_201210201146409337.jpg',N'/upload/201210/20/201210201146409337.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 172,50,N'/upload/201210/20/small_201210201146469006.jpg',N'/upload/201210/20/201210201146469006.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 173,50,N'/upload/201210/20/small_201210201146558822.jpg',N'/upload/201210/20/201210201146558822.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 174,50,N'/upload/201210/20/small_201210201146589281.jpg',N'/upload/201210/20/201210201146589281.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 175,50,N'/upload/201210/20/small_201210201147018491.jpg',N'/upload/201210/20/201210201147018491.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 176,50,N'/upload/201210/20/small_201210201147034111.jpg',N'/upload/201210/20/201210201147034111.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 177,50,N'/upload/201210/20/small_201210201147077535.jpg',N'/upload/201210/20/201210201147077535.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 178,50,N'/upload/201210/20/small_201210201147098466.jpg',N'/upload/201210/20/201210201147098466.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 179,50,N'/upload/201210/20/small_201210201147121740.jpg',N'/upload/201210/20/201210201147121740.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 180,51,N'/upload/201210/20/small_201210201150403758.jpg',N'/upload/201210/20/201210201150403758.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 181,51,N'/upload/201210/20/small_201210201150421877.jpg',N'/upload/201210/20/201210201150421877.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 182,51,N'/upload/201210/20/small_201210201150434686.jpg',N'/upload/201210/20/201210201150434686.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 183,51,N'/upload/201210/20/small_201210201150445464.jpg',N'/upload/201210/20/201210201150445464.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 184,51,N'/upload/201210/20/small_201210201150454055.jpg',N'/upload/201210/20/201210201150454055.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 185,51,N'/upload/201210/20/small_201210201150463427.jpg',N'/upload/201210/20/201210201150463427.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 186,51,N'/upload/201210/20/small_201210201150480454.jpg',N'/upload/201210/20/201210201150480454.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 187,52,N'/upload/201210/20/small_201210201153585515.jpg',N'/upload/201210/20/201210201153585515.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 188,52,N'/upload/201210/20/small_201210201153596602.jpg',N'/upload/201210/20/201210201153596602.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 189,52,N'/upload/201210/20/small_201210201154006751.jpg',N'/upload/201210/20/201210201154006751.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 190,52,N'/upload/201210/20/small_201210201154016433.jpg',N'/upload/201210/20/201210201154016433.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 191,52,N'/upload/201210/20/small_201210201154026270.jpg',N'/upload/201210/20/201210201154026270.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 192,52,N'/upload/201210/20/small_201210201154043603.jpg',N'/upload/201210/20/201210201154043603.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 193,52,N'/upload/201210/20/small_201210201154055939.jpg',N'/upload/201210/20/201210201154055939.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 194,53,N'/upload/201210/20/small_201210201156192282.jpg',N'/upload/201210/20/201210201156192282.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 195,53,N'/upload/201210/20/small_201210201156202900.jpg',N'/upload/201210/20/201210201156202900.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 196,53,N'/upload/201210/20/small_201210201156211645.jpg',N'/upload/201210/20/201210201156211645.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 197,53,N'/upload/201210/20/small_201210201156225543.jpg',N'/upload/201210/20/201210201156225543.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 198,53,N'/upload/201210/20/small_201210201156234443.jpg',N'/upload/201210/20/201210201156234443.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 199,53,N'/upload/201210/20/small_201210201156241783.jpg',N'/upload/201210/20/201210201156241783.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 200,53,N'/upload/201210/20/small_201210201156257242.jpg',N'/upload/201210/20/201210201156257242.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 201,53,N'/upload/201210/20/small_201210201156353744.jpg',N'/upload/201210/20/201210201156353744.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 202,53,N'/upload/201210/20/small_201210201156368891.jpg',N'/upload/201210/20/201210201156368891.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 203,53,N'/upload/201210/20/small_201210201156378104.jpg',N'/upload/201210/20/201210201156378104.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 204,53,N'/upload/201210/20/small_201210201156387629.jpg',N'/upload/201210/20/201210201156387629.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 205,53,N'/upload/201210/20/small_201210201156396062.jpg',N'/upload/201210/20/201210201156396062.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 206,53,N'/upload/201210/20/small_201210201156406055.jpg',N'/upload/201210/20/201210201156406055.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 207,53,N'/upload/201210/20/small_201210201156414332.jpg',N'/upload/201210/20/201210201156414332.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 208,53,N'/upload/201210/20/small_201210201156426980.jpg',N'/upload/201210/20/201210201156426980.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 209,54,N'/upload/201210/20/small_201210201200526551.jpg',N'/upload/201210/20/201210201200526551.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 210,54,N'/upload/201210/20/small_201210201200554347.jpg',N'/upload/201210/20/201210201200554347.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 211,54,N'/upload/201210/20/small_201210201200572461.jpg',N'/upload/201210/20/201210201200572461.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 212,54,N'/upload/201210/20/small_201210201201053194.png',N'/upload/201210/20/201210201201053194.png',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 213,54,N'/upload/201210/20/small_201210201201068654.jpg',N'/upload/201210/20/201210201201068654.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 214,55,N'/upload/201210/20/small_201210201205466391.jpg',N'/upload/201210/20/201210201205466391.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 215,56,N'/upload/201210/20/small_201210201207599384.jpg',N'/upload/201210/20/201210201207599384.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 216,56,N'/upload/201210/20/small_201210201208026400.jpg',N'/upload/201210/20/201210201208026400.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 217,57,N'/upload/201210/20/small_201210201209063079.jpg',N'/upload/201210/20/201210201209063079.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 218,57,N'/upload/201210/20/small_201210201209458641.jpg',N'/upload/201210/20/201210201209458641.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 219,57,N'/upload/201210/20/small_201210201209597940.jpg',N'/upload/201210/20/201210201209597940.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 220,57,N'/upload/201210/20/small_201210201210107724.jpg',N'/upload/201210/20/201210201210107724.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 221,57,N'/upload/201210/20/small_201210201210177686.jpg',N'/upload/201210/20/201210201210177686.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 222,57,N'/upload/201210/20/small_201210201210336818.jpg',N'/upload/201210/20/201210201210336818.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 223,57,N'/upload/201210/20/small_201210201210450507.jpg',N'/upload/201210/20/201210201210450507.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 226,60,N'/upload/201210/20/small_201210201224112027.jpg',N'/upload/201210/20/201210201224112027.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 227,60,N'/upload/201210/20/small_201210201224125771.jpg',N'/upload/201210/20/201210201224125771.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 228,60,N'/upload/201210/20/small_201210201224139046.jpg',N'/upload/201210/20/201210201224139046.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 229,60,N'/upload/201210/20/small_201210201224156694.jpg',N'/upload/201210/20/201210201224156694.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 230,65,N'/upload/201210/20/small_201210201310122514.jpg',N'/upload/201210/20/201210201310122514.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 231,65,N'/upload/201210/20/small_201210201310515667.jpg',N'/upload/201210/20/201210201310515667.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 232,65,N'/upload/201210/20/small_201210201310565651.jpg',N'/upload/201210/20/201210201310565651.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 233,65,N'/upload/201210/20/small_201210201311019540.jpg',N'/upload/201210/20/201210201311019540.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 234,33,N'/upload/201210/20/small_201210201626385241.jpg',N'/upload/201210/20/201210201626385241.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 235,33,N'/upload/201210/20/small_201210201627050021.jpg',N'/upload/201210/20/201210201627050021.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 236,27,N'/upload/201210/20/small_201210201629191580.jpg',N'/upload/201210/20/201210201629191580.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 237,27,N'/upload/201210/20/small_201210201629310460.jpg',N'/upload/201210/20/201210201629310460.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 238,25,N'/upload/201210/20/small_201210201631561853.jpg',N'/upload/201210/20/201210201631561853.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 239,24,N'/upload/201210/20/small_201210201633344291.jpg',N'/upload/201210/20/201210201633344291.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 240,24,N'/upload/201210/20/small_201210201634082343.jpg',N'/upload/201210/20/201210201634082343.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 241,22,N'/upload/201210/20/small_201210201634592706.jpg',N'/upload/201210/20/201210201634592706.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 242,22,N'/upload/201210/20/small_201210201635017858.jpg',N'/upload/201210/20/201210201635017858.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 243,19,N'/upload/201210/20/small_201210201638036709.jpg',N'/upload/201210/20/201210201638036709.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 244,19,N'/upload/201210/20/small_201210201638083731.jpg',N'/upload/201210/20/201210201638083731.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 245,16,N'/upload/201210/20/small_201210201639428700.gif',N'/upload/201210/20/201210201639428700.gif',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 246,15,N'/upload/201210/20/small_201210201640588396.jpg',N'/upload/201210/20/201210201640588396.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 247,12,N'/upload/201210/20/small_201210201642313531.jpg',N'/upload/201210/20/201210201642313531.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 248,12,N'/upload/201210/20/small_201210201642542864.jpg',N'/upload/201210/20/201210201642542864.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 249,9,N'/upload/201210/20/small_201210201644176303.jpg',N'/upload/201210/20/201210201644176303.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 250,9,N'/upload/201210/20/small_201210201645070900.jpg',N'/upload/201210/20/201210201645070900.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 259,78,N'/upload/201210/20/small_201210202008489135.png',N'/upload/201210/20/201210202008489135.png',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 261,78,N'/upload/201210/20/small_201210202008521629.jpg',N'/upload/201210/20/201210202008521629.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 262,79,N'/upload/201210/20/small_201210202011372745.jpg',N'/upload/201210/20/201210202011372745.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 263,79,N'/upload/201210/20/small_201210202011413206.jpg',N'/upload/201210/20/201210202011413206.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 264,79,N'/upload/201210/20/small_201210202011460073.jpg',N'/upload/201210/20/201210202011460073.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 265,80,N'/upload/201210/20/small_201210202017022010.jpg',N'/upload/201210/20/201210202017022010.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 266,80,N'/upload/201210/20/small_201210202017031539.jpg',N'/upload/201210/20/201210202017031539.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 267,80,N'/upload/201210/20/small_201210202017050130.jpg',N'/upload/201210/20/201210202017050130.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 268,80,N'/upload/201210/20/small_201210202017064971.jpg',N'/upload/201210/20/201210202017064971.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 269,81,N'/upload/201210/20/small_201210202019286434.jpg',N'/upload/201210/20/201210202019286434.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 270,81,N'/upload/201210/20/small_201210202019304087.jpg',N'/upload/201210/20/201210202019304087.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 271,81,N'/upload/201210/20/small_201210202019318615.jpg',N'/upload/201210/20/201210202019318615.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 272,81,N'/upload/201210/20/small_201210202019336893.jpg',N'/upload/201210/20/201210202019336893.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 273,81,N'/upload/201210/20/small_201210202019352828.jpg',N'/upload/201210/20/201210202019352828.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 274,82,N'/upload/201210/20/small_201210202022443738.jpg',N'/upload/201210/20/201210202022443738.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 275,82,N'/upload/201210/20/small_201210202022462329.jpg',N'/upload/201210/20/201210202022462329.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 276,82,N'/upload/201210/20/small_201210202022480294.jpg',N'/upload/201210/20/201210202022480294.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 277,82,N'/upload/201210/20/small_201210202022497635.jpg',N'/upload/201210/20/201210202022497635.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 278,82,N'/upload/201210/20/small_201210202022516538.jpg',N'/upload/201210/20/201210202022516538.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 279,82,N'/upload/201210/20/small_201210202022530910.jpg',N'/upload/201210/20/201210202022530910.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 280,82,N'/upload/201210/20/small_201210202022548563.jpg',N'/upload/201210/20/201210202022548563.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 281,82,N'/upload/201210/20/small_201210202022568716.jpg',N'/upload/201210/20/201210202022568716.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 282,82,N'/upload/201210/20/small_201210202022583244.jpg',N'/upload/201210/20/201210202022583244.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 283,82,N'/upload/201210/20/small_201210202022599179.jpg',N'/upload/201210/20/201210202022599179.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 284,82,N'/upload/201210/20/small_201210202023017613.jpg',N'/upload/201210/20/201210202023017613.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 285,82,N'/upload/201210/20/small_201210202023034798.jpg',N'/upload/201210/20/201210202023034798.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 286,82,N'/upload/201210/20/small_201210202023050264.jpg',N'/upload/201210/20/201210202023050264.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 287,82,N'/upload/201210/20/small_201210202023071822.jpg',N'/upload/201210/20/201210202023071822.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 288,82,N'/upload/201210/20/small_201210202023086976.jpg',N'/upload/201210/20/201210202023086976.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 289,82,N'/upload/201210/20/small_201210202023102754.jpg',N'/upload/201210/20/201210202023102754.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 290,82,N'/upload/201210/20/small_201210202023118845.jpg',N'/upload/201210/20/201210202023118845.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 291,82,N'/upload/201210/20/small_201210202023133999.jpg',N'/upload/201210/20/201210202023133999.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 292,82,N'/upload/201210/20/small_201210202023156651.jpg',N'/upload/201210/20/201210202023156651.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 293,82,N'/upload/201210/20/small_201210202023181334.jpg',N'/upload/201210/20/201210202023181334.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 294,83,N'/upload/201210/20/small_201210202025549953.jpg',N'/upload/201210/20/201210202025549953.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 295,83,N'/upload/201210/20/small_201210202025566044.jpg',N'/upload/201210/20/201210202025566044.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 296,83,N'/upload/201210/20/small_201210202025578385.jpg',N'/upload/201210/20/201210202025578385.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 297,83,N'/upload/201210/20/small_201210202025594945.jpg',N'/upload/201210/20/201210202025594945.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 298,83,N'/upload/201210/20/small_201210202026047592.jpg',N'/upload/201210/20/201210202026047592.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 299,83,N'/upload/201210/20/small_201210202026076336.jpg',N'/upload/201210/20/201210202026076336.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 300,83,N'/upload/201210/20/small_201210202026088990.jpg',N'/upload/201210/20/201210202026088990.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 301,83,N'/upload/201210/20/small_201210202026121016.jpg',N'/upload/201210/20/201210202026121016.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 302,83,N'/upload/201210/20/small_201210202026136482.jpg',N'/upload/201210/20/201210202026136482.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 303,83,N'/upload/201210/20/small_201210202026152729.jpg',N'/upload/201210/20/201210202026152729.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 304,83,N'/upload/201210/20/small_201210202026169132.jpg',N'/upload/201210/20/201210202026169132.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 305,84,N'/upload/201210/20/small_201210202029231294.jpg',N'/upload/201210/20/201210202029231294.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 306,84,N'/upload/201210/20/small_201210202029278630.jpg',N'/upload/201210/20/201210202029278630.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 307,84,N'/upload/201210/20/small_201210202029321435.jpg',N'/upload/201210/20/201210202029321435.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 308,84,N'/upload/201210/20/small_201210202029363302.jpg',N'/upload/201210/20/201210202029363302.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 309,84,N'/upload/201210/20/small_201210202029406263.jpg',N'/upload/201210/20/201210202029406263.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 310,84,N'/upload/201210/20/small_201210202029425947.jpg',N'/upload/201210/20/201210202029425947.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 311,84,N'/upload/201210/20/small_201210202029455629.jpg',N'/upload/201210/20/201210202029455629.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 312,84,N'/upload/201210/20/small_201210202029477969.jpg',N'/upload/201210/20/201210202029477969.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 313,84,N'/upload/201210/20/small_201210202029492185.jpg',N'/upload/201210/20/201210202029492185.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 314,84,N'/upload/201210/20/small_201210202029541863.jpg',N'/upload/201210/20/201210202029541863.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 315,84,N'/upload/201210/20/small_201210202029552486.jpg',N'/upload/201210/20/201210202029552486.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 316,84,N'/upload/201210/20/small_201210202029597790.jpg',N'/upload/201210/20/201210202029597790.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 317,85,N'/upload/201210/20/small_201210202032560904.jpg',N'/upload/201210/20/201210202032560904.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 318,85,N'/upload/201210/20/small_201210202032574964.jpg',N'/upload/201210/20/201210202032574964.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 319,85,N'/upload/201210/20/small_201210202032586837.jpg',N'/upload/201210/20/201210202032586837.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 320,85,N'/upload/201210/20/small_201210202033003865.jpg',N'/upload/201210/20/201210202033003865.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 321,86,N'/upload/201210/20/small_201210202034490538.jpg',N'/upload/201210/20/201210202034490538.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 322,86,N'/upload/201210/20/small_201210202034500224.jpg',N'/upload/201210/20/201210202034500224.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 323,86,N'/upload/201210/20/small_201210202034511003.jpg',N'/upload/201210/20/201210202034511003.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 324,86,N'/upload/201210/20/small_201210202034519283.jpg',N'/upload/201210/20/201210202034519283.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 325,86,N'/upload/201210/20/small_201210202034530062.jpg',N'/upload/201210/20/201210202034530062.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 326,86,N'/upload/201210/20/small_201210202034541623.jpg',N'/upload/201210/20/201210202034541623.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 327,86,N'/upload/201210/20/small_201210202034549590.jpg',N'/upload/201210/20/201210202034549590.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 328,86,N'/upload/201210/20/small_201210202034560213.jpg',N'/upload/201210/20/201210202034560213.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 329,87,N'/upload/201210/20/small_201210202038404022.jpg',N'/upload/201210/20/201210202038404022.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 330,87,N'/upload/201210/20/small_201210202038418082.jpg',N'/upload/201210/20/201210202038418082.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 331,87,N'/upload/201210/20/small_201210202038436829.jpg',N'/upload/201210/20/201210202038436829.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 332,87,N'/upload/201210/20/small_201210202038456044.jpg',N'/upload/201210/20/201210202038456044.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 333,88,N'/upload/201210/20/small_201210202042487638.jpg',N'/upload/201210/20/201210202042487638.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 334,88,N'/upload/201210/20/small_201210202042513728.jpg',N'/upload/201210/20/201210202042513728.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 335,88,N'/upload/201210/20/small_201210202042531693.jpg',N'/upload/201210/20/201210202042531693.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 336,88,N'/upload/201210/20/small_201210202042555907.jpg',N'/upload/201210/20/201210202042555907.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 337,88,N'/upload/201210/20/small_201210202042574342.jpg',N'/upload/201210/20/201210202042574342.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 338,89,N'/upload/201210/20/small_201210202045294382.jpg',N'/upload/201210/20/201210202045294382.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 339,89,N'/upload/201210/20/small_201210202045312972.jpg',N'/upload/201210/20/201210202045312972.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 340,89,N'/upload/201210/20/small_201210202046252565.jpg',N'/upload/201210/20/201210202046252565.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 341,89,N'/upload/201210/20/small_201210202046516424.jpg',N'/upload/201210/20/201210202046516424.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 342,89,N'/upload/201210/20/small_201210202046555479.jpg',N'/upload/201210/20/201210202046555479.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 343,90,N'/upload/201210/20/small_201210202050580682.jpg',N'/upload/201210/20/201210202050580682.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 344,90,N'/upload/201210/20/small_201210202050593336.jpg',N'/upload/201210/20/201210202050593336.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 345,90,N'/upload/201210/20/small_201210202051027705.jpg',N'/upload/201210/20/201210202051027705.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 346,90,N'/upload/201210/20/small_201210202051054575.jpg',N'/upload/201210/20/201210202051054575.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 347,91,N'/upload/201210/20/small_201210202053401186.jpg',N'/upload/201210/20/201210202053401186.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 348,91,N'/upload/201210/20/small_201210202053439773.jpg',N'/upload/201210/20/201210202053439773.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 349,91,N'/upload/201210/20/small_201210202053463363.jpg',N'/upload/201210/20/201210202053463363.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 350,91,N'/upload/201210/20/small_201210202053486484.jpg',N'/upload/201210/20/201210202053486484.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 351,92,N'/upload/201210/20/small_201210202055147277.jpg',N'/upload/201210/20/201210202055147277.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 352,92,N'/upload/201210/20/small_201210202055186489.jpg',N'/upload/201210/20/201210202055186489.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 353,92,N'/upload/201210/20/small_201210202055233668.jpg',N'/upload/201210/20/201210202055233668.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 354,93,N'/upload/201210/20/small_201210202057530604.jpg',N'/upload/201210/20/201210202057530604.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 355,93,N'/upload/201210/20/small_201210202057547476.jpg',N'/upload/201210/20/201210202057547476.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 356,93,N'/upload/201210/20/small_201210202057577471.jpg',N'/upload/201210/20/201210202057577471.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 357,93,N'/upload/201210/20/small_201210202058004185.jpg',N'/upload/201210/20/201210202058004185.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 358,94,N'/upload/201210/20/small_201210202059284192.jpg',N'/upload/201210/20/201210202059284192.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 359,94,N'/upload/201210/20/small_201210202059320905.jpg',N'/upload/201210/20/201210202059320905.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 360,95,N'/upload/201210/20/small_201210202100341426.jpg',N'/upload/201210/20/201210202100341426.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 361,95,N'/upload/201210/20/small_201210202100369234.jpg',N'/upload/201210/20/201210202100369234.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 362,95,N'/upload/201210/20/small_201210202100393136.jpg',N'/upload/201210/20/201210202100393136.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 363,95,N'/upload/201210/20/small_201210202100590760.jpg',N'/upload/201210/20/201210202100590760.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 364,96,N'/upload/201210/20/small_201210202102149384.jpg',N'/upload/201210/20/201210202102149384.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 365,96,N'/upload/201210/20/small_201210202102167818.jpg',N'/upload/201210/20/201210202102167818.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 366,96,N'/upload/201210/20/small_201210202102187971.jpg',N'/upload/201210/20/201210202102187971.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 367,96,N'/upload/201210/20/small_201210202102226714.jpg',N'/upload/201210/20/201210202102226714.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 368,96,N'/upload/201210/20/small_201210202102268426.jpg',N'/upload/201210/20/201210202102268426.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 369,96,N'/upload/201210/20/small_201210202102305920.jpg',N'/upload/201210/20/201210202102305920.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 370,97,N'/upload/201210/20/small_201210202104380559.jpg',N'/upload/201210/20/201210202104380559.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 371,97,N'/upload/201210/20/small_201210202104394619.jpg',N'/upload/201210/20/201210202104394619.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 372,97,N'/upload/201210/20/small_201210202104408054.jpg',N'/upload/201210/20/201210202104408054.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 374,26,N'/upload/201210/20/small_201210202310110337.jpg',N'/upload/201210/20/201210202310110337.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 375,28,N'/upload/201210/20/small_201210202355364762.jpg',N'/upload/201210/20/201210202355364762.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 376,30,N'/upload/201210/20/small_201210202357569149.jpg',N'/upload/201210/20/201210202357569149.jpg',N'2013/12/4 16:00:38')
INSERT [mfp_article_albums] ([id],[article_id],[thumb_path],[original_path],[add_time]) VALUES ( 377,40,N'/upload/201210/21/small_201210210001069890.jpg',N'/upload/201210/21/201210210001069890.jpg',N'2013/12/4 16:00:38')

SET IDENTITY_INSERT [mfp_article_albums] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_attach]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_attach]

CREATE TABLE [mfp_article_attach] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[article_id] [int]  NULL DEFAULT (0),
[file_name] [nvarchar]  (100) NULL DEFAULT (''),
[file_path] [nvarchar]  (255) NULL DEFAULT (''),
[file_size] [int]  NULL DEFAULT (0),
[file_ext] [nvarchar]  (20) NULL DEFAULT (''),
[down_num] [int]  NULL DEFAULT (0),
[point] [int]  NULL DEFAULT (0),
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_article_attach] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article_attach] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_article_attach] ON

INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 5,98,N'16PNG小图标.rar',N'/upload/201210/21/201210211433267781.rar',42,N'rar',0,1,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 7,99,N'raster-32x32.zip',N'/upload/201210/22/201210221635237349.zip',56,N'zip',15,0,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 8,100,N'pinterest_front.png',N'/upload/201210/22/201210221641014831.png',95,N'png',11,0,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 9,100,N'ups_shipping.png',N'/upload/201210/22/201210221641088581.png',109,N'png',5,0,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 10,101,N'国际信用卡PNG图标.zip',N'/upload/201210/22/201210221648156687.zip',305,N'zip',1,2,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 11,102,N'淘宝商城多格jQuery焦点图.zip',N'/upload/201210/23/201210231346099468.zip',473,N'zip',3,1,N'2013/12/4 16:00:38')

SET IDENTITY_INSERT [mfp_article_attach] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_attribute_field]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_attribute_field]

CREATE TABLE [mfp_article_attribute_field] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[name] [nvarchar]  (100) NULL,
[title] [nvarchar]  (100) NULL DEFAULT (''),
[control_type] [nvarchar]  (50) NULL,
[data_type] [nvarchar]  (50) NULL,
[data_length] [int]  NULL DEFAULT (0),
[data_place] [tinyint]  NULL DEFAULT (0),
[item_option] [ntext]  NULL DEFAULT (''),
[default_value] [ntext]  NULL DEFAULT (''),
[is_required] [tinyint]  NULL DEFAULT (0),
[is_password] [tinyint]  NULL DEFAULT (0),
[is_html] [tinyint]  NULL DEFAULT (0),
[editor_type] [tinyint]  NULL DEFAULT (0),
[valid_tip_msg] [nvarchar]  (255) NULL DEFAULT (''),
[valid_error_msg] [nvarchar]  (255) NULL DEFAULT (''),
[valid_pattern] [nvarchar]  (500) NULL DEFAULT (''),
[sort_id] [int]  NULL DEFAULT (99),
[is_sys] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_article_attribute_field] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article_attribute_field] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_article_attribute_field] ON

INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 1,N'sub_title',N'副标题',N'single-text',N'nvarchar(255)',255,0,0,0,0,0,N'可为空，最多255个字符',N's0-255',99,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 2,N'source',N'信息来源',N'single-text',N'nvarchar(50)',50,0,N'本站',0,0,0,0,N'非必填，最多50个字符',N's0-50',100,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 3,N'author',N'文章作者',N'single-text',N'nvarchar(50)',50,0,0,0,0,0,N'非必填，最多50个字符',N's0-50',101,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 4,N'goods_no',N'商品货号',N'single-text',N'nvarchar(100)',100,0,0,0,0,0,N'允许字母、下划线，100个字符内',N's0-100',103,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 5,N'stock_quantity',N'库存数量',N'number',N'int',0,0,N'0',1,0,0,0,N'库存数量为0时显示缺货状态',N'n',104,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 6,N'market_price',N'市场价格',N'number',N'decimal(9,2)',0,2,N'0',0,0,0,0,N'市场的参与价格，不参与计算',N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/',105,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 7,N'sell_price',N'销售价格',N'number',N'decimal(9,2)',0,2,N'0',1,0,0,0,N'*出售的实际交易价格',N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/',106,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 8,N'point',N'交易积分',N'number',N'int',0,0,N'0',0,0,0,0,N'*正为返还，负为消费积分',N'n',107,1)

SET IDENTITY_INSERT [mfp_article_attribute_field] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_attribute_value]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_attribute_value]

CREATE TABLE [mfp_article_attribute_value] (
[article_id] [int]  NOT NULL,
[sub_title] [nvarchar]  (255) NULL,
[source] [nvarchar]  (100) NULL DEFAULT (''),
[author] [nvarchar]  (50) NULL DEFAULT (''),
[goods_no] [nvarchar]  (100) NULL DEFAULT (''),
[stock_quantity] [int]  NULL DEFAULT (0),
[market_price] [decimal]  (9,2) NULL DEFAULT (0),
[sell_price] [decimal]  (9,2) NULL DEFAULT (0),
[point] [int]  NULL DEFAULT (0))

ALTER TABLE [mfp_article_attribute_value] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article_attribute_value] PRIMARY KEY  NONCLUSTERED ( [article_id] )
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 3,0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 4,0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 5,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 6,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 7,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 8,N'本站',N'Aitkon',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 9,N'694574',100,1500.00,1199.00,11)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 10,N'742173',100,1999.00,1999.00,20)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 11,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 12,N'721270',100,2199.00,2199.00,21)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 13,N'584878',100,1388.00,1388.00,13)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 14,N'598211',100,1299.00,1299.00,13)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 15,N'727948',100,35.00,35.00,4)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 16,N'678598',100,79.00,79.00,8)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 17,N'700374',100,3400.00,3099.00,30)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 18,N'685858',100,4200.00,3599.00,35)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 19,N'700358',100,5500.00,4999.00,50)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 20,N'664311',100,6500.00,5999.00,60)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 21,N'1100001',1000,99.00,79.00,10)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 22,N'526455',100,2300.00,1899.00,23)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 23,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 24,N'703026',100,1299.00,1299.00,13)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 25,N'455456',100,99.00,69.00,7)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 26,N'1000002',100,4488.00,4388.00,200)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 27,N'782595',100,995.00,995.00,10)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 28,N'10000004',500,2499.00,2299.00,130)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 29,N'10000005',1000,1499.00,1450.00,80)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 30,N'1454006',450,10599.00,10399.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 31,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 32,N'10054568',100,4200.00,3870.00,200)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 33,N'754893',100,2880.00,2880.00,29)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 34,N'16788780',80,5688.00,5308.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 35,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 36,N'15678957',100,3288.00,3179.00,105)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 37,N'1560004',250,3690.00,3580.00,270)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 38,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 39,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 40,N'1450004',300,3699.00,3580.00,200)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 41,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 42,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 43,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 44,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 45,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 46,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 47,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 48,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 49,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 50,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 51,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 52,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 53,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 54,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 55,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 56,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 57,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 58,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 59,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 60,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 61,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 62,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 63,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 64,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 65,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 66,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 67,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 68,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 69,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 70,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 71,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 72,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 73,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 74,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 75,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 76,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 77,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 78,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 79,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 80,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 81,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 82,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 83,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 84,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 85,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 86,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 87,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 88,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 89,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 90,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 91,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 92,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 93,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 94,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 95,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 96,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 97,N'本站',N'管理员',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 98,0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 99,0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 100,0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 101,0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 102,0,0.00,0.00,0)
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_category]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_category]

CREATE TABLE [mfp_article_category] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[channel_id] [int]  NOT NULL,
[title] [nvarchar]  (100) NULL,
[call_index] [nvarchar]  (50) NULL DEFAULT (''),
[parent_id] [int]  NULL DEFAULT (0),
[class_list] [nvarchar]  (500) NULL,
[class_layer] [int]  NULL DEFAULT (0),
[sort_id] [int]  NULL DEFAULT (99),
[link_url] [nvarchar]  (255) NULL DEFAULT (''),
[img_url] [nvarchar]  (255) NULL DEFAULT (''),
[content] [ntext]  NULL,
[seo_title] [nvarchar]  (255) NULL DEFAULT (''),
[seo_keywords] [nvarchar]  (255) NULL DEFAULT (''),
[seo_description] [nvarchar]  (255) NULL DEFAULT (''))

ALTER TABLE [mfp_article_category] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article_category] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_article_category] ON

INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 1,1,N'废品新闻',N'feipinxinwen',0,N',1,',1,99)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 2,2,N'手机数码',0,N',2,',1,99,N'手机数码')
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 3,1,N'网络动态',N'wangluodongtai',1,N',1,3,',2,100)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 4,1,N'行业资讯',N'xingyezixun',1,N',1,4,',2,101)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 5,1,N'最新法规',N'zuixinfagui',1,N',1,5,',2,102)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 6,1,N'回收市场',N'huishoushichang',0,N',6,',1,100)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 7,1,N'废旧金属',N'feijiujinshu',6,N',6,7,',2,99)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 8,1,N'工业处理',N'gongyechuli',6,N',6,8,',2,100)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 9,1,N'电子电器',N'dianzidianqi',6,N',6,9,',2,101)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 10,1,N'二次加工',N'ercijiagong',6,N',6,10,',2,102)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 11,2,N'智能手机',2,N',2,11,',2,99,N'手机通讯')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 12,2,N'数码相机',2,N',2,12,',2,100,N'数码相机')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 13,2,N'存储卡',2,N',2,13,',2,101,N'存储卡')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 14,2,N'电脑办公',0,N',14,',1,100,N'电脑办公')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 15,2,N'笔记本',14,N',14,15,',2,99,N'笔记本')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 16,2,N'超极本',14,N',14,16,',2,100,N'超极本')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 17,2,N'平板电脑',14,N',14,17,',2,101,N'平板电脑')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 18,2,N'外设产品',14,N',14,18,',2,102,N'外设产品')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 19,2,N'家用电器',0,N',19,',1,101,N'家用电器')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 20,2,N'平板电视',19,N',19,20,',2,99,N'平板电视')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 21,2,N'空调',19,N',19,21,',2,101,N'空调')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 22,2,N'冰箱',19,N',19,22,',2,102,N'冰箱')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 23,2,N'洗衣机',19,N',19,23,',2,103,N'洗衣机')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 24,2,N'烟机/灶具',19,N',19,24,',2,104,N'烟机/灶具')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 25,3,N'3C数码',0,N',25,',1,99,N'3C数码')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 26,3,N'家居生活',0,N',26,',1,100,N'家居生活')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 27,3,N'旅游摄影',0,N',27,',1,101)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 28,3,N'气质美女',0,N',28,',1,102,N'气质美女')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 29,3,N'趣味休闲',0,N',29,',1,103)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 30,4,N'图标素材',0,N',30,',1,99,N'图标素材')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 31,4,N'jquery插件',0,N',31,',1,99,N'jquery插件')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 32,5,N'公司介绍',0,N',32,',1,99,N'公司介绍')

SET IDENTITY_INSERT [mfp_article_category] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_comment]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_comment]

CREATE TABLE [mfp_article_comment] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[channel_id] [int]  NULL DEFAULT (0),
[article_id] [int]  NULL DEFAULT (0),
[parent_id] [int]  NULL DEFAULT (0),
[user_id] [int]  NULL DEFAULT (0),
[user_name] [nvarchar]  (100) NULL DEFAULT (''),
[user_ip] [nvarchar]  (255) NULL,
[content] [ntext]  NULL,
[is_lock] [tinyint]  NULL DEFAULT (0),
[add_time] [datetime]  NULL DEFAULT (getdate()),
[is_reply] [tinyint]  NULL DEFAULT (0),
[reply_content] [ntext]  NULL,
[reply_time] [datetime]  NULL)

ALTER TABLE [mfp_article_comment] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_article_comment] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_article_comment] ON


SET IDENTITY_INSERT [mfp_article_comment] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_article_images_size]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_article_images_size]

CREATE TABLE [mfp_article_images_size] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[category_id] [int]  NULL,
[height] [nvarchar]  (50) NULL,
[width] [nvarchar]  (50) NULL)

SET IDENTITY_INSERT [mfp_article_images_size] ON


SET IDENTITY_INSERT [mfp_article_images_size] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_channel]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_channel]

CREATE TABLE [mfp_channel] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[category_id] [int]  NULL DEFAULT (0),
[name] [varchar]  (50) NULL DEFAULT (''),
[title] [varchar]  (100) NULL DEFAULT (''),
[is_albums] [tinyint]  NULL DEFAULT (0),
[is_attach] [tinyint]  NULL DEFAULT (0),
[is_group_price] [tinyint]  NULL DEFAULT (0),
[page_size] [int]  NULL DEFAULT (0),
[sort_id] [int]  NULL DEFAULT (99))

ALTER TABLE [mfp_channel] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_channel] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_channel] ON

INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 1,1,N'news',N'回收新闻',0,0,0,12,99)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 2,1,N'goods',N'热门商品',1,0,1,12,100)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 3,1,N'photo',N'信息发布',1,0,0,12,101)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 4,1,N'down',N'市场行情',0,1,0,12,102)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 5,1,N'content',N'网站介绍',0,0,0,12,103)

SET IDENTITY_INSERT [mfp_channel] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_channel_category]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_channel_category]

CREATE TABLE [mfp_channel_category] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL DEFAULT (''),
[build_path] [nvarchar]  (100) NULL DEFAULT (''),
[templet_path] [nvarchar]  (100) NULL DEFAULT (''),
[domain] [nvarchar]  (255) NULL DEFAULT (''),
[is_default] [tinyint]  NULL DEFAULT (0),
[sort_id] [int]  NULL DEFAULT (99))

ALTER TABLE [mfp_channel_category] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_channel_category] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_channel_category] ON

INSERT [mfp_channel_category] ([id],[title],[build_path],[templet_path],[is_default],[sort_id]) VALUES ( 1,N'默认站点',N'main',N'green',1,99)

SET IDENTITY_INSERT [mfp_channel_category] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_channel_field]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_channel_field]

CREATE TABLE [mfp_channel_field] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[channel_id] [int]  NOT NULL,
[field_id] [int]  NOT NULL)

ALTER TABLE [mfp_channel_field] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_channel_field] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_channel_field] ON

INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 1,1,2)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 2,1,3)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 3,2,1)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 4,2,4)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 5,2,5)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 6,2,6)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 7,2,7)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 8,2,8)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 9,3,2)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 10,3,3)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 11,4,2)
INSERT [mfp_channel_field] ([id],[channel_id],[field_id]) VALUES ( 12,4,3)

SET IDENTITY_INSERT [mfp_channel_field] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_express]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_express]

CREATE TABLE [mfp_express] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL,
[express_code] [nvarchar]  (100) NULL DEFAULT (''),
[express_fee] [decimal]  (9,2) NULL DEFAULT (0),
[website] [nvarchar]  (255) NULL DEFAULT (''),
[remark] [ntext]  NULL DEFAULT (''),
[sort_id] [int]  NULL DEFAULT (99),
[is_lock] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_express] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_express] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_express] ON

INSERT [mfp_express] ([id],[title],[express_code],[express_fee],[website],[remark],[sort_id],[is_lock]) VALUES ( 1,N'顺丰快递',N'shunfeng',20.00,N'http://www.sf-express.com',N'顺丰快递<br />换行啦！',99,0)
INSERT [mfp_express] ([id],[title],[express_code],[express_fee],[website],[remark],[sort_id],[is_lock]) VALUES ( 2,N'韵达快递',N'yunda',14.00,N'http://www.yundaex.com',N'韵达快递',100,0)

SET IDENTITY_INSERT [mfp_express] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_feedback]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_feedback]

CREATE TABLE [mfp_feedback] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL,
[content] [ntext]  NULL,
[user_name] [nvarchar]  (50) NULL,
[user_tel] [nvarchar]  (30) NULL,
[user_qq] [nvarchar]  (30) NULL,
[user_email] [nvarchar]  (100) NULL,
[add_time] [datetime]  NOT NULL DEFAULT (getdate()),
[reply_content] [ntext]  NULL DEFAULT (''),
[reply_time] [datetime]  NULL,
[is_lock] [tinyint]  NOT NULL DEFAULT (0))

ALTER TABLE [mfp_feedback] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_feedback] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_feedback] ON

INSERT [mfp_feedback] ([id],[title],[content],[user_name],[user_tel],[user_qq],[user_email],[add_time],[is_lock]) VALUES ( 1,N'第一条留言非我莫属啦！',N'看来第一条留言非我莫属啦！<br />沙发！！！',N'一些事情',N'13800138000',N'932235529',N'joxie@qq.com',N'2012/11/21 17:28:58',0)
INSERT [mfp_feedback] ([id],[title],[content],[user_name],[add_time],[is_lock]) VALUES ( 2,N'向前排靠齐',N'能有些表情多好。',N'test',N'2012/11/22 7:51:12',1)

SET IDENTITY_INSERT [mfp_feedback] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_link]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_link]

CREATE TABLE [mfp_link] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (255) NULL,
[user_name] [nvarchar]  (50) NULL,
[user_tel] [nvarchar]  (20) NULL,
[email] [nvarchar]  (50) NULL,
[site_url] [nvarchar]  (255) NULL,
[img_url] [nvarchar]  (255) NULL,
[is_image] [int]  NOT NULL DEFAULT (0),
[sort_id] [int]  NOT NULL DEFAULT (99),
[is_red] [tinyint]  NOT NULL DEFAULT (0),
[is_lock] [tinyint]  NOT NULL,
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_link] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_link] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_link] ON

INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 1,N'搜狐IT',N'http://it.sohu.com',0,99,1,0,N'2012/11/21 16:52:46')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 2,N'百度贴吧',N'http://tieba.baidu.com',0,99,1,0,N'2012/11/21 16:53:13')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 3,N'中华网科技',N'http://tech.china.com',0,99,1,0,N'2012/11/21 16:53:34')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 4,N'鞭牛士',N'http://www.bianews.com',0,99,1,0,N'2012/11/21 16:54:02')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 5,N'中国IT实验室',N'http://www.chinaitlab.com',0,99,1,0,N'2012/11/21 16:54:30')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 6,N'科技讯',N'http://www.kejixun.com',0,99,1,0,N'2012/11/21 16:54:48')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 7,N'牛华网',N'http://www.newhua.com',0,99,1,0,N'2012/11/21 16:55:13')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 8,N'淘宝数码',N'http://it.taobao.com',0,99,1,0,N'2012/11/21 16:55:39')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 9,N'手机之家',N'http://www.imobile.com.cn',0,99,1,0,N'2012/11/21 16:55:58')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 10,N'Discuz社区',N'http://www.discuz.net',0,99,1,0,N'2012/11/21 16:56:29')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 11,N'IT之家',N'http://www.ithome.com',0,99,1,0,N'2012/11/21 16:56:59')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 12,N'移动站长',N'www.mymzz.com',0,99,1,0,N'2012/11/21 16:57:24')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 13,N'ckplayer视频播放器',N'http://www.ckplayer.com',0,99,1,0,N'2012/11/21 16:58:40')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 14,N'雨林木风',N'http://www.ylmf.net',0,99,1,0,N'2012/11/21 16:59:13')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 15,N'麻省理工科技创业',N'http://www.mittrchinese.com',0,99,1,0,N'2012/11/21 16:59:41')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 16,N'计世网',N'http://www.ccw.com.cn',0,99,1,0,N'2012/11/21 16:59:59')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 17,N'IT茶馆',N'http://www.itchaguan.com',0,99,1,0,N'2012/11/21 17:00:33')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 18,N'酷6科技',N'http://tech.ku6.com',0,99,1,0,N'2012/11/21 17:00:52')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 19,N'雷锋网',N'http://www.leiphone.com',0,99,1,0,N'2012/11/21 17:01:11')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 20,N'电玩巴士',N'http://www.tgbus.com',0,99,1,0,N'2012/11/21 17:01:30')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 21,N'站长网',N'http://www.admin5.com',0,99,1,0,N'2012/11/21 17:02:02')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 22,N'站长之家',N'http://www.chinaz.com',0,99,1,0,N'2012/11/21 17:02:21')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 23,N'驱动之家',N'http://www.mydrivers.com',0,99,1,0,N'2012/11/21 17:02:39')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 24,N'驱动人生',N'http://www.160.com',0,99,1,0,N'2012/11/21 17:02:56')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 25,N'铁血军事',N'http://www.tiexue.net',0,99,1,0,N'2012/11/21 17:03:14')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 26,N'动软卓越',N'http://www.maticsoft.com',N'http://www.maticsoft.com/images/logo/logo12.gif',1,99,1,0,N'2012/11/21 17:04:07')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 27,N'站长中国',N'http://www.chinaz.com',N'http://www.chinaz.com/images/chinaz.gif',1,99,1,0,N'2012/11/21 17:04:57')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 28,N'51aspx',N'http://www.51aspx.com',N'http://www.51aspx.com/logo_88x31.gif',1,99,1,0,N'2012/11/21 17:05:23')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 29,N'UI制造者',N'http://www.uimaker.com',N'http://www.uimaker.com/templets/uimaker/images/uimakerlogo.gif',1,99,1,0,N'2012/11/21 17:06:05')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 30,N'财付通',N'http://www.tenpay.com',N'http://www.it134.cn/it134_old2/UpLoadFiles/image/links/2010071420394503.jpg',1,99,1,0,N'2012/11/21 17:08:07')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 31,N'支付宝',N'http://www.alipay.com',N'http://www.dtcms.net/it134_old2/UpLoadFiles/20110509/2011050915104673.jpg',1,99,1,0,N'2012/11/21 17:08:55')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 32,N'超酷网页视频播放器',N'http://www.ckplayer.com',N'http://www.ckplayer.com/images/logo_88-31.jpg',1,99,1,0,N'2012/11/21 17:09:40')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 33,N'读科技',N'http://www.dukeji.com',N'http://www.dukeji.com/Content/themes/base/CMS/images/logo.jpg',1,99,1,0,N'2012/11/21 17:11:54')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 34,N'jquery',N'http://www.jquery.com',N'http://www.it134.cn/it134_old2/UpLoadFiles/image/links/jquery.gif',1,99,1,0,N'2012/11/21 17:20:07')

SET IDENTITY_INSERT [mfp_link] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_mail_template]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_mail_template]

CREATE TABLE [mfp_mail_template] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL,
[call_index] [nvarchar]  (50) NULL,
[maill_title] [nvarchar]  (100) NULL,
[content] [ntext]  NULL,
[is_sys] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_mail_template] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_mail_template] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_mail_template] ON

INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 1,N'会员注册链接邮件',N'registerlink',N'新用户注册链接(请勿回复此邮件)',N'<p>
	欢迎您成为{webname}会员用户，请点击如下的网址继续注册：
</p>
<p>
	<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 2,N'注册激活账户邮件',N'regverify',N'激活注册账户(请勿回复此邮件)',N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 3,N'用户取回密码',N'getpassword',N'找回密码提示(请勿回复此邮件)',N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 4,N'欢迎新用户邮件',N'welcomemsg',N'欢迎新用户(请勿回复此邮件)',N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 5,N'订单确认通知',N'order_confirm',N'订单确认通知',N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 6,N'订单发货通知',N'order_express',N'订单发货通知',N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 7,N'订单完成通知',N'order_complete',N'订单完成通知',N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)

SET IDENTITY_INSERT [mfp_mail_template] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_manager]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_manager]

CREATE TABLE [mfp_manager] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[role_id] [int]  NOT NULL,
[role_type] [int]  NULL DEFAULT (2),
[user_name] [nvarchar]  (100) NULL,
[password] [nvarchar]  (100) NULL,
[salt] [nvarchar]  (20) NULL,
[real_name] [nvarchar]  (50) NULL DEFAULT (''),
[telephone] [nvarchar]  (30) NULL DEFAULT (''),
[email] [nvarchar]  (30) NULL DEFAULT (''),
[is_lock] [int]  NULL DEFAULT (0),
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_manager] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_manager] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_manager] ON

INSERT [mfp_manager] ([id],[role_id],[role_type],[user_name],[password],[salt],[real_name],[telephone],[email],[is_lock],[add_time]) VALUES ( 1,1,1,N'admin',N'BB59946C93C0DEE8082F292B3A0FC7FF',N'28LH48',N'超级管理员',N'13800138000',N'info@dtcms.net',0,N'2013/12/4 1:53:36')

SET IDENTITY_INSERT [mfp_manager] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_manager_log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_manager_log]

CREATE TABLE [mfp_manager_log] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[user_id] [int]  NULL,
[user_name] [nvarchar]  (100) NULL,
[action_type] [nvarchar]  (100) NULL,
[remark] [nvarchar]  (255) NULL,
[user_ip] [nvarchar]  (30) NULL,
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_manager_log] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_manager_log] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_manager_log] ON

INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 1,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/19 10:20:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 2,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/19 11:24:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 3,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/19 11:40:08')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 4,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/19 16:00:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 5,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 9:33:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 6,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 9:41:49')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 7,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 10:23:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 8,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 10:27:18')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 9,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 10:54:22')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 10,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 10:59:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 11,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/20 17:44:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 12,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/22 10:06:30')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 13,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/22 11:26:50')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 14,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/23 17:28:35')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 15,1,N'admin',N'Add',N'修改导航信息:URL配置',N'127.0.0.1',N'2015/1/23 17:39:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 16,1,N'admin',N'Add',N'修改导航信息:扩展字段',N'127.0.0.1',N'2015/1/23 17:40:31')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 17,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 9:25:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 18,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/1/29 9:25:59')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 19,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 9:53:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 20,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 10:24:33')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 21,1,N'admin',N'Edit',N'修改URL配置信息:index',N'127.0.0.1',N'2015/1/29 10:45:39')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 22,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/1/29 10:47:00')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 23,1,N'admin',N'Edit',N'修改管理角色:超级管理组',N'127.0.0.1',N'2015/1/29 10:49:21')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 24,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 11:06:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 25,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 11:16:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 26,1,N'admin',N'Edit',N'修改URL配置信息:index',N'127.0.0.1',N'2015/1/29 11:18:17')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 27,1,N'admin',N'Edit',N'修改URL配置信息:index',N'127.0.0.1',N'2015/1/29 11:25:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 28,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/29 11:59:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 29,1,N'admin',N'Delete',N'删除模板文件，模板:green',N'127.0.0.1',N'2015/1/29 12:06:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 30,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/29 12:26:49')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 31,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/29 12:31:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 32,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/29 12:52:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 33,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 14:57:28')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 34,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/29 16:35:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 35,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/29 16:38:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 36,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 9:33:28')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 37,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 9:33:37')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 38,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 9:34:23')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 39,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 9:38:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 40,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/1/30 9:39:07')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 41,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 9:39:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 42,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/1/30 9:40:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 43,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 10:08:15')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 44,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 10:12:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 45,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 10:20:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 46,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/1/30 10:20:29')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 47,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 11:00:01')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 48,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/1/30 11:35:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 49,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/1/30 11:36:22')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 50,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/1/30 11:37:34')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 51,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/1/30 11:45:20')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 52,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 11:49:51')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 53,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 11:52:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 54,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 11:55:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 55,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/1/30 11:58:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 56,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 11:58:42')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 57,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/1/30 11:59:16')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 58,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/1/30 12:04:32')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 59,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 12:05:21')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 60,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/1/30 15:33:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 61,1,N'admin',N'Edit',N'修改news频道栏目分类:业界资讯',N'127.0.0.1',N'2015/1/30 15:34:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 62,1,N'admin',N'Edit',N'修改news频道栏目分类:行业资讯',N'127.0.0.1',N'2015/1/30 15:34:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 63,1,N'admin',N'Edit',N'修改news频道栏目分类:废品新闻',N'127.0.0.1',N'2015/1/30 15:35:19')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 64,1,N'admin',N'Edit',N'修改news频道栏目分类:回收市场',N'127.0.0.1',N'2015/1/30 15:36:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 65,1,N'admin',N'Edit',N'修改news频道栏目分类:网络新闻',N'127.0.0.1',N'2015/1/30 15:43:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 66,1,N'admin',N'Edit',N'修改news频道栏目分类:网络动态',N'127.0.0.1',N'2015/1/30 15:44:00')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 67,1,N'admin',N'Edit',N'修改news频道栏目分类:行业资讯',N'127.0.0.1',N'2015/1/30 15:44:17')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 68,1,N'admin',N'Edit',N'修改news频道栏目分类:最新法规',N'127.0.0.1',N'2015/1/30 15:44:50')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 69,1,N'admin',N'Edit',N'修改news频道栏目分类:废旧金属',N'127.0.0.1',N'2015/1/30 15:45:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 73,1,N'admin',N'Edit',N'修改news频道内容:上岗半月 “巨无霸”吞10吨垃圾',N'127.0.0.1',N'2015/1/30 16:07:43')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 74,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/2 16:59:11')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 70,1,N'admin',N'Edit',N'修改news频道栏目分类:工业处理',N'127.0.0.1',N'2015/1/30 15:46:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 71,1,N'admin',N'Edit',N'修改news频道栏目分类:电子电器',N'127.0.0.1',N'2015/1/30 15:46:42')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 72,1,N'admin',N'Edit',N'修改news频道栏目分类:二次加工',N'127.0.0.1',N'2015/1/30 15:48:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 75,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 16:34:22')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 76,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:11:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 77,1,N'admin',N'Add',N'添加频道买家信息',N'127.0.0.1',N'2015/2/3 17:17:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 78,1,N'admin',N'Edit',N'修改频道买家信息',N'127.0.0.1',N'2015/2/3 17:18:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 79,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/2/3 17:20:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 80,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:27:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 81,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:28:17')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 82,1,N'admin',N'Delete',N'删除频道成功1条，失败0条',N'127.0.0.1',N'2015/2/3 17:29:09')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 83,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:29:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 84,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:30:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 85,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:35:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 86,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:38:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 87,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/3 17:38:59')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 88,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 17:46:08')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 89,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/3 17:50:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 90,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/3 17:50:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 91,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/3 18:04:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 92,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/3 18:04:19')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 93,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 13:34:51')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 94,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/4 13:37:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 95,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/4 13:50:33')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 96,1,N'admin',N'Build',N'生成插件模板',N'127.0.0.1',N'2015/2/4 14:47:05')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 97,1,N'admin',N'Instal',N'安装插件',N'127.0.0.1',N'2015/2/4 14:47:28')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 98,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:13:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 99,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:16:53')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 100,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:17:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 101,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:17:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 102,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:18:37')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 103,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:19:13')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 104,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:30:40')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 105,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:36:04')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 106,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:37:36')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 107,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:37:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 108,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 15:42:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 109,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 16:31:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 110,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 16:32:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 111,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/4 16:39:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 112,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 9:41:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 113,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/2/5 9:42:19')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 114,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/2/5 9:42:57')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 115,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/2/5 9:43:03')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 116,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 9:57:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 117,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 10:04:09')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 118,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 10:22:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 119,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/2/5 10:22:56')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 120,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 10:29:51')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 121,1,N'admin',N'Edit',N'修改频道分类:默认站点',N'127.0.0.1',N'2015/2/5 10:30:57')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 122,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 10:41:36')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 123,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 14:03:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 124,1,N'admin',N'Add',N'添加频道回收市场',N'127.0.0.1',N'2015/2/5 14:24:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 125,1,N'admin',N'Edit',N'修改频道回收市场',N'127.0.0.1',N'2015/2/5 14:24:42')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 126,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 14:28:11')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 127,1,N'admin',N'Delete',N'删除URL配置信息',N'127.0.0.1',N'2015/2/5 14:42:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 128,1,N'admin',N'Delete',N'删除频道成功1条，失败0条',N'127.0.0.1',N'2015/2/5 14:43:05')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 132,1,N'admin',N'Edit',N'修改频道回收品目',N'127.0.0.1',N'2015/2/5 15:06:08')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 134,1,N'admin',N'Edit',N'修改频道信息发布',N'127.0.0.1',N'2015/2/5 15:22:05')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 135,1,N'admin',N'Edit',N'修改频道市场行情',N'127.0.0.1',N'2015/2/5 15:22:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 136,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 15:29:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 137,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 16:19:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 138,1,N'admin',N'Edit',N'修改频道回收新闻',N'127.0.0.1',N'2015/2/5 16:19:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 139,1,N'admin',N'Edit',N'修改频道热门商品',N'127.0.0.1',N'2015/2/5 16:20:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 140,1,N'admin',N'Edit',N'修改频道信息发布',N'127.0.0.1',N'2015/2/5 16:20:13')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 141,1,N'admin',N'Edit',N'修改频道市场行情',N'127.0.0.1',N'2015/2/5 16:20:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 142,1,N'admin',N'Edit',N'修改频道网站介绍',N'127.0.0.1',N'2015/2/5 16:20:36')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 143,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 16:21:55')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 144,1,N'admin',N'Edit',N'修改管理角色:超级管理组',N'127.0.0.1',N'2015/2/5 16:23:48')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 145,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 16:23:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 146,1,N'admin',N'Edit',N'修改系统配置信息',N'127.0.0.1',N'2015/2/5 16:25:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 151,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 17:46:09')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 152,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 17:47:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 129,1,N'admin',N'Edit',N'修改频道回收品目',N'127.0.0.1',N'2015/2/5 15:00:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 130,1,N'admin',N'Edit',N'修改频道网站介绍',N'127.0.0.1',N'2015/2/5 15:03:26')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 131,1,N'admin',N'Edit',N'修改频道回收新闻',N'127.0.0.1',N'2015/2/5 15:05:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 133,1,N'admin',N'Edit',N'修改频道热门商品',N'127.0.0.1',N'2015/2/5 15:10:53')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 147,1,N'admin',N'Login',N'用户登录',N'127.0.0.1',N'2015/2/5 17:04:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 148,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 17:04:57')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 149,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 17:22:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 150,1,N'admin',N'Build',N'生成模板:green',N'127.0.0.1',N'2015/2/5 17:27:43')

SET IDENTITY_INSERT [mfp_manager_log] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_manager_role]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_manager_role]

CREATE TABLE [mfp_manager_role] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[role_name] [nvarchar]  (100) NULL,
[role_type] [tinyint]  NULL,
[is_sys] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_manager_role] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_manager_role] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_manager_role] ON

INSERT [mfp_manager_role] ([id],[role_name],[role_type],[is_sys]) VALUES ( 1,N'超级管理组',2,1)
INSERT [mfp_manager_role] ([id],[role_name],[role_type],[is_sys]) VALUES ( 2,N'系统管理组',2,0)

SET IDENTITY_INSERT [mfp_manager_role] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_manager_role_value]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_manager_role_value]

CREATE TABLE [mfp_manager_role_value] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[role_id] [int]  NULL,
[nav_name] [nvarchar]  (100) NULL,
[action_type] [nvarchar]  (50) NULL)

ALTER TABLE [mfp_manager_role_value] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_manager_role_value] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_manager_role_value] ON

INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 228,1,N'sys_contents',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 229,1,N'channel_main',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 230,1,N'channel_news',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 231,1,N'channel_news_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 232,1,N'channel_news_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 233,1,N'channel_news_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 234,1,N'channel_news_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 235,1,N'channel_news_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 236,1,N'channel_news_list',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 237,1,N'channel_news_category',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 238,1,N'channel_news_category',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 239,1,N'channel_news_category',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 240,1,N'channel_news_category',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 241,1,N'channel_news_category',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 242,1,N'channel_news_comment',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 243,1,N'channel_news_comment',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 244,1,N'channel_news_comment',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 245,1,N'channel_news_comment',N'Reply')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 246,1,N'channel_goods',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 247,1,N'channel_goods_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 248,1,N'channel_goods_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 249,1,N'channel_goods_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 250,1,N'channel_goods_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 251,1,N'channel_goods_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 252,1,N'channel_goods_list',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 253,1,N'channel_goods_category',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 254,1,N'channel_goods_category',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 255,1,N'channel_goods_category',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 256,1,N'channel_goods_category',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 257,1,N'channel_goods_category',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 258,1,N'channel_goods_comment',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 259,1,N'channel_goods_comment',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 260,1,N'channel_goods_comment',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 261,1,N'channel_goods_comment',N'Reply')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 262,1,N'channel_photo',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 263,1,N'channel_photo_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 264,1,N'channel_photo_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 265,1,N'channel_photo_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 266,1,N'channel_photo_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 267,1,N'channel_photo_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 268,1,N'channel_photo_list',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 269,1,N'channel_photo_category',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 270,1,N'channel_photo_category',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 271,1,N'channel_photo_category',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 272,1,N'channel_photo_category',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 273,1,N'channel_photo_category',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 274,1,N'channel_photo_comment',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 275,1,N'channel_photo_comment',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 276,1,N'channel_photo_comment',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 277,1,N'channel_photo_comment',N'Reply')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 278,1,N'channel_down',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 279,1,N'channel_down_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 280,1,N'channel_down_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 281,1,N'channel_down_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 282,1,N'channel_down_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 283,1,N'channel_down_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 284,1,N'channel_down_list',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 285,1,N'channel_down_category',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 286,1,N'channel_down_category',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 287,1,N'channel_down_category',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 288,1,N'channel_down_category',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 289,1,N'channel_down_category',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 290,1,N'channel_down_comment',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 291,1,N'channel_down_comment',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 292,1,N'channel_down_comment',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 293,1,N'channel_down_comment',N'Reply')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 294,1,N'channel_content',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 295,1,N'channel_content_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 296,1,N'channel_content_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 297,1,N'channel_content_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 298,1,N'channel_content_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 299,1,N'channel_content_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 300,1,N'channel_content_list',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 301,1,N'channel_content_category',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 302,1,N'channel_content_category',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 303,1,N'channel_content_category',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 304,1,N'channel_content_category',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 305,1,N'channel_content_category',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 306,1,N'channel_content_comment',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 307,1,N'channel_content_comment',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 308,1,N'channel_content_comment',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 309,1,N'channel_content_comment',N'Reply')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 310,1,N'sys_plugins',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 311,1,N'plugin_link',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 312,1,N'plugin_link',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 313,1,N'plugin_link',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 314,1,N'plugin_link',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 315,1,N'plugin_link',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 316,1,N'plugin_link',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 317,1,N'plugin_feedback',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 318,1,N'plugin_feedback',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 319,1,N'plugin_feedback',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 320,1,N'plugin_feedback',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 321,1,N'plugin_feedback',N'Reply')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 322,1,N'sys_users',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 323,1,N'user_manage',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 324,1,N'user_audit',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 325,1,N'user_audit',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 326,1,N'user_audit',N'Audit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 327,1,N'user_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 328,1,N'user_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 329,1,N'user_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 330,1,N'user_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 331,1,N'user_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 332,1,N'user_group',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 333,1,N'user_group',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 334,1,N'user_group',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 335,1,N'user_group',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 336,1,N'user_group',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 337,1,N'user_log',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 338,1,N'user_sms',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 339,1,N'user_sms',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 340,1,N'user_sms',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 341,1,N'user_message',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 342,1,N'user_message',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 343,1,N'user_message',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 344,1,N'user_message',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 345,1,N'user_point_log',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 346,1,N'user_point_log',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 347,1,N'user_point_log',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 348,1,N'user_amount_log',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 349,1,N'user_amount_log',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 350,1,N'user_amount_log',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 351,1,N'user_settings',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 352,1,N'user_config',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 353,1,N'user_config',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 354,1,N'user_config',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 355,1,N'user_sms_template',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 356,1,N'user_sms_template',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 357,1,N'user_sms_template',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 358,1,N'user_sms_template',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 359,1,N'user_sms_template',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 360,1,N'user_mail_template',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 361,1,N'user_mail_template',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 362,1,N'user_mail_template',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 363,1,N'user_mail_template',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 364,1,N'user_mail_template',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 365,1,N'user_oauth',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 366,1,N'user_oauth',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 367,1,N'user_oauth',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 368,1,N'user_oauth',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 369,1,N'user_oauth',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 370,1,N'sys_orders',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 371,1,N'order_manage',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 372,1,N'order_confirm',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 373,1,N'order_confirm',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 374,1,N'order_confirm',N'Confirm')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 375,1,N'order_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 376,1,N'order_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 377,1,N'order_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 378,1,N'order_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 379,1,N'order_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 380,1,N'order_list',N'Confirm')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 381,1,N'order_list',N'Cancel')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 382,1,N'order_list',N'Invalid')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 383,1,N'order_settings',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 384,1,N'order_config',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 385,1,N'order_config',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 386,1,N'order_config',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 387,1,N'order_payment',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 388,1,N'order_payment',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 389,1,N'order_payment',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 390,1,N'order_express',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 391,1,N'order_express',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 392,1,N'order_express',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 393,1,N'order_express',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 394,1,N'order_express',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 395,1,N'sys_design',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 396,1,N'app_manage',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 397,1,N'app_templet_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 398,1,N'app_templet_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 399,1,N'app_templet_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 400,1,N'app_templet_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 401,1,N'app_templet_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 402,1,N'app_templet_list',N'Build')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 403,1,N'app_plugin_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 404,1,N'app_plugin_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 405,1,N'app_plugin_list',N'Build')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 406,1,N'app_plugin_list',N'Instal')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 407,1,N'app_plugin_list',N'Unload')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 408,1,N'app_builder_html',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 409,1,N'app_builder_html',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 410,1,N'app_builder_html',N'Build')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 411,1,N'app_navigation_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 412,1,N'app_navigation_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 413,1,N'app_navigation_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 414,1,N'app_navigation_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 415,1,N'app_navigation_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 416,1,N'sys_controller',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 417,1,N'site_manage',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 418,1,N'site_config',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 419,1,N'site_config',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 420,1,N'site_config',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 421,1,N'site_channel_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 422,1,N'site_channel_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 423,1,N'site_channel_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 424,1,N'site_channel_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 425,1,N'site_channel_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 426,1,N'site_channel_category',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 427,1,N'site_channel_category',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 428,1,N'site_channel_category',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 429,1,N'site_channel_category',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 430,1,N'site_channel_category',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 431,1,N'site_url_rewrite',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 432,1,N'site_url_rewrite',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 433,1,N'site_url_rewrite',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 434,1,N'site_url_rewrite',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 435,1,N'site_url_rewrite',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 436,1,N'site_channel_field',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 437,1,N'site_channel_field',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 438,1,N'site_channel_field',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 439,1,N'site_channel_field',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 440,1,N'site_channel_field',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 441,1,N'sys_manager',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 442,1,N'manager_list',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 443,1,N'manager_list',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 444,1,N'manager_list',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 445,1,N'manager_list',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 446,1,N'manager_list',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 447,1,N'manager_role',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 448,1,N'manager_role',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 449,1,N'manager_role',N'Add')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 450,1,N'manager_role',N'Edit')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 451,1,N'manager_role',N'Delete')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 452,1,N'manager_log',N'Show')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 453,1,N'manager_log',N'View')
INSERT [mfp_manager_role_value] ([id],[role_id],[nav_name],[action_type]) VALUES ( 454,1,N'manager_log',N'Delete')

SET IDENTITY_INSERT [mfp_manager_role_value] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_navigation]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_navigation]

CREATE TABLE [mfp_navigation] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[nav_type] [nvarchar]  (50) NULL DEFAULT (''),
[name] [nvarchar]  (50) NULL DEFAULT (''),
[title] [nvarchar]  (100) NULL DEFAULT (''),
[sub_title] [nvarchar]  (100) NULL DEFAULT (''),
[link_url] [nvarchar]  (255) NULL DEFAULT (''),
[sort_id] [int]  NULL DEFAULT (99),
[is_lock] [tinyint]  NULL DEFAULT (0),
[remark] [nvarchar]  (500) NULL DEFAULT (''),
[parent_id] [int]  NULL DEFAULT (0),
[class_list] [nvarchar]  (500) NULL DEFAULT (''),
[class_layer] [int]  NULL DEFAULT (1),
[channel_id] [int]  NULL DEFAULT (0),
[action_type] [nvarchar]  (500) NULL DEFAULT (''),
[is_sys] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_navigation] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_navigation] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_navigation] ON

INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 1,N'System',N'sys_contents',N'内容管理',N'内容',99,0,0,N',1,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 2,N'System',N'sys_users',N'会员管理',N'会员',100,0,N'系统默认导航，不可更改导航ID',0,N',2,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 3,N'System',N'sys_orders',N'订单管理',N'订单',101,0,N'系统默认导航，不可修改导航ID',0,N',3,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 4,N'System',N'sys_design',N'界面管理',N'界面',102,0,N'系统默认导航，不可更改导航ID',0,N',4,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 5,N'System',N'sys_controller',N'控制面板',N'控制面板',103,0,N'系统默认导航，不可修改导航ID',0,N',5,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 6,N'System',N'sys_plugins',N'插件管理',N'插件管理',999,0,N'系统默认导航，不可修改导航ID',1,N',1,6,',2,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 7,N'System',N'user_manage',N'会员管理',99,0,2,N',2,7,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 8,N'System',N'user_log',N'会员日志',100,0,2,N',2,8,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 9,N'System',N'user_settings',N'会员设置',101,0,2,N',2,9,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 10,N'System',N'order_manage',N'订单管理',99,0,3,N',3,10,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 11,N'System',N'order_settings',N'订单设置',100,0,3,N',3,11,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 12,N'System',N'app_manage',N'应用管理',99,0,4,N',4,12,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 13,N'System',N'site_manage',N'系统管理',99,0,5,N',5,13,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 14,N'System',N'sys_manager',N'系统用户',101,0,5,N',5,14,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 15,N'System',N'user_audit',N'审核会员',N'users/user_audit.aspx',99,0,7,N',2,7,15,',3,0,N'Show,View,Audit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 16,N'System',N'user_list',N'所有会员',N'users/user_list.aspx',100,0,7,N',2,7,16,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 17,N'System',N'user_group',N'会员组别',N'users/group_list.aspx',101,0,7,N',2,7,17,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 18,N'System',N'user_sms',N'发送短信',N'users/user_sms.aspx',99,0,8,N',2,8,18,',3,0,N'Show,View,Add',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 19,N'System',N'user_message',N'站内消息',N'users/message_list.aspx',100,0,8,N',2,8,19,',3,0,N'Show,View,Add,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 20,N'System',N'user_point_log',N'积分记录',N'users/point_log.aspx',101,0,8,N',2,8,20,',3,0,N'Show,View,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 21,N'System',N'user_amount_log',N'消费记录',N'users/amount_log.aspx',102,0,8,N',2,8,21,',3,0,N'Show,View,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 22,N'System',N'user_config',N'参数设置',N'users/user_config.aspx',99,0,9,N',2,9,22,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 23,N'System',N'user_sms_template',N'短信模板',N'users/sms_template_list.aspx',100,0,9,N',2,9,23,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 24,N'System',N'user_mail_template',N'邮件模板',N'users/mail_template_list.aspx',101,0,9,N',2,9,24,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 25,N'System',N'user_oauth',N'OAuth设置',N'users/oauth_app_list.aspx',102,0,9,N',2,9,25,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 26,N'System',N'order_confirm',N'待确认订单',N'order/order_confirm.aspx',99,0,10,N',3,10,26,',3,0,N'Show,View,Confirm',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 27,N'System',N'order_list',N'全部订单',N'order/order_list.aspx',100,0,10,N',3,10,27,',3,0,N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 28,N'System',N'order_config',N'订单参数设置',N'order/order_config.aspx',99,0,11,N',3,11,28,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 29,N'System',N'order_payment',N'支付方式设置',N'order/payment_list.aspx',100,0,11,N',3,11,29,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 30,N'System',N'order_express',N'配送方式设置',N'order/express_list.aspx',101,0,11,N',3,11,30,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 31,N'System',N'app_templet_list',N'网站模板管理',N'settings/templet_list.aspx',99,0,12,N',4,12,31,',3,0,N'Show,View,Add,Edit,Delete,Build',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 32,N'System',N'app_plugin_list',N'插件安装配置',N'settings/plugin_list.aspx',100,0,12,N',4,12,32,',3,0,N'Show,View,Build,Instal,Unload',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 33,N'System',N'app_builder_html',N'生成静态页面',N'settings/builder_html.aspx',101,0,12,N',4,12,33,',3,0,N'Show,View,Build',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 34,N'System',N'app_navigation_list',N'后台导航管理',N'settings/nav_list.aspx',102,0,12,N',4,12,34,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 35,N'System',N'site_config',N'系统设置',N'settings/sys_config.aspx',99,0,13,N',5,13,35,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 36,N'System',N'site_url_rewrite',N'URL配置',N'settings/url_rewrite_list.aspx',103,0,13,N',5,13,36,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 37,N'System',N'site_channel_list',N'频道管理',N'channel/channel_list.aspx',101,0,13,N',5,13,37,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 38,N'System',N'site_channel_category',N'频道分类',N'channel/category_list.aspx',102,0,13,N',5,13,38,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 39,N'System',N'site_channel_field',N'扩展字段',N'channel/attribute_field_list.aspx',104,0,13,N',5,13,39,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 40,N'System',N'manager_list',N'管理员管理',N'manager/manager_list.aspx',99,0,14,N',5,14,40,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 41,N'System',N'manager_role',N'角色管理',N'manager/role_list.aspx',100,0,14,N',5,14,41,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 42,N'System',N'manager_log',N'管理日志',N'manager/manager_log.aspx',101,0,14,N',5,14,42,',3,0,N'Show,View,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 43,N'System',N'channel_main',N'默认站点',99,0,1,N',1,43,',2,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 44,N'System',N'channel_news',N'回收新闻',99,0,43,N',1,43,44,',3,1,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 45,N'System',N'channel_news_list',N'内容管理',N'article/article_list.aspx',99,0,44,N',1,43,44,45,',4,1,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 46,N'System',N'channel_news_category',N'栏目类别',N'article/category_list.aspx',100,0,44,N',1,43,44,46,',4,1,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 47,N'System',N'channel_news_comment',N'评论管理',N'article/comment_list.aspx',101,0,44,N',1,43,44,47,',4,1,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 48,N'System',N'channel_goods',N'热门商品',100,0,43,N',1,43,48,',3,2,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 49,N'System',N'channel_goods_list',N'内容管理',N'article/article_list.aspx',99,0,48,N',1,43,48,49,',4,2,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 50,N'System',N'channel_goods_category',N'栏目类别',N'article/category_list.aspx',100,0,48,N',1,43,48,50,',4,2,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 51,N'System',N'channel_goods_comment',N'评论管理',N'article/comment_list.aspx',101,0,48,N',1,43,48,51,',4,2,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 52,N'System',N'channel_photo',N'信息发布',101,0,43,N',1,43,52,',3,3,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 53,N'System',N'channel_photo_list',N'内容管理',N'article/article_list.aspx',99,0,52,N',1,43,52,53,',4,3,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 54,N'System',N'channel_photo_category',N'栏目类别',N'article/category_list.aspx',100,0,52,N',1,43,52,54,',4,3,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 55,N'System',N'channel_photo_comment',N'评论管理',N'article/comment_list.aspx',101,0,52,N',1,43,52,55,',4,3,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 56,N'System',N'channel_down',N'市场行情',102,0,43,N',1,43,56,',3,4,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 57,N'System',N'channel_down_list',N'内容管理',N'article/article_list.aspx',99,0,56,N',1,43,56,57,',4,4,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 58,N'System',N'channel_down_category',N'栏目类别',N'article/category_list.aspx',100,0,56,N',1,43,56,58,',4,4,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 59,N'System',N'channel_down_comment',N'评论管理',N'article/comment_list.aspx',101,0,56,N',1,43,56,59,',4,4,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 60,N'System',N'channel_content',N'网站介绍',103,0,43,N',1,43,60,',3,5,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 61,N'System',N'channel_content_list',N'内容管理',N'article/article_list.aspx',99,0,60,N',1,43,60,61,',4,5,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 62,N'System',N'channel_content_category',N'栏目类别',N'article/category_list.aspx',100,0,60,N',1,43,60,62,',4,5,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 63,N'System',N'channel_content_comment',N'评论管理',N'article/comment_list.aspx',101,0,60,N',1,43,60,63,',4,5,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 64,N'System',N'plugin_link',N'链接管理',N'/plugins/link/admin/index.aspx',99,0,6,N',1,6,64,',3,0,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 65,N'System',N'plugin_feedback',N'留言管理',N'/plugins/feedback/admin/index.aspx',99,0,6,N',1,6,65,',3,0,N'Show,View,Delete,Audit,Reply',1)

SET IDENTITY_INSERT [mfp_navigation] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_order_goods]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_order_goods]

CREATE TABLE [mfp_order_goods] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[order_id] [int]  NULL,
[goods_id] [int]  NULL,
[goods_title] [nvarchar]  (100) NULL,
[goods_price] [decimal]  (9,2) NULL DEFAULT (0),
[real_price] [decimal]  (9,2) NULL DEFAULT (0),
[quantity] [int]  NULL DEFAULT (0),
[point] [int]  NULL DEFAULT (0))

ALTER TABLE [mfp_order_goods] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_order_goods] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_order_goods] ON


SET IDENTITY_INSERT [mfp_order_goods] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_orders]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_orders]

CREATE TABLE [mfp_orders] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[order_no] [nvarchar]  (100) NULL DEFAULT (''),
[trade_no] [nvarchar]  (100) NULL DEFAULT (''),
[user_id] [int]  NULL DEFAULT (0),
[user_name] [nvarchar]  (100) NULL DEFAULT (''),
[payment_id] [int]  NULL DEFAULT (0),
[payment_fee] [decimal]  (9,2) NULL DEFAULT (0),
[payment_status] [tinyint]  NULL DEFAULT (0),
[payment_time] [datetime]  NULL,
[express_id] [int]  NULL DEFAULT (0),
[express_no] [nvarchar]  (100) NULL DEFAULT (''),
[express_fee] [decimal]  (9,2) NULL DEFAULT (0),
[express_status] [tinyint]  NULL DEFAULT (0),
[express_time] [datetime]  NULL,
[accept_name] [nvarchar]  (50) NULL DEFAULT (''),
[post_code] [nvarchar]  (20) NULL DEFAULT (''),
[telphone] [nvarchar]  (30) NULL DEFAULT (''),
[mobile] [nvarchar]  (20) NULL DEFAULT (''),
[area] [nvarchar]  (100) NULL DEFAULT (''),
[address] [nvarchar]  (500) NULL DEFAULT (''),
[message] [nvarchar]  (500) NULL DEFAULT (''),
[remark] [nvarchar]  (500) NULL DEFAULT (''),
[payable_amount] [decimal]  (9,2) NULL DEFAULT (0),
[real_amount] [decimal]  (9,2) NULL DEFAULT (0),
[order_amount] [decimal]  (9,2) NULL DEFAULT (0),
[point] [int]  NULL DEFAULT (0),
[status] [tinyint]  NULL DEFAULT (1),
[add_time] [datetime]  NULL DEFAULT (getdate()),
[confirm_time] [datetime]  NULL,
[complete_time] [datetime]  NULL)

ALTER TABLE [mfp_orders] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_orders] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_orders] ON


SET IDENTITY_INSERT [mfp_orders] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_payment]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_payment]

CREATE TABLE [mfp_payment] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL,
[img_url] [nvarchar]  (255) NULL DEFAULT (''),
[remark] [nvarchar]  (500) NULL,
[type] [tinyint]  NULL DEFAULT (1),
[poundage_type] [tinyint]  NULL DEFAULT (1),
[poundage_amount] [decimal]  (9,2) NULL DEFAULT (0),
[sort_id] [int]  NULL DEFAULT (99),
[is_lock] [tinyint]  NULL DEFAULT (0),
[api_path] [nvarchar]  (100) NULL)

ALTER TABLE [mfp_payment] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_payment] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_payment] ON

INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock]) VALUES ( 1,N'货到付款',N'收到商品后进行支付，支持现金和刷卡服务。',2,2,0.00,99,0)
INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path]) VALUES ( 2,N'账户余额',N'账户余额是客户在您网站上的账户虚拟资金',1,2,0.00,100,0,N'balance')
INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path]) VALUES ( 3,N'支付宝',N'付款后立即到账，无预付/年费，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>',1,2,0.00,101,0,N'alipay')
INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path]) VALUES ( 4,N'财付通',N'费率最低至<span style="color:#FF0000;font-weight: bold;">0.61%</span>，并赠送价值千元企业QQ。<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">中小商家签约入口</a>',1,2,0.00,102,0,N'tenpay')

SET IDENTITY_INSERT [mfp_payment] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_sms_template]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_sms_template]

CREATE TABLE [mfp_sms_template] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL DEFAULT (''),
[call_index] [nvarchar]  (50) NULL DEFAULT (''),
[content] [ntext]  NULL DEFAULT (''),
[is_sys] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_sms_template] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_sms_template] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_sms_template] ON

INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 1,N'会员验证码短信',N'usercode',N'您的验证码为：{code}，{valid}分钟内有效。',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 2,N'欢迎新用户短信',N'welcomemsg',N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 3,N'订单确认通知',N'order_confirm',N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 4,N'订单发货通知',N'order_express',N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 5,N'订单完成通知',N'order_complete',N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。',1)

SET IDENTITY_INSERT [mfp_sms_template] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_amount_log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_amount_log]

CREATE TABLE [mfp_user_amount_log] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[user_id] [int]  NULL,
[user_name] [nvarchar]  (100) NULL,
[type] [nvarchar]  (50) NULL,
[order_no] [nvarchar]  (100) NULL DEFAULT (''),
[trade_no] [nvarchar]  (100) NULL,
[payment_id] [int]  NULL DEFAULT (0),
[value] [decimal]  (9,2) NULL DEFAULT (0),
[remark] [nvarchar]  (500) NULL DEFAULT (''),
[status] [tinyint]  NULL DEFAULT (0),
[add_time] [datetime]  NULL DEFAULT (getdate()),
[complete_time] [datetime]  NULL)

ALTER TABLE [mfp_user_amount_log] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_amount_log] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_amount_log] ON

INSERT [mfp_user_amount_log] ([id],[user_id],[user_name],[type],[payment_id],[value],[remark],[status],[add_time],[complete_time]) VALUES ( 1,1,N'test',N'SysGive',0,1.00,N'注册赠送金额',1,N'2015/2/5 11:53:14',N'2015/2/5 11:53:14')

SET IDENTITY_INSERT [mfp_user_amount_log] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_code]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_code]

CREATE TABLE [mfp_user_code] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[user_id] [int]  NOT NULL,
[user_name] [nvarchar]  (100) NULL,
[type] [nvarchar]  (20) NULL,
[str_code] [nvarchar]  (255) NULL,
[count] [int]  NULL DEFAULT (0),
[status] [tinyint]  NULL DEFAULT (0),
[eff_time] [datetime]  NOT NULL,
[add_time] [datetime]  NOT NULL DEFAULT (getdate()))

ALTER TABLE [mfp_user_code] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_code] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_code] ON


SET IDENTITY_INSERT [mfp_user_code] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_group_price]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_group_price]

CREATE TABLE [mfp_user_group_price] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[article_id] [int]  NULL DEFAULT (0),
[group_id] [int]  NULL DEFAULT (0),
[price] [decimal]  (9,2) NULL DEFAULT (0))

ALTER TABLE [mfp_user_group_price] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_group_price] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_group_price] ON

INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 1,9,1,1199.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 2,9,2,1187.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 3,10,1,1999.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 4,10,2,1979.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 5,12,1,2199.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 6,12,2,2177.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 7,13,1,1388.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 8,13,2,1374.12)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 9,14,1,1299.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 10,14,2,1286.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 11,15,1,35.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 12,15,2,34.65)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 13,16,1,79.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 14,16,2,78.21)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 15,17,1,3099.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 16,17,2,3068.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 17,18,1,3599.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 18,18,2,3563.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 19,19,1,4999.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 20,19,2,4949.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 21,20,1,5999.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 22,20,2,5939.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 23,21,1,79.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 24,21,2,78.21)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 25,22,1,1899.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 26,22,2,1880.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 27,24,1,1299.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 28,24,2,1286.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 29,25,1,69.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 30,25,2,68.31)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 31,26,1,4388.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 32,26,2,4344.12)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 33,27,1,995.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 34,27,2,985.05)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 35,28,1,2299.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 36,28,2,2276.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 37,29,1,1450.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 38,29,2,1435.50)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 39,30,1,10399.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 40,30,2,10295.01)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 41,32,1,3870.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 42,32,2,3831.30)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 43,33,1,2880.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 44,33,2,2851.20)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 45,34,1,5308.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 46,34,2,5254.92)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 47,36,1,3179.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 48,36,2,3147.21)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 49,37,1,3580.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 50,37,2,3544.20)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 51,40,1,3580.00)
INSERT [mfp_user_group_price] ([id],[article_id],[group_id],[price]) VALUES ( 52,40,2,3544.20)

SET IDENTITY_INSERT [mfp_user_group_price] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_groups]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_groups]

CREATE TABLE [mfp_user_groups] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL DEFAULT (''),
[grade] [int]  NULL DEFAULT (0),
[upgrade_exp] [int]  NULL DEFAULT (0),
[amount] [decimal]  (9,2) NULL DEFAULT (0),
[point] [int]  NULL DEFAULT (0),
[discount] [int]  NULL,
[is_default] [tinyint]  NULL DEFAULT (0),
[is_upgrade] [tinyint]  NULL DEFAULT (1),
[is_lock] [tinyint]  NULL DEFAULT (0))

ALTER TABLE [mfp_user_groups] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_groups] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_groups] ON

INSERT [mfp_user_groups] ([id],[title],[grade],[upgrade_exp],[amount],[point],[discount],[is_default],[is_upgrade],[is_lock]) VALUES ( 1,N'普通会员',1,0,1.00,10,100,1,1,0)
INSERT [mfp_user_groups] ([id],[title],[grade],[upgrade_exp],[amount],[point],[discount],[is_default],[is_upgrade],[is_lock]) VALUES ( 2,N'VIP会员',2,1000,0.00,0,99,0,1,0)

SET IDENTITY_INSERT [mfp_user_groups] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_login_log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_login_log]

CREATE TABLE [mfp_user_login_log] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[user_id] [int]  NOT NULL,
[user_name] [nvarchar]  (100) NULL DEFAULT (''),
[remark] [nvarchar]  (255) NULL DEFAULT (''),
[login_time] [datetime]  NULL DEFAULT (getdate()),
[login_ip] [nvarchar]  (50) NULL DEFAULT (''))

ALTER TABLE [mfp_user_login_log] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_login_log] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_login_log] ON

INSERT [mfp_user_login_log] ([id],[user_id],[user_name],[remark],[login_time],[login_ip]) VALUES ( 1,1,N'test',N'会员登录',N'2015/2/5 11:53:14',N'127.0.0.1')

SET IDENTITY_INSERT [mfp_user_login_log] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_message]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_message]

CREATE TABLE [mfp_user_message] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[type] [tinyint]  NULL DEFAULT (1),
[post_user_name] [nvarchar]  (100) NULL,
[accept_user_name] [nvarchar]  (100) NULL,
[is_read] [tinyint]  NULL DEFAULT (0),
[title] [nvarchar]  (100) NULL,
[content] [ntext]  NULL,
[post_time] [datetime]  NOT NULL DEFAULT (getdate()),
[read_time] [datetime]  NULL)

ALTER TABLE [mfp_user_message] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_message] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_message] ON

INSERT [mfp_user_message] ([id],[type],[accept_user_name],[is_read],[title],[content],[post_time]) VALUES ( 1,1,N'test',0,N'欢迎您成为本站会员',N'欢迎你成为本站会员！',N'2015/2/5 11:53:14')

SET IDENTITY_INSERT [mfp_user_message] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_oauth]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_oauth]

CREATE TABLE [mfp_user_oauth] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[user_id] [int]  NULL,
[user_name] [nvarchar]  (100) NULL,
[oauth_name] [nvarchar]  (50) NOT NULL DEFAULT ('0'),
[oauth_access_token] [nvarchar]  (500) NULL,
[oauth_openid] [nvarchar]  (255) NULL,
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_user_oauth] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_oauth] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_oauth] ON


SET IDENTITY_INSERT [mfp_user_oauth] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_oauth_app]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_oauth_app]

CREATE TABLE [mfp_user_oauth_app] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (100) NULL DEFAULT (''),
[img_url] [nvarchar]  (255) NULL DEFAULT (''),
[app_id] [nvarchar]  (100) NULL,
[app_key] [nvarchar]  (500) NULL,
[remark] [nvarchar]  (500) NULL DEFAULT (''),
[sort_id] [int]  NULL DEFAULT (99),
[is_lock] [tinyint]  NULL DEFAULT (0),
[api_path] [nvarchar]  (255) NULL DEFAULT (''))

ALTER TABLE [mfp_user_oauth_app] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_oauth_app] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_oauth_app] ON

INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 1,N'用QQ帐号登录',N'/upload/201301/22/201301222356267017.png',N'API Key',N'Secret Key',N'QQ互联开放平台',99,0,N'qq')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 2,N'用新浪微博登录',N'/upload/201301/22/201301222358108990.png',N'API Key',N'Secret Key',N'新浪微博开放平台',100,0,N'sina')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 3,N'用淘宝账号登录',N'/upload/201301/22/201301222359116140.png',N'API Key',N'Secret Key',N'淘宝开放平台',101,0,N'taobao')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 4,N'用开心网帐号登录',N'/upload/201301/22/201301222359597445.png',N'API Key',N'Secret Key',N'开心网开放平台',102,0,N'kaixin')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 5,N'用人人网帐号登录',N'/upload/201301/23/201301230000421311.png',N'API Key',N'Secret Key',N'人人网开放平台',103,0,N'renren')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 6,N'用飞信账号登录',N'/upload/201301/23/201301230001220360.png',N'API Key',N'Secret Key',N'中国移动飞信开放平台',104,0,N'feixin')

SET IDENTITY_INSERT [mfp_user_oauth_app] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_user_point_log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_user_point_log]

CREATE TABLE [mfp_user_point_log] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[user_id] [int]  NULL,
[user_name] [nvarchar]  (100) NULL,
[value] [int]  NULL,
[remark] [nvarchar]  (500) NULL,
[add_time] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [mfp_user_point_log] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_user_point_log] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_user_point_log] ON

INSERT [mfp_user_point_log] ([id],[user_id],[user_name],[value],[remark],[add_time]) VALUES ( 1,1,N'test',10,N'注册赠送积分',N'2015/2/5 11:53:14')

SET IDENTITY_INSERT [mfp_user_point_log] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[mfp_users]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [mfp_users]

CREATE TABLE [mfp_users] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[group_id] [int]  NOT NULL DEFAULT (0),
[user_name] [nvarchar]  (100) NOT NULL,
[password] [nvarchar]  (100) NOT NULL,
[salt] [nvarchar]  (20) NULL,
[email] [nvarchar]  (50) NULL DEFAULT (''),
[nick_name] [nvarchar]  (100) NULL DEFAULT (''),
[avatar] [nvarchar]  (255) NULL DEFAULT (''),
[sex] [nvarchar]  (20) NULL DEFAULT ('保密'),
[birthday] [datetime]  NULL,
[telphone] [nvarchar]  (50) NULL DEFAULT (''),
[mobile] [nvarchar]  (20) NULL DEFAULT (''),
[qq] [nvarchar]  (30) NULL DEFAULT (''),
[address] [nvarchar]  (255) NULL,
[safe_question] [nvarchar]  (255) NULL DEFAULT (''),
[safe_answer] [nvarchar]  (255) NULL DEFAULT (''),
[amount] [decimal]  (9,2) NULL DEFAULT (0),
[point] [int]  NULL DEFAULT (0),
[exp] [int]  NULL DEFAULT (0),
[status] [tinyint]  NULL DEFAULT (0),
[reg_time] [datetime]  NULL DEFAULT (getdate()),
[reg_ip] [nvarchar]  (30) NULL)

ALTER TABLE [mfp_users] WITH NOCHECK ADD  CONSTRAINT [PK_mfp_users] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [mfp_users] ON

INSERT [mfp_users] ([id],[group_id],[user_name],[password],[salt],[email],[sex],[mobile],[amount],[point],[exp],[status],[reg_time],[reg_ip]) VALUES ( 1,1,N'test',N'88D3D45E87261B5E',N'264048',N'ada@asfa.c',N'保密',N'13800138000',1.00,10,0,0,N'2015/2/5 11:53:14',N'127.0.0.1')

SET IDENTITY_INSERT [mfp_users] OFF

go

--------------begin create views ------------------


CREATE VIEW [dbo].[view_channel_photo] as SELECT mfp_article.*,mfp_article_attribute_value.source,mfp_article_attribute_value.author FROM mfp_article_attribute_value INNER JOIN mfp_article ON mfp_article_attribute_value.article_id = mfp_article.id WHERE mfp_article.channel_id=3
GO
CREATE VIEW [dbo].[view_channel_news] as SELECT mfp_article.*,mfp_article_attribute_value.source,mfp_article_attribute_value.author FROM mfp_article_attribute_value INNER JOIN mfp_article ON mfp_article_attribute_value.article_id = mfp_article.id WHERE mfp_article.channel_id=1
GO
CREATE VIEW [dbo].[view_channel_goods] as SELECT mfp_article.*,mfp_article_attribute_value.sub_title,mfp_article_attribute_value.goods_no,mfp_article_attribute_value.stock_quantity,mfp_article_attribute_value.market_price,mfp_article_attribute_value.sell_price,mfp_article_attribute_value.point FROM mfp_article_attribute_value INNER JOIN mfp_article ON mfp_article_attribute_value.article_id = mfp_article.id WHERE mfp_article.channel_id=2
GO
CREATE VIEW [dbo].[view_channel_down] as SELECT mfp_article.*,mfp_article_attribute_value.source,mfp_article_attribute_value.author FROM mfp_article_attribute_value INNER JOIN mfp_article ON mfp_article_attribute_value.article_id = mfp_article.id WHERE mfp_article.channel_id=4
GO
CREATE VIEW [dbo].[view_channel_content] as SELECT mfp_article.* FROM mfp_article_attribute_value INNER JOIN mfp_article ON mfp_article_attribute_value.article_id = mfp_article.id WHERE mfp_article.channel_id=5
GO


--------------end create views ------------------
