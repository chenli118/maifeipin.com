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

INSERT [mfp_article] ([id],[channel_id],[category_id],[call_index],[title],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 3,5,32,N'about',N'��������',N'���ϵ���ɫ������������',N'�����Ʒ��ÿ����ҵ����������ж����ɻرܵ����飬���ڹ���ǰ�ڴַ�ΨGDP����ɵĻ����ƻ����˷ѣ���������������ܶ࣬�����ҵ���ܻ����ڳ����׶Σ�Ҳϣ����Ϊ�����ҵ����һ���������',99,86,0,0,0,0,0,0,0,1,N'admin',N'2012/10/19 23:25:28',N'2013/12/10 4:06:22')
INSERT [mfp_article] ([id],[channel_id],[category_id],[call_index],[title],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 4,5,32,N'contact',N'��ϵ����',N'���ϵ���ɫ������������',N'<p>
	<strong>������ɫ���� - ��������� </strong> 
</p>
<p>
	<strong>�ٷ���ַ��</strong><a href="http://www.maifeipin.com" target="_blank">http://www.maifeipin.com</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.maifeipin.com" target="_blank">http://www.it134.cn</a> 
</p>
<p>
	<strong>���ڵ�����</strong>�����к�������������18��
</p>
<p>
	<strong>ҵ��绰��</strong>+86 13800138000
</p>
<p>
	<strong>����΢����</strong><a href="http://weibo.com/" target="_blank">http://weibo.com/</a> 
</p>
<p>
	<strong>����QȺ��</strong> 1285305988��1Ⱥ���� <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1285305988 (4Ⱥ)
</p>
<p>
	<strong>�������䣺</strong>admin@maifeipin.com
</p>',100,248,0,0,0,0,0,0,0,1,N'admin',N'2012/10/19 23:26:18',N'2013/12/10 4:06:26')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 5,1,4,N'����2500��������ͼ���ȸ��ͼӭ���ش�����',N'/upload/201210/20/201210202111266945.jpg',N'10��19��������Ϣ���ȸ�ո���ȸ��ͼ���������ƶ������������µĹ��ܣ����˽ֵ�����԰��ˮ���⣬�û������Բ鿴����еĽ����������ͼ��',N'<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10��19��������Ϣ���ȸ�ո���ȸ��ͼ���������ƶ������������µĹ��ܣ����˽ֵ�����԰��ˮ���⣬�û������Բ鿴����еĽ����������ͼ��
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ȸ��ͼ����������2500���½���������ͼ�����е�ͼƬ�����и߶���Ϣ�������ṩ����������ͼ�ĳ��а�����˹�١���ɼ��֥�Ӹ硢�����ܺ;ɽ�ɽ������
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ȸ��ͼ���̾����ȡ������(Bobby Parikh)�ڲ�����д�����������ճ����ʱ���������������������Ϸ�λ��ȷ�ϵرꡢѰ��·�ߡ��˴θ��������ǳ���Ŭ����������Ŀ����Ϊ�û��ṩ�����ܹ㷺�ĵ�ͼ����
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ȸ��ͼ������ܺ�������ƻ����iOS 6Ĭ�ϵ�ͼ����Ϊ�ù�˾���������ĵ�ͼ������⵽�˺ܶ��û��ķ��ԡ���Ȼ�ȸ��������˹ȸ��ͼ���ƶ�����Ӧ�ã�����δ͸¶�Ƿ��ΪiOS����������ͼӦ�á�
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ȸ�ִ�ж��³�����ˡ�ʩ����(Eric Schmidt)���ܽ���ý��ɷ�ʱ˵����ƻ��Ӧ�����׵�ͼ�������ˡ���������������ȸ軨��5��ʱ��Ͷ�ʵ�ͼӦ�ã���ƻ������׷��֮�С�������Ͷ����������Ԫ�ɼ����ǡ����ĺͽ־�ͼƬ����������Ϊӵ��ҵ��������Ĳ�Ʒ������˵��
</p>
<p>
	&nbsp;
</p>',99,76,0,0,0,1,1,0,1,1,N'admin',N'2012/10/19 23:58:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 6,1,9,N'�������ˢ��Ħ��RAZR HD�����濪��',N'/upload/201210/20/201210202114441653.jpg',N'����㾭��ϲ��ˢ���������ǵ�����ROM�������һ����Ħ�е��ֻ���ƽ��ûʲô�øУ���ΪBootloader������ԭ��ʹˢ�����̱�ú��Ǹ��ӣ�ͨ��ֻ��ͨ����ˢʵ�֣�����Ҫ���йٷ�ǩ������',N'<p align="center">
	<img alt="" src="/upload/201210/20/201210200915353848.jpg" /> 
</p>
<p align="center">
	&nbsp;
</p>
<p align="left">
	&nbsp;
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ħ�����ڹ�ȸ��ˣ���������Ӫ�̶��Ƶ�Ҫ���£���Ҫ�ǰ�Bootloader������������Ϣ���ˡ���ǰ��ʱ���Droid Razr M֮�������������Ƴ���Razr HD�Ŀ����档û��Bootloader����������ôˢ����ôˢ��ˢˢ��������
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����ýandroidauthority�ı�����Ħ���Ѿ�ͨ�����ǵ������̵�����Razr HD�����棬�ۼ�599��Ԫ��������úͱ�׼��û��ʲô����
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ҫע����ǣ�ˢש��û���ʱ��ġ���������˵������ˢ�������߻������ʱ���
</p>
<p align="center">
	&nbsp;
</p>',99,41,0,0,0,0,1,0,1,1,N'admin',N'2012/10/20 9:16:09')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 7,1,4,N'��ֲ���ս��ʬ����һվ����԰ս��',N'/upload/201210/20/201210202117411706.jpg',N'������ýfusible.com����Ϣ��������PopCapGames����˾��16��ע����һϵ���롶ֲ���ս��ʬ���йص�����������Plants vs Zombies GardenWarfare.com��Plants vs Zombies GardenWarfare.net��Plants vs Zombies GardenWarfare.org�ȵȡ�',N'<p style="text-align:center;">
	<img alt="" src="/upload/201210/20/201210200924129175.jpg" /> 
</p>
<p style="text-align:center;">
	<br />
</p>
<p style="text-align:left;">
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������ýfusible.com����Ϣ��������PopCapGames����˾��16��ע����һϵ���롶ֲ���ս��ʬ���йص�����������Plants vs Zombies GardenWarfare.com��Plants vs Zombies GardenWarfare.net��Plants vs Zombies GardenWarfare.org�ȵȡ�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Щ���������Ƿ�����һ���ؼ��ʣ���GardenWarfare��������԰ս���������������ǺͶ��ӵġ�ʹ���ٻ������ִ�ս����(Call of Duty��ModernWarfare)��Щ��ϵ��������ʵ�ǣ�ֻ����������ˡ�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����8�·ݣ���������͸¶����ֲ���ս��ʬ��������������δ�������������ơ�����˵������һ����������ȫ�����Ϸ�������������ʵ������Щ��ϧ�����������ڱ�����˾�Ѿ���ʾ�����������������¹��ܡ��³��������ƻ���2013�괺��������
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���Fusible���ᵽ����6�¾�����һλTwitter�û�����PopCapΪ��������Ϊ����԰ս��������֪�������������ǲ�������һ�û��Ľ��飬������ͼƻ�����Ҫ��������֡�
	</p>
	<p>
		<br />
	</p>
	<p>
		<br />
	</p>',99,64,0,0,0,0,1,0,1,1,N'admin',N'2012/10/20 9:25:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 8,1,5,N'����Ϊ�����������Wi-Fi����',N'/upload/201210/20/201210202121171718.jpg',N'�����ƻ��ڽ�����ף����ṩ���Wi-Fi�����ĳ�������������2000����֮ǰ���������޹��Һ͵��������ձ���̨���Ѿ�Ϊ�����ṩ��ѵ�Wi-Fi��������',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������Ҫ���ƶ���Ӫ��KT��SK���ź�LG UPlus��ʾ�����ǽ�Ͷ����1000�������ṩ���Wi-Fi�����������ӡ�����ý�屨����������Wi-Fi�����ص���ͼ��ݡ��������غͰ�ʿ��վ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�û������ں����鱨������վ��speed.nia.or.kr��ͨ��������������WiFi�������ӣ��˽⵽���������Wi-Fi������ʹ��һ���򵥵��û������֤�������ѵ�Wi-Fi����
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�����꿪ʼ��������ʵʩKCC�ƻ�����֧�ֵط��������ֻ���Ӫ�̹�ͬ�ֵ����Wi-Fi�ص�Ľ���ɱ�����Щ�ص������ͳ�г����������ĵȵȣ����õط������������ڡ�
</p>',99,41,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 9:31:09')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 9,2,11,N'���ˣ�ZTE��U930 3G�ֻ�����ɫ��TD-SCDMA/GSM',N'/upload/201210/20/small_201210201038276866.jpg',N'1�����׸��塢�����侳4.3��QHD��960540���߷ֱ���5�㴥�ص��ݴ�������16:9��ʾ���������ء����ء����ء���Pixel�� ���� Picture(ͼ��) �� Element��Ԫ�أ����������ʵ���ĸ����ɵģ���������������Ӱ���һ�ֵ�λ����ͬ��Ӱ����Ƭһ��������Ӱ��Ҳ���������Ե�Ũ���׵������ǡ�',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	1�����׸��塢�����侳
</p>
<p>
	<br />
</p>
<p>
	4.3��QHD��960��540���߷ֱ���5�㴥�ص��ݴ�������16:9��ʾ������
</p>
<p>
	����
</p>
<p>
	��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	���ء����ء���Pixel�� ���� Picture(ͼ��) �� Element��Ԫ�أ����������ʵ���ĸ����ɵģ���������������Ӱ���һ�ֵ�λ����ͬ��Ӱ����Ƭһ��������Ӱ��Ҳ���������Ե�Ũ���׵�����������Ӱ��Ŵ��������ᷢ����Щ����ɫ����ʵ�������ɫ�������С��������ɣ���ЩС������ǹ���Ӱ�����С��λ�����ء���Pixel����������С��ͼ�εĵ�Ԫ������Ļ����ʾͨ���ǵ�����Ⱦɫ�㡣Խ��λ�����أ���ӵ�е�ɫ��Ҳ��Խ�ḻ��Խ�ܱ����ɫ����ʵ�С�
</p>
<p>
	�鿴��ϸ����
</p>
<p>
	����Ϊ��PENTILE��ϸ���RGB����������������ʾˮƽ������Ŵ�ͼƬ����ʧ�棬�����˺�֮����
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
	2��"��"�����£��Ų�δ��
</p>
<p>
	<br />
</p>
<p>
	ϸ��ʴ�ƹ���9.9���׵������ᱡ�����ӱ������ݷ�����ƣ�ʹ�������ո�ʮ�����ʡ�
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
	3�����١����졢��Ч
</p>
<p>
	<br />
</p>
<p>
	Nvidia ͬ��˫��1.2GHz��ǿ�ʹ�����,�ṩ�˱�ͬ�����첽˫�˸����ٶȵ�ͬʱ����Ƚ��͹��ģ�1M���������ʹU930���������߶��������У�ʵ�����ٶȵĳ�Խ��
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
	4��ԭ����׿4.0ϵͳ��ȫ����������
</p>
<p>
	<br />
</p>
<p>
	ԭ��̬Android4.0ϵͳ��ȫ��λ���������и��죬��������ݡ�
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
	5�������ͥӰԺ������廷�����ʣ���Ȼ��ɣ�
</p>
<p>
	<br />
</p>
<p>
	SRS��Ч��ˮƽ���ơ���ֱ���Ƶȶ�Ƕ�Ӫ����������������AP25оƬӲ�����٣�����ʵ��1080p������Ƶ����
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
	6��3D��ϷЧ�����ڣ���ǲ���
</p>
<p>
	<br />
</p>
<p>
	Geforce 8��GPUӵ�������ױȵ�ǿ���ý�崦�����������û�����ǰ��δ��3D��Ϸ����
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
	7����ǧ���磬�����ڲ�
</p>
<p>
	<br />
</p>
<p>
	500������ͷ LED����ƣ���������ʶ��ץסÿ��������˲�䣬ͬʱ֧��ȫ�����㣬ʹ�����ӽǸ���������¼�������ж�����
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
	8���������£��ƶ�����������������
</p>
<p>
	<br />
</p>
<p>
	CMMB���ƶ������������������Ӿ磬����������ͣ��
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
	���úŶζ���:
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
	GSM��131��132��134��135��136��137��138��139��151��156��158��159��186��188����֧��3G��
</p>
<p>
	CDMA��133��153��189����֧��3G��
</p>
<p>
	GSM/WCDMA��131��132��134��135��136��137��138��139��151��156��158��159��186��188��֧����ͨ3G��
</p>
<p>
	GSM/TD-CMDA��131��132��134��135��136��137��138��139��151��156��158��159��186��188��֧���ƶ�3G��
</p>
<p>
	CDMA/CDMA2000��133��153��189��֧�ֵ���3G��
</p>
<p>
	<br />
</p>',99,25,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 9:50:27',N'2013/12/10 4:12:16')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 10,2,11,N'���ᣨSONY��ST26i 3G�ֻ�����ɫ��WCDMA/GSM',N'/upload/201210/20/small_201210201039367753.jpg',N'����Ѥ����4Ӣ�����Ļ������������һĿ��Ȼ������������������ϸʱ��Android�ֻ������ö����罻ý����ʾ�ƹ⡣�������Ķ�����������Ļ������֮����ȫ�º��������΢�������к���@���ˣ�Xperia J ST26i��ȫ�����ܺ����ƻ������������ѡ��ƹ⽫��������Ϣ��΢�����¼��������ݡ�',N'<p>
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
	����Ѥ����
</p>
<p>
	<br />
</p>
<p>
	4Ӣ�����Ļ������������һĿ��Ȼ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	����������������ϸ
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	ʱ��Android�ֻ������ö����罻ý����ʾ�ƹ⡣
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�������Ķ���
</p>
<p>
	<br />
</p>
<p>
	���������Ļ������֮����
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
	ȫ�º��������
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
	΢�������к���@���ˣ�Xperia J ST26i��ȫ�����ܺ����ƻ������������ѡ��ƹ⽫��������Ϣ��΢�����¼���������ʱ֪ͨ�� �C ���������ɵ���ʱ�еķ�ʽ������ϵ����ϲ������潻̸������ʹ��ǰ�����������Ƶ���졣
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
	Ϊ������������Ȥ
</p>
<p>
	<br />
</p>
<p>
	�ҵ����ʵĸ����ˣ���WALKMAN��Ӧ�ó���ʹ������ʱ�������֡�ֻ���������������������������Ļ���������ʡ��������ӵ���������������xLoud�����İ����£��������ֻ�����Ϊ�ռ�DJ����̨��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�ڸ������Ļ������
</p>
<p>
	<br />
</p>
<p>
	��4.0Ӣ�����Ļ�����;��ʵ����磬�����������������ϲ����ӰƬ�����ֱ�۵ġ���Ӱ��Ӧ�ó������ĵ㲥����������Ϸ�硣����ʱ�̵��ˣ�ͨ��WLAN��DLNA?��Xperia J ST26i DLNA Android�ֻ����ӵ����ӻ���ƽ����ԣ��������ڸ������Ļ�����;���ͼƬ��
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
	��������
</p>
<p>
	<br />
</p>
<p>
	ʹ��500�������Զ��Խ�������������㻶�ֵ����ݣ���������Ƶ��ʽ���������Ķ�����Ȼ��ֻ�赥��һ�±�ɽ����з���������΢�����ſ�����������Ӧ�ó����йۿ���ϲ������Ƭ����Ƶ��ÿ��ϸ�ڡ�
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
	Music Unlimited*������Ҫ�������֣�����Ӧ�о��С�
</p>
<p>
	<br />
</p>
<p>
	�ɸ�����Ҫͨ�����������ޡ������������׸����������߷�ʽ������û�����˵Ĺ�档������ʮ��Ԥ��Ƶ�����������Լ��������ղ�����ͬ����ͨ�����������ޡ��������������顣
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	*Music Unlimited��һ��ķ����йط������飬����ķ����������ÿ���г����ṩMusic Unlimited����
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
	��������������ѵ�50GB�洢�ռ�*
</p>
<p>
	<br />
</p>
<p>
	�����ṩ50GB����Ѵ洢�ռ䣬�ɴ洢�������֡���Ƶ����Ƭ���������ݡ�������������ʹ�á���������Box?�ṩһ�����ݴ洢�ռ䣬�����������з���Android�����ֻ����������ƽ������е��κ����ݡ�ֻ�����ء�Box for Android��Ӧ�ó���ͨ��Xperia�����ֻ�����һ���ʻ������ӵ��������Ѵ洢�ռ䡣
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	*50GB����ļ��洢��һ����ʱ�Żݻ����2012��12��31�ս�����
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
	�����˽�Xperiaƽ�����
</p>
<p>
	<br />
</p>
<p>
	Xperia�����ֻ�����°��¡���Xperiaƽ����ԡ������Ƴ���һ��Androidƽ����ԣ���ʵ�����ҷ�ˮ�����ڴ���Ļ��������ϲ�����ֻ�Ӧ�ó��������ھ���ྫ�ʡ���Xperia�ֻ��Ϲۿ���Ӱ���ص��Һ����л���ƽ������Ͻ��йۿ������ֻ�����ͼƬ��Ȼ����ƽ������Ͻ��б༭���������趨��Ϸ��Ȼ����ƽ����ԵĴ������ϻ��ܶ��֡�������Xperia���硣���������Ļ������硣�˽�Xperiaƽ�����
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
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 11,1,7,N'ȫ�����һ̨��������ս��Blade��Ϸ��',N'/upload/201210/20/201210202123456206.jpg',N'����ý������ع������15000��Ԫ��Լ��94000Ԫ����ң������ߡ������ս���ɹ��͹������ư�Blade��Ϸ�������ʼǱ�ȫ������1̨�����һ�ͨ�����߹ٷ����ʾ�齱������������յĹ���.',N'<p style="text-align:center;">
	<img alt="" src="/upload/201210/20/201210200953468709.jpg" /> 
</p>
<p>
	<br />
</p>
<p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ս��BladeΪ�˸���ӭ�������������<strong>�Ұ�ɫȫ����Ǻ�һ��������ƹ������Logo��ԭ�����̼�Logo������ɫ�ƹ�Ҳ���滻���˽��ɫ��</strong> 
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ھ�������÷��棬��ս��Blade����һ��17.3Ӣ��ȫ����LED��ʾ��������Ӣ�ض�IVB�ܹ�i7�ĺ˴�������һ��NVIDIA GTX 660M�����Կ���8GB�ڴ��Լ�һ��64GB��̬Ӳ�̺�һ��500GB��еӲ�̡�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���⣬���˱���ΪBlade��Ϸ��������ڵ�LCD��ý�崥�����Լ�10����̬����Ӧ��������ȫ���̳�����֮�⣬�����û�������SwitchbladeϵͳUIҲ����������
	</p>
	<p>
		<br />
	</p>',99,200,0,0,1,1,1,0,1,1,N'admin',N'2012/10/20 9:54:17')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 12,2,11,N'��Ϊ��HUAWEI��Ascend P1 XL U9200E 3G�ֻ����ڣ�WCDMA/GSM',N'/upload/201210/20/small_201210201027425186.jpg',N'�����أ��˵�վ��2600����ʱ��������أ����֮һ������æ�����������֣���ͨ�û�ʹ��3�����ϣ�����խ�ߺͳ�����Ʋ��ö�����ģ���������գ�һ�廯������ܵĽ�����ƣ�������Ϊ64.8���ף�����9.9���ף�ΪP1�����˼����ʵ��ոУ������������ʱ��������˫��1.5GHz��������',N'<p>
	<br />
</p>
<p>
	�����أ�
</p>
<p>
	<br />
</p>
<p>
	�˵�վ��2600����ʱ��������أ����֮һ������æ�����������֣���ͨ�û�ʹ��3�����ϣ�
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
	����խ�ߺͳ������
</p>
<p>
	<br />
</p>
<p>
	���ö�����ģ���������գ�һ�廯������ܵĽ�����ƣ�������Ϊ64.8���ף�����9.9���ף�ΪP1�����˼����ʵ��ոУ������������ʱ��������
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
	˫��1.5GHz������
</p>
<p>
	<br />
</p>
<p>
	˫��1.5GHz Cortex-A9�����������ϻ�Ϊ����Ż��������ٶȸ��죬������3D��ϷҲ������ʤ�Σ�֧����ͨ����21Mbps����
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
	Super AMOLED������ʾ��
</p>
<p>
	<br />
</p>
<p>
	4.3Ӣ��Super AMOLED qHD 960 x 540Ѥ����Ļ����ʾЧ����ϸ�壬�����죬�����������͹β���������ָ�ơ�
</p>
<p>
	<br />
</p>
<p>
	800�����ر���ʽ���
</p>
<p>
	<br />
</p>
<p>
	800������BSI����ʽ�����֧���Զ��Խ���LED������Լ�HDR�Ż�Ч����130������ǰ������ͷ���������������ʻ�����Ȥ���ޡ�
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
	5.1�ű���Ч
</p>
<p>
	<br />
</p>
<p>
	��ͨ���κ�˫����
</p>
<p>
	����
</p>
<p>
	��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�����ں��������û���������������뵽��ߴ���������Ƕ���������Щ��Ʒ�����κνǶ�ȥ���࣬���Ƕ����������࣬�������ϸ�Ĳ�Ʒ���໹�Ǵ��ϰ���Եķ��࣬���Ƕ����ϴ�ҵĶ�������ڶ������У�������ϸ��Ϊ2�֣����гߴ��ȫ�ߴ����������MD��������˵�������������Ѿ�����ӹ�����ˡ�����������ֱ�ӹ�ϵ����Ʒ���ŵ�Ч�������ʹ�õ������ʶ����Ļ�����ʹMD���ٺ�Ҳ��û���õġ���������������Ĳ�Ʒһ����MD��ȻҲ��������ж����ġ�����Ϊ�˷����û�����MD�Ĳٿأ�MD���ԭ��Ķ��������߿��������һ���еĲ�Ʒ�����߿����ϴ���Һ����ʾ�����û�����ͨ�������ϵ��߿�������Ķ�MD���и��ֹ��ܵĲ������������ղ����еĸ�����Ϣ��
</p>
<p>
	�鿴��ϸ����
</p>
<p>
	����5.1������������Ч������֮������ͥӰԺ�����ܡ�
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
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 13,2,12,N'��ʿ��FUJIFILM�� FinePix SL245 ��������а嵥����24����䣬һ�������£����з�',N'/upload/201210/20/small_201210201028435944.jpg',N'��ʿ��24����ѧ�佹 24mm��Ǳ佹��ͷ���������ĸ�ʿ����ͷ�㷺Ӧ���ڸ��и�ҵ��������̫���е����ǡ�����/��Ӱ����غ�С�������Fujifilm���������칤���ṩ�߾��ȵĹ�ѧ��ͷ�ͼ���������ӵ�������24mm��� 24����ѧ�佹��Super EBC - ּ�ڳ��ָ�����ͼ��FinePix SL245�С�',N'<p>
	<br />
</p>
<p>
	��ʿ��24����ѧ�佹 24mm��Ǳ佹��ͷ
</p>
<p>
	<br />
</p>
<p>
	���������ĸ�ʿ����ͷ�㷺Ӧ���ڸ��и�ҵ��������̫���е����ǡ�����/��Ӱ����غ�С�������Fujifilm���������칤���ṩ�߾��ȵĹ�ѧ��ͷ�ͼ���������ӵ�������24mm��� 24����ѧ�佹��
</p>
<p>
	<br />
</p>
<p>
	Super EBC - ּ�ڳ��ָ�����ͼ��
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245�е����о�Ƭȫ��ʹ�ö��Super EBC����������Ĥ�������˴������ּ����뱸��רҵ��Ӱʦ�Ƴ�ĸ�ʿ���㲥���Ӿ�ͷ�ʹ���������ͷʹ�õ�����ͬ����ʽ�����������ɴ�󽵵���Ӱ�;�ͷ���⣬�Ӷ���֤��������ͼ��������
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	45�����ӱ佹
</p>
<p>
	<br />
</p>
<p>
	ǿ������24���佹����������45���佹���ƣ�
</p>
<p>
	�����ÿһ֡�����쳣��׼��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	2cm ��΢��
</p>
<p>
	<br />
</p>
<p>
	ʹ��FinePix SL245�ڽ���2cm�ľ������΢����Ӱʱ�����������������������׽�����µ�ϸ�ڡ�
</p>
<p>
	<br />
</p>
<p>
	�߸й�� CCDλ�ƹ�ѧ����
</p>
<p>
	<br />
</p>
<p>
	����ͼ���������Ϊ�߸й����CCDλ�ƹ�ѧ�������ܵ���ϣ����Է�ֹ������𶯺ͱ��������ƶ������µ�ģ����
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	����ȡ����
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245���и��������ԣ�������ͨ�������������ĵ���ȡ��������ȡ����ͼ��������EVF������ǿ�������չ��µĿ����ԣ��������ɴ�ͳ�����㷽ʽ����˺������ȶ��������ʹʹ������24���佹��������ʱҲ�����⡣����ȵ�������Ը��ݲ�ͬ�˵��۾���������������΢����
</p>
<p>
	<br />
</p>
<p>
	����������3.0Ӣ��LCD��ʾ��
</p>
<p>
	<br />
</p>
<p>
	�������߶Աȶȣ�1:1100����3.0Ӣ��460,000����LCD��ʾ��������160�ȳ����ǣ���ȡ����ͼ���鿴�ͷ���ͼ���Ϊһ����Ȥ��
</p>
<p>
	&nbsp;
</p>
<p>
	6�ֳ�����SR AUTO�����ܳ���ʶ��
</p>
<p>
	<br />
</p>
<p>
	ȡ�����еĳ����ᱻ�Զ�ʶ��ѡ��Ϊ�ʵ����������֮һ��Ф�񡢷羰��ҹ����΢�ࣨ��д����ҹ��Ф��ͱ���Ф��
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	Ф��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�羰
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	ҹ��
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	ͨ�����ټ��ȡ�����е��������Ż��Խ������ȺͰ�ƽ��������Ф����Ƭ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	���Զ�ʶ��羰��Ƭ��ɽ�ͺͽ����������޵���ɫ�����������ա�ɭ�ֺͻ��ܳ�������ɫ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�����������º��������ʱ�����Զ����������ٶȺ͸й�ȣ��������㼫�ٵ�������Ƭ��
</p>
<p>
	<br />
</p>
<p>
	&nbsp;
</p>
<p>
	΢�ࣨ��д��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	ҹ��Ф��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	����Ф��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	΢�ࣨ��д��ģʽ�ɾ�ȷ����С����΢С����ϸ�ڵĶԽ�λ�á�
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	������������������������ʱ�����ܳ���ʶ��SR Auto�����Ż�Ф����������Ч��Χ�������ٶȺ��ع⣬ͬʱ����ı�������������������
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	��ͨ���򱳹����������Ӱ���عⲻ����������Ƚ����Ż���
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�������ȹ���
</p>
<p>
	<br />
</p>
<p>
	�������ȹ���ͨ��ʶ�����������ڶԽ����ع��������Ƭ�����Ż����Ա�֤�����Ư������Ƭ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	գ�۲���
</p>
<p>
	<br />
</p>
<p>
	�������������գ�ۣ�����ᷢ�����棬����ѡ��������Ƭ��Ŵ������Ծ������滹��ɾ��ͼ��Ȼ���ٿ�ʼ������һ����Ƭ��
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
	Ц��ģʽ
</p>
<p>
	<br />
</p>
<p>
	����Ц��ʱ��������λ�е�Ц��ģʽ���Զ��ͷſ��ţ�ȷ����������������������ɰ���Ц��ʱû�м�ʱ���¡�
</p>
<p>
	&nbsp;
</p>
<p>
	<br />
</p>
<p>
	����ʶ��
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245�������Լ�⵽�����е����������ҿ���ʶ���ض�������������������ע��8���ˣ��´��ĵ����ǵ�ʱ�򣬿��Ե������ǵ����֣�������ע������������Ż����á��ط�ʱ����������������ע���������ȫ����Ƭ�����ٲ�������Ҫ����Ƭ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�ƶ�ȫ������
</p>
<p>
	<br />
</p>
<p>
	����ȫ����Ƭ����׾٣�����Զ���3�������������Ƭƴ��������ʹ�ÿ�����ȷ��ͼ����롣�Ӷ�����������Ӿ��������ȫ����Ƭ�����ڴ洢���С�
</p>
<p>
	<br />
</p>
<p>
	HDTV���ݵ���Ƭ�͵�Ӱ
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	FinePix SL245����16:9��ʽ����߷ֱ��ʵ���Ƭ�͵�Ӱ���������鼫��������HDTVȫ��ͼ����ʾ��
</p>
<p>
	��16:9��ʽ����߷ֱ��ʵ�ͼ��
</p>
<p>
	<br />
</p>
<p>
	��Ƭ����
</p>
<p>
	<br />
</p>
<p>
	��16:9��ʽ����߷ֱ��ʵ�ͼ��4,288 x 2,416���ء�3072 x 1728���ء�1920 x 1080���أ���
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	��Ӱ����
</p>
<p>
	<br />
</p>
<p>
	��16:9��ʽ��1,280 x 720���أ�����߷ֱ��ʵ�ͼ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	ʹ�����õ��罻��վ��������ͼ��
</p>
<p>
	<br />
</p>
<p>
	���õȵ��˼��Ժ��ȥѡ��������Ƭ�ϴ���FACEBOOK������Ҫ�������Ƭ���ϱ�ǩ���������п�ʼ������һ�����ӵ�����ĵ���ʱ����ɽ�ͼ���Զ��ϴ���������Ҫ�ϴ���YouTube?�ĵ�ӰƬ�Σ�Ҳ��ͬ��������
</p>
<p>
	<br />
</p>
<p>
	��MyFinePix Studio�����ϴ���YouTube?��FACEBOOK
</p>
<p>
	����˼򵥣�������Ƭ��������ϴ���FACEBOOK����ҳ��YouTube?�˻���
</p>
<p>
	<br />
</p>',99,61,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 9:55:50',N'2013/12/10 4:11:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 14,2,12,N'�῵��NIKON�� Coolpix L310 ��Я���������1408������ 3���� 21����� 25mm��� ��������',N'/upload/201210/20/small_201210201030215722.jpg',N'������š����۵�21����ѧ�佹��Ч���ء����ء����ء���Pixel�� ���� Picture(ͼ��) �� Element��Ԫ�أ����������ʵ���ĸ����ɵģ���������������Ӱ���һ�ֵ�λ����ͬ��Ӱ����Ƭһ��������Ӱ��Ҳ���������Ե�Ũ���׵�����������Ӱ��Ŵ��������ᷢ����Щ����ɫ����ʵ������࡭',N'<p>
	������š����۵�21����ѧ�佹
</p>
<p>
	<br />
</p>
<p>
	��Ч
</p>
<p>
	����
</p>
<p>
	��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	���ء����ء���Pixel�� ���� Picture(ͼ��) �� Element��Ԫ�أ����������ʵ���ĸ����ɵģ���������������Ӱ���һ�ֵ�λ����ͬ��Ӱ����Ƭһ��������Ӱ��Ҳ���������Ե�Ũ���׵�����������Ӱ��Ŵ��������ᷢ����Щ����ɫ����ʵ�������ɫ�������С��������ɣ���ЩС������ǹ���Ӱ�����С��λ�����ء���Pixel����������С��ͼ�εĵ�Ԫ������Ļ����ʾͨ���ǵ�����Ⱦɫ�㡣Խ��λ�����أ���ӵ�е�ɫ��Ҳ��Խ�ḻ��Խ�ܱ����ɫ����ʵ�С�
</p>
<p>
	�鿴��ϸ����
</p>
<p>
	�ɴ�1,408��21����ѧ�佹��˶���ͷ���Ǵ�25mm�����525mm��Զ�㣨�൱��35mm[135]��ʽ�Ļ��ǣ��Ŀ������෶Χ�����䱸3Ӣ�硢Լ23�򻭵㣨QVGA��TFT Һ����ʾ����
</p>
<p>
	<br />
</p>
<p>
	21����ѧ�佹��˶���ͷ
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	21����ѧ�佹��˶���ͷ* 25���׹�ǵ�525���׳�Զ�㷶Χ����ͼ���ɣ��ָ����ʣ�1408�����ص������ֱ��������῵EXPEED C2ͼ����������Ż���������޶ȵ����Ӱ��������
</p>
<p>
	*35mm��ʽ�൱ֵ
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�߷ֱ���LCD��ʾ�����������
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	7.5����(3Ӣ��)Լ23�򻭵�TFT LCD��ʾ����װ����������ͻ��λ�ã��������῵�����Ĳ�ɫ��ʾ����������޶ȵ�����˷ֱ��ʣ������������⣬�����ṩ������Ӱ�񡣾���ϸ������ǣ����Ƽ�����Ż��˷����Ժ�ʵ���ԡ�
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	�����ܴ�������Ӱ��
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	ͼ���Ӧ��λ�ƺ͵��Ӽ������ϡ�����̬��⡱��������ISO 6400�ĸй�����ã�������ʼ�ջ��������Ӱ�񡣷������幤��ѧ����ƣ���һ��ʹ������ȶ���������˳����
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
	��������
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	��3���ٶȵ��˶�����ģʽ(�ߡ��С���)
</p>
<p>
	��֧�ֳ���AA���
</p>
<p>
	�����г����Զ�ѡ�����ġ������Զ���ģʽ
</p>
<p>
	����������ϵͳ
</p>
<p>
	��������ģʽ
</p>
<p>
	<br />
</p>',99,60,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 9:59:12',N'2013/12/10 4:11:43')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 15,2,13,N'NBA 8GB Micro SDHC��TF���洢�� Class 6����ɫ��',N'/upload/201210/20/small_201210201043119922.jpg',N'��Ҫ���� �洢����8GB��ɫ��ɫ����(g)12.5g��ȡ���ݴ�����(MB/S)25MB/Sд�����ݴ����ٶ�(MB/S)10MB/S���������洢����8GB��ɫ��ɫ��Ʒ�ߴ�53179mm����(g)12.5g����������ȡ���ݴ�����(MB/S)25MB/Sд�����ݴ����ٶ�(MB/S)10MB/S�����ص���ǲ��ʣ���',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	��Ҫ����
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
	�洢����
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
	��ɫ
</p>
<p>
	<br />
</p>
<p>
	��ɫ
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
	����(g)
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
	��ȡ���ݴ�����(MB/S)
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
	д�����ݴ����ٶ�(MB/S)
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
	��������
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
	�洢����
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
	��ɫ
</p>
<p>
	<br />
</p>
<p>
	��ɫ
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
	��Ʒ�ߴ�
</p>
<p>
	<br />
</p>
<p>
	53��17��9mm
</p>
<p>
	<br />
</p>
<p>
	����(g)
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
	��������
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
	��ȡ���ݴ�����(MB/S)
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
	д�����ݴ����ٶ�(MB/S)
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
	�����ص�
</p>
<p>
	<br />
</p>
<p>
	��ǲ��ʣ���
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>',99,22,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:00:14',N'2013/12/10 4:11:36')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 23,1,8,N'�곞Tegra 3������ƽ��229.99��Ԫ',N'/upload/201210/20/201210202127247004.jpg',N'�ȸ�Nexus7�ɹ�������������Ը��Ϊ����ǿ���Ҿ���ʵ�ݵ�7Ӣ��ƽ�������Ǯ������̨�峧�̺곞Ҳ׼���Ƴ��Լ���7Ӣ���Ʒ���곞Iconia Tab A110��',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�곞Iconia Tab A110ӵ��һ��7Ӣ����ʾ�����ֱ���1024��600������NVIDIA Tegra3�ĺ˴���������Ƶ1.2GHz��1GB�ڴ��8GB�洢�ռ䣬����ϵͳ����Android4.1��������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�곞Iconia Tab A110ƽ�御����Ļ���ܲ���Nexus7�����곞Ϊ���ƽ����Լ���microSD����ۣ�֧�ָߴ�32GB�Ķ���洢�ռ䡣
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�곞Iconia Tab A110֧��Wi-Fi 802.11 b/g/n������3.0������΢��USB��΢��HDMI�˿ڣ�һ��200�����ص�ǰ������ͷ��������Ƶͨ�����곞Iconia Tab A110�����������7����Сʱ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�곞Iconia Tab A110����10��30���������ͼ��ô��ۣ��۸�229.99��Ԫ��
</p>',99,39,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 10:13:03')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 26,2,17,N'΢��ƽ�����Surface wWinRT-32GB Bndl SC ChnSimp Hdwr',N'/upload/201210/20/small_201210202310110337.jpg',N'<span style="line-height:25px;font-size:12px;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121019171007.jpg" width="740" height="943" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121017094240.jpg" width="740" height="688" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121017094249.jpg" width="740" height="719" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121019102815.jpg" width="740" height="960" /><br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/103069816_20121017094305.jpg" width="740" height="560" /></span>',99,144,0,0,1,1,1,1,0,1,N'admin',N'2012/10/20 10:22:24')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 39,3,28,N'�̷���Ů',N'/upload/201210/20/small_201210201104382108.jpg',N'�̷�Ҳ�в�һ������',99,18,0,0,0,0,0,0,1,1,N'admin',N'2012/10/20 11:05:35')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 41,1,9,N'599Ԫ�İ�׿4.0�ֻ���4��/˫��/˫��˫��',N'/upload/201210/22/201210220945138641.jpg',N'����С����˫�˰�֮�����ܵ�����û��Ĺ�ע����699Ԫ���ۼ�ռ�к���Ҫ�����ء�����Ŧ��Ҳ�ó������ǵ�����˫�����ܻ����������ۼ۸���ֻ��599Ԫ��',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ʵ֮ǰŦ�����Ƴ���һ��˫���ֻ�NM860�������õ���1GB RAM����֪�����ں���ԭ�����Ŧ���Ըû����������¶�λ��������Ҳ�ĳ���NX��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;NX������9.8mm��<strong>�䱸����4�紥�������ֱ���Ϊ800��480����</strong>��<strong>���ص�����Ƶ1GHz��MT6577˫�˴�����������512MB 
RAM��4GB�洢�ռ�</strong>��ͬʱ�ṩ����500����������ͷ��ǰ������ͷΪ30�����أ���<strong>���е���Android 
4.0ϵͳ</strong>��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��������������NX�뱱��˫��С����������ͬ�������������������Ǵ���˫�˴��������ͺţ�<strong>����ǰ��ΪMT6577��Cortex 
A9�ܹ�/PowerVR SGX531ultra��������MSM8225��Cortex A5�ܹ�/CPU 
Adreno203��������������������MT6577����Ҫǿ��MS8225��</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Ϥ������ֻ�������11�³���ʽ���У��ۼ�Ϊ599Ԫ��
</p>',99,10,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:07:11')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 16,2,13,N'��֥��TOSHIBA��16GB SDHC���ٴ��濨��class10��',N'/upload/201210/20/small_201210201041028868.jpg',N'��Ҫ���� ���濨����SDHC�����濨����16GBд���ٶ�(MB/s)6MB/s�����������濨����SDHC�����濨����16GBд���ٶ�(MB/s)6MB/s',N'<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	��Ҫ����
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
	���濨����
</p>
<p>
	<br />
</p>
<p>
	SDHC��
</p>
<p>
	<br />
</p>
<p>
	���濨����
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
	д���ٶ�(MB/s)
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
	��������
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
	���濨����
</p>
<p>
	<br />
</p>
<p>
	SDHC��
</p>
<p>
	<br />
</p>
<p>
	���濨����
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
	д���ٶ�(MB/s)
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
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 17,2,15,N'���ǣ�SAMSUNG��NP3445VC-S01CN 14Ӣ��ʼǱ�����',N'/upload/201210/20/small_201210201051542905.jpg',N'����3445VC-S01��ϸ�����л�����ͳ���������������ʱ�䣺2012��08�²�Ʒ���ͣ����ò�Ʒ��λ��ȫ��ѧ��������оƬ�飺AMD A70M ������CPUϵ�У�AMD A6ϵ��CPU�ͺţ�AMD Trinity APU A6-4400MCPU��Ƶ��2.7GHz����Ƶ��3200MHz�������棺2MB�������ͣ�Trinity����/�߳�����˫��',N'<div class="detail-content" align="left">
	<p>
		<br />
����3445VC-S01��ϸ����<br />
�л�����ͳ����
	</p>
	<p>
		��������
	</p>
	<p>
		<br />
����ʱ�䣺2012��08��<br />
��Ʒ���ͣ�����<br />
��Ʒ��λ��ȫ��ѧ����<br />
����оƬ�飺AMD A70M<br />
&nbsp;
	</p>
	<p>
		<br />
������
	</p>
	<p>
		<br />
CPUϵ�У�AMD A6ϵ��<br />
CPU�ͺţ�AMD Trinity APU A6-4400M<br />
CPU��Ƶ��2.7GHz<br />
����Ƶ��3200MHz<br />
�������棺2MB<br />
�������ͣ�Trinity<br />
����/�߳�����˫����<br />
���ģ�35W<br />
&nbsp;
	</p>
	<p>
		<br />
�洢�豸
	</p>
	<p>
		<br />
�ڴ�������2GB<br />
�ڴ����ͣ�DDR3 1333MHz<br />
����ڴ�������16GB<br />
Ӳ��������500GB<br />
Ӳ��������5400ת��SATA<br />
�������ͣ�DVD��¼��<br />
������ͣ���������<br />
����������֧��DVD SuperMulti˫���¼<br />
&nbsp;
	</p>
	<p>
		<br />
��ʾ��
	</p>
	<p>
		<br />
��Ļ�ߴ磺14Ӣ��<br />
��Ļ������16:9<br />
��Ļ�ֱ��ʣ�1366x768<br />
���⼼����LED����<br />
&nbsp;
	</p>
	<p>
		<br />
�Կ�
	</p>
	<p>
		<br />
�Կ����ͣ�˫�Կ������������ɣ�<br />
�Կ�оƬ��AMD Radeon HD 7670M��AMD Radeon HD 7520G<br />
�Դ�������2GB<br />
�Դ����ͣ�DDR3<br />
�Դ�λ��128bit<br />
��������������480<br />
DirectX��11<br />
&nbsp;
	</p>
	<p>
		<br />
��ý���豸
	</p>
	<p>
		<br />
����ͷ������30����������ͷ<br />
��Ƶϵͳ��������ЧоƬ<br />
������������������<br />
��˷磺������˷�<br />
&nbsp;
	</p>
	<p>
		<br />
����ͨ��
	</p>
	<p>
		<br />
����������֧��802.11b/g/n����Э��<br />
����������1000Mbps��̫����<br />
������֧�֣�����4.0ģ��<br />
&nbsp;
	</p>
	<p>
		<br />
I/O�ӿ�
	</p>
	<p>
		<br />
���ݽӿڣ�1��USB2.0+2��USB3.0<br />
��Ƶ�ӿڣ�VGA��HDMI<br />
��Ƶ�ӿڣ���������ӿڣ���˷�����ӿ�<br />
�����ӿڣ�RJ45������ӿڣ�����Դ�ӿ�<br />
��������4��1��������SD��SDHC��SDXC��MMC��<br />
&nbsp;
	</p>
	<p>
		<br />
�����豸
	</p>
	<p>
		<br />
ָȡ�豸��������<br />
����������ȫ�ߴ����<br />
&nbsp;
	</p>
	<p>
		<br />
��Դ����
	</p>
	<p>
		<br />
������ͣ�6о﮵��<br />
����ʱ�䣺����ʱ����ʹ�û�������<br />
��Դ��������100V-240V 60W ����Ӧ������Դ������<br />
&nbsp;
	</p>
	<p>
		<br />
���
	</p>
	<p>
		<br />
�ʼǱ�������2.25Kg<br />
��ǲ��ʣ����ϲ���<br />
���������̩̹��<br />
&nbsp;
	</p>
	<p>
		<br />
����
	</p>
	<p>
		<br />
���������Samsung Recovery Solution<br />
&nbsp;
	</p>
	<p>
		<br />
�ʼǱ�����
	</p>
	<p>
		<br />
��װ�嵥���ʼǱ����� x1<br />
&nbsp;��� x1 <br />
��Դ������ x1<br />
&nbsp;��Դ�� x1<br />
&nbsp;˵���� x1<br />
&nbsp;���޿� x1<br />
&nbsp;�ʼǱ��� x1<br />
&nbsp;
	</p>
	<p>
		<br />
������Ϣ
	</p>
	<p>
		<br />
�������ߣ�ȫ��������������������<br />
�ʱ�ʱ�䣺1��<br />
�ʱ���ע������1�꣬��Ҫ����2�꣬���12����<br />
�ͷ��绰��400-810-5858<br />
�绰��ע����һ�����壺8:00-21:00�����������գ�8:00-17:00<br />
��ϸ���ݣ����չ��ҡ����������涨ִ���ڱ������ڣ�������Ʒ������������Ĺ��ϣ���˿�ƾ����õı��޿�������������Ʊ��ȫ������������Ȩ��ά������������ѱ��޷��񡣲��������ڸ�װ���װ�������ܺ���ֹ��ϵĻ��������޿�������Ʊһ��Ϳ�ģ����޼���ʧЧ����˿����Ʊ��湺����Ʊ�ͱ���֤��һͬ��Ϊ����ƾ֤����ʧ������<br />
&nbsp;
	</p>
</div>',99,38,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:05:14',N'2013/12/10 4:11:16')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 18,2,15,N'��֥��TOSHIBA��C805-S51B 14Ӣ��ʼǱ����ԣ�i5-3210M 2G 500G HD 7610M 1G���� USB3.0 Win7��������',N'/upload/201210/20/small_201210201033194448.jpg',N'��Ļ�ߴ磺14Ӣ�� 1366x768CPU�ͺţ�Intel ���i5 3210M CPU��Ƶ��2.5GHz �ڴ�������2GB DDR3 1600MHzӲ��������500GB 5400ת��SATA�Կ�оƬ��AMD Radeon HD 7610M��Intel GMA...����ϵͳ��Windows 7 Home Basic 64bit��64...����ͷ������130����������ͷ �������ͣ�DVD��¼����',N'<p>
	��Ļ�ߴ磺14Ӣ�� 1366x768<br />
CPU�ͺţ�Intel ���i5 3210M <br />
CPU��Ƶ��2.5GHz <br />
�ڴ�������2GB DDR3 1600MHz<br />
Ӳ��������500GB 5400ת��SATA<br />
�Կ�оƬ��AMD Radeon HD 7610M��Intel GMA...<br />
����ϵͳ��Windows 7 Home Basic 64bit��64...<br />
����ͷ������130����������ͷ <br />
�������ͣ�DVD��¼�� ֧��DVD SuperMulti...<br />
����������֧��802.11b/g/n����Э�� <br />
�ʼǱ�������2.1Kg <br />
����������1000Mbps��̫����
</p>
<p>
	<br />
��֥C805-S51B�������ڣ���ϸ����
</p>
<p>
	&nbsp;
</p>
<p>
	��������
</p>
<p>
	<br />
����ʱ�䣺2012��07��<br />
��Ʒ���ͣ�����<br />
��Ʒ��λ��ȫ��ѧ����<br />
����ϵͳ��Windows 7 Home Basic 64bit��64λ��ͥ��ͨ�棩<br />
&nbsp;
</p>
<p>
	<br />
������
</p>
<p>
	<br />
CPUϵ�У�Ӣ�ض� ���i5 3��ϵ�У�Ivy Bridge��<br />
CPU�ͺţ�Intel ���i5 3210M<br />
CPU��Ƶ��2.5GHz<br />
����Ƶ��3100MHz<br />
���߹��DMI 5 GT/s<br />
�������棺3MB<br />
�������ͣ�Ivy Bridge<br />
����/�߳�����˫����/���߳�<br />
�Ƴ̹��գ�22nm<br />
ָ���AVX��64bit<br />
���ģ�35W<br />
&nbsp;
</p>
<p>
	<br />
�洢�豸
</p>
<p>
	<br />
�ڴ�������2GB<br />
�ڴ����ͣ�DDR3 1600MHz<br />
���������2xSO-DIMM<br />
����ڴ�������16GB<br />
Ӳ��������500GB<br />
Ӳ��������5400ת��SATA<br />
�������ͣ�DVD��¼��<br />
������ͣ���������<br />
����������֧��DVD SuperMulti˫���¼<br />
&nbsp;
</p>
<p>
	<br />
��ʾ��
</p>
<p>
	<br />
��Ļ�ߴ磺14Ӣ��<br />
��Ļ������16:9<br />
��Ļ�ֱ��ʣ�1366x768<br />
���⼼����LED����<br />
��Ļ�����������Ų���<br />
&nbsp;
</p>
<p>
	<br />
�Կ�
</p>
<p>
	<br />
�Կ����ͣ�˫�Կ������������ɣ�<br />
�Կ�оƬ��AMD Radeon HD 7610M��Intel GMA HD 4000<br />
�Դ�������1GB<br />
�Դ����ͣ�DDR3<br />
�Դ�λ��128bit<br />
��������������400<br />
DirectX��11<br />
&nbsp;
</p>
<p>
	<br />
��ý���豸
</p>
<p>
	<br />
����ͷ������130����������ͷ<br />
��Ƶϵͳ��������ЧоƬ<br />
������������������<br />
��˷磺������˷�<br />
&nbsp;
</p>
<p>
	<br />
����ͨ��
</p>
<p>
	<br />
����������֧��802.11b/g/n����Э��<br />
����������1000Mbps��̫����<br />
&nbsp;
</p>
<p>
	<br />
I/O�ӿ�
</p>
<p>
	<br />
���ݽӿڣ�2��USB2.0+1��USB3.0<br />
��Ƶ�ӿڣ�VGA��HDMI<br />
��Ƶ�ӿڣ���������ӿڣ���˷�����ӿ�<br />
�����ӿڣ�RJ45������ӿڣ�����Դ�ӿ�<br />
�����������1��������SD��SDHC��SDXC��MMC��Memory Stick��Memory Stick Pro��<br />
&nbsp;
</p>
<p>
	<br />
�����豸
</p>
<p>
	<br />
ָȡ�豸��������<br />
����������86�����幤��ѧ���̣������弰�����忪�ؿ��Ƽ���Windows��ݼ���Ӧ�ó������FN�����ȼ�<br />
����ʶ��֧����������ʶ����<br />
&nbsp;
</p>
<p>
	<br />
��Դ����
</p>
<p>
	<br />
������ͣ�6о﮵�أ�4800����<br />
����ʱ�䣺����ʱ����ʹ�û�������<br />
&nbsp;
</p>
<p>
	<br />
���
</p>
<p>
	<br />
�ʼǱ�������2.1Kg<br />
���ȣ�341mm<br />
��ȣ�232mm<br />
��ȣ�27.9-32.5mm<br />
��ǲ��ʣ����ϲ���<br />
���������������<br />
&nbsp;
</p>
<p>
	<br />
����
</p>
<p>
	<br />
���������������<br />
��ȫ���ܣ�Ӳ�����룬Kensington����<br />
&nbsp;
</p>
<p>
	<br />
�ʼǱ�����
</p>
<p>
	<br />
��װ�嵥���ʼǱ����� x1<br />
&nbsp;��� x1<br />
&nbsp;��Դ������ x1<br />
&nbsp;��Դ�� x1<br />
&nbsp;˵���� x1<br />
&nbsp;���޿� x1<br />
&nbsp;
</p>
<p>
	<br />
������Ϣ
</p>
<p>
	<br />
�������ߣ��������ޱ�֤��������������<br />
�ʱ�ʱ�䣺1��<br />
�ʱ���ע��1��������ޱ�֤����Ҫ��������2�꣬���1��<br />
�ͷ��绰��800-820-2048<br />
�绰��ע��9:00-17:00���ڼ�����Ϣ��<br />
��ϸ���ݣ���֥�������磨�Ϻ������޹�˾����Ʊ���˾�������л����񹲺͹���ط��ɷ����ƶ����������ߣ����������û����л����񹲺͹�����(�ۡ��ġ�̨��������)ͨ���Ϸ�;������ı���˾��������Ķ�֥�ʼǱ����Բ�Ʒ������������Ʊ������ƾ֤����ÿ��Ҫ��ά��ʱЯ��������˾�ṩ�ı������ڵı�����ָ��������Ѻ��˹��ѵ�ά�޷���<br />
&nbsp;
</p>
<!-- End Save for Web Slices -->',99,23,0,0,1,0,0,1,0,1,N'admin',N'2012/10/20 10:06:25',N'2013/12/10 4:11:04')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 19,2,16,N'���ǣ�SAMSUNG��NP530U4C-A01CN 14Ӣ�糬���� (i5-2537M 4G 500G+SSD 24G ��о�Կ� WIN7 ��������ɫ',N'/upload/201210/20/small_201210201034383555.jpg',N'��Ļ�ߴ磺14Ӣ�� 1366x768CPU�ͺţ�Intel ���i5 2537M CPU��Ƶ��1.4GHz �ڴ�������4GB DDR3 1333MHzӲ��������24GB+500GB SSD+5400ת��SATA�Կ�оƬ��Intel GMA HD 3000 ����ϵͳ��Windows 7 Home Basic 64bit��64...����ͷ������130����������ͷ �������ͣ�DVD��¼�� ֧��D��',N'<p>
	��Ļ�ߴ磺14Ӣ�� 1366x768<br />
CPU�ͺţ�Intel ���i5 2537M <br />
CPU��Ƶ��1.4GHz <br />
�ڴ�������4GB DDR3 1333MHz<br />
Ӳ��������24GB+500GB SSD+5400ת��SATA<br />
�Կ�оƬ��Intel GMA HD 3000 <br />
����ϵͳ��Windows 7 Home Basic 64bit��64...<br />
����ͷ������130����������ͷ <br />
�������ͣ�DVD��¼�� ֧��DVD SuperMulti...<br />
����������֧��802.11b/g/n����Э�� <br />
������֧�֣�����3.0ģ�� <br />
����������1000Mbps��̫����
</p>
<p>
	<br />
����530U4C-A01��ϸ����
</p>
<p>
	<br />
��������
</p>
<p>
	<br />
����ʱ�䣺2012��08��<br />
��Ʒ���ͣ�����<br />
��Ʒ��λ���ᱡ��Я����Ultrabook�ʼǱ�<br />
����ϵͳ��Windows 7 Home Basic 64bit��64λ��ͥ��ͨ�棩<br />
&nbsp;
</p>
<p>
	<br />
������
</p>
<p>
	<br />
CPUϵ�У�Ӣ�ض� ���i5 2��ϵ�У�Sandy Bridge��<br />
CPU�ͺţ�Intel ���i5 2537M<br />
CPU��Ƶ��1.4GHz<br />
����Ƶ��2300MHz<br />
���߹��DMI 5 GT/s<br />
�������棺3MB<br />
�������ͣ�Sandy Bridge<br />
����/�߳�����˫����/���߳�<br />
�Ƴ̹��գ�32nm<br />
ָ���AVX��64bit<br />
���ģ�17W<br />
&nbsp;
</p>
<p>
	<br />
�洢�豸
</p>
<p>
	<br />
�ڴ�������4GB<br />
�ڴ����ͣ�DDR3 1333MHz<br />
����ڴ�������16GB<br />
Ӳ��������24GB+500GB<br />
Ӳ��������SSD+5400ת��SATA<br />
�������ͣ�DVD��¼��<br />
������ͣ���������<br />
����������֧��DVD SuperMulti˫���¼<br />
&nbsp;
</p>
<p>
	<br />
��ʾ��
</p>
<p>
	<br />
��Ļ�ߴ磺14Ӣ��<br />
��Ļ������16:9<br />
��Ļ�ֱ��ʣ�1366x768<br />
���⼼����LED����<br />
��Ļ��������ѣ�������<br />
&nbsp;
</p>
<p>
	<br />
�Կ�
</p>
<p>
	<br />
�Կ����ͣ���о�Կ�<br />
�Կ�оƬ��Intel GMA HD 3000<br />
�Դ������������ڴ�����<br />
�Դ����ͣ���<br />
DirectX��11<br />
&nbsp;
</p>
<p>
	<br />
��ý���豸
</p>
<p>
	<br />
����ͷ������130����������ͷ<br />
��Ƶϵͳ��������ЧоƬ<br />
������������������<br />
��˷磺������˷�<br />
&nbsp;
</p>
<p>
	<br />
����ͨ��
</p>
<p>
	<br />
����������֧��802.11b/g/n����Э��<br />
����������1000Mbps��̫����<br />
������֧�֣�����3.0ģ��<br />
&nbsp;
</p>
<p>
	<br />
I/O�ӿ�
</p>
<p>
	<br />
���ݽӿڣ�1��USB2.0+3��USB3.0<br />
��Ƶ�ӿڣ�VGA��HDMI<br />
��Ƶ�ӿڣ���������ӿڣ���˷�����ӿ�<br />
�����ӿڣ�RJ45������ӿڣ�����Դ�ӿ�<br />
��������4��1��������SD��SDHC��SDXC��MMC��<br />
&nbsp;
</p>
<p>
	<br />
�����豸
</p>
<p>
	<br />
ָȡ�豸��������<br />
����������ȫ�ߴ����<br />
&nbsp;
</p>
<p>
	<br />
��Դ����
</p>
<p>
	<br />
������ͣ��ۺ�����<br />
����ʱ�䣺����ʱ����ʹ�û�������<br />
&nbsp;
</p>
<p>
	<br />
���
</p>
<p>
	<br />
��ǲ��ʣ�þ���Ͻ�<br />
�������������ɫ<br />
&nbsp;
</p>
<p>
	<br />
����
</p>
<p>
	<br />
���������Samsung Recovery Solution<br />
��ȫ���ܣ���ȫ����<br />
&nbsp;
</p>
<p>
	<br />
�ʼǱ�����
</p>
<p>
	<br />
��װ�嵥���ʼǱ����� x1<br />
&nbsp;��Դ������ x1<br />
&nbsp;��Դ�� x1<br />
&nbsp;˵���� x1<br />
&nbsp;���޿� x1<br />
&nbsp;�ʼǱ��� x1<br />
&nbsp;
</p>
<p>
	<br />
������Ϣ
</p>
<p>
	<br />
�������ߣ�ȫ��������������������<br />
�ʱ�ʱ�䣺1��<br />
�ʱ���ע������1�꣬��Ҫ����2�꣬���12����<br />
�ͷ��绰��400-810-5858<br />
�绰��ע����һ�����壺8:00-21:00�����������գ�8:00-17:00<br />
��ϸ���ݣ����չ��ҡ����������涨ִ���ڱ������ڣ�������Ʒ������������Ĺ��ϣ���˿�ƾ����õı��޿�������������Ʊ��ȫ������������Ȩ��ά������������ѱ��޷��񡣲��������ڸ�װ���װ�������ܺ���ֹ��ϵĻ��������޿�������Ʊһ��Ϳ�ģ����޼���ʧЧ����˿����Ʊ��湺����Ʊ�ͱ���֤��һͬ��Ϊ����ƾ֤����ʧ������<br />
&nbsp;
</p>',99,24,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:08:16',N'2013/12/10 4:10:55')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 20,2,16,N'���ᣨSONY��SVT13117ECS 13.3Ӣ�糬������i5-3317U 4G 500G+32GSSD ���� USB3.0 WIN7 ����',N'/upload/201210/20/small_201210201036462871.jpg',N'��Ļ�ߴ磺13.3Ӣ�� 1366x768CPU�ͺţ�Intel ���i5 3317U CPU��Ƶ��1.7GHz �ڴ�������4GB DDR3 1600MHzӲ��������32GB+500GB SSD+5400ת��SATA�Կ�оƬ��Intel GMA HD 4000 ����ϵͳ��Windows 7 Home Basic 64bit��64...����ͷ����������ͷ �������ͣ������ù��� ����������֧��',N'<p align="center">
	&nbsp;
</p>
<p>
	��Ļ�ߴ磺13.3Ӣ�� 1366x768<br />
CPU�ͺţ�Intel ���i5 3317U <br />
CPU��Ƶ��1.7GHz <br />
�ڴ�������4GB DDR3 1600MHz<br />
Ӳ��������32GB+500GB SSD+5400ת��SATA<br />
�Կ�оƬ��Intel GMA HD 4000 <br />
����ϵͳ��Windows 7 Home Basic 64bit��64...<br />
����ͷ����������ͷ <br />
�������ͣ������ù��� <br />
����������֧��802.11b/g/n����Э�� <br />
�ʼǱ�������1.6Kg <br />
������֧�֣�����4.0ģ��
</p>
<p>
	<br />
����T13117ECS��������ϸ����
</p>
<p>
	<br />
��������
</p>
<p>
	<br />
����ʱ�䣺2012��05��<br />
��Ʒ���ͣ�����<br />
��Ʒ��λ���ᱡ��Я����Ultrabook�ʼǱ�<br />
����ϵͳ��Windows 7 Home Basic 64bit��64λ��ͥ��ͨ�棩<br />
&nbsp;
</p>
<p>
	<br />
������
</p>
<p>
	<br />
CPUϵ�У�Ӣ�ض� ���i5 3��ϵ�У�Ivy Bridge��<br />
CPU�ͺţ�Intel ���i5 3317U<br />
CPU��Ƶ��1.7GHz<br />
����Ƶ��2600MHz<br />
���߹��DMI 5 GT/s<br />
�������棺3MB<br />
�������ͣ�Ivy Bridge<br />
����/�߳�����˫����/���߳�<br />
�Ƴ̹��գ�22nm<br />
ָ���AVX��64bit<br />
���ģ�17W<br />
&nbsp;
</p>
<p>
	<br />
�洢�豸
</p>
<p>
	<br />
�ڴ�������4GB<br />
�ڴ����ͣ�DDR3 1600MHz<br />
���������1xSO-DIMM<br />
����ڴ�������16GB<br />
Ӳ��������32GB+500GB<br />
Ӳ��������SSD+5400ת��SATA<br />
�������ͣ������ù���<br />
&nbsp;
</p>
<p>
	<br />
��ʾ��
</p>
<p>
	<br />
��Ļ�ߴ磺13.3Ӣ��<br />
��Ļ������16:9<br />
��Ļ�ֱ��ʣ�1366x768<br />
���⼼����LED����<br />
&nbsp;
</p>
<p>
	<br />
�Կ�
</p>
<p>
	<br />
�Կ����ͣ���о�Կ�<br />
�Կ�оƬ��Intel GMA HD 4000<br />
�Դ������������ڴ�����<br />
�Դ����ͣ���<br />
DirectX��11<br />
&nbsp;
</p>
<p>
	<br />
��ý���豸
</p>
<p>
	<br />
����ͷ����������ͷ<br />
��Ƶϵͳ��������ЧоƬ<br />
������������������<br />
��˷磺������˷�<br />
&nbsp;
</p>
<p>
	<br />
����ͨ��
</p>
<p>
	<br />
����������֧��802.11b/g/n����Э��<br />
����������1000Mbps��̫����<br />
������֧�֣�����4.0ģ��<br />
&nbsp;
</p>
<p>
	<br />
I/O�ӿ�
</p>
<p>
	<br />
���ݽӿڣ�1��USB2.0+1��USB3.0������һ��powered����USB���ýӿڣ�<br />
��Ƶ�ӿڣ�HDMI<br />
��Ƶ�ӿڣ�����/��˷����ýӿ�<br />
�����ӿڣ�RJ45������ӿڣ�����Դ�ӿ�<br />
�����������1������<br />
&nbsp;
</p>
<p>
	<br />
�����豸
</p>
<p>
	<br />
ָȡ�豸��������<br />
&nbsp;
</p>
<p>
	<br />
��Դ����
</p>
<p>
	<br />
������ͣ��ۺ�����<br />
����ʱ�䣺4.5Сʱ���ң�����ʱ����ʹ�û�������<br />
&nbsp;
</p>
<p>
	<br />
���
</p>
<p>
	<br />
�ʼǱ�������1.6Kg<br />
���ȣ�323mm<br />
��ȣ�226mm<br />
��ȣ�17.8mm<br />
��ǲ��ʣ����ϲ���<br />
�����������ɫ<br />
&nbsp;
</p>
<p>
	<br />
����
</p>
<p>
	<br />
���������������<br />
&nbsp;
</p>
<p>
	<br />
�ʼǱ�����
</p>
<p>
	<br />
��װ�嵥���ʼǱ����� x1<br />
&nbsp;��Դ������ x1<br />
&nbsp;��Դ�� x1<br />
&nbsp;˵���� x1<br />
&nbsp;���޿� x1<br />
&nbsp;
</p>
<p>
	<br />
������Ϣ
</p>
<p>
	<br />
�������ߣ�ȫ��������������������<br />
�ʱ�ʱ�䣺1��<br />
�ʱ���ע������1�꣬��Ҫ����2��<br />
�ͷ��绰��400-810-2228<br />
�绰��ע����һ��������9:00-21:00�����գ�9:00-18:00<br />
��ϸ���ݣ�����VAIO���˵��Բ�Ʒ������ƾ֤�����û��Լ����档�ڰ���΢�ͼ������Ʒ��������˻����ι涨�����������涨�����涨�������������˻�ʱʹ�á��������涨�⣬�������������涨�е�����Ȩ����ƾ��������Ч��Ʊ�������ܵ�������Ȩ��ά��վ�ṩ�ı��޷��񡣱�����ʧ�������������Ʊ��ܣ�����Ҫ���޷���ʱ���ʾ���������&gt;&gt;<br />
&nbsp;
</p>
<p>
	<br />
����Ҫ��
</p>
<p>
	<br />
�����¶ȣ�5-35��<br />
����ʪ�ȣ�20%-80%����������<br />
�洢�¶ȣ�-20-60��<br />
�洢ʪ�ȣ�10%-90%����������<br />
&nbsp;
</p>',99,29,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:10:15',N'2013/12/10 4:10:47')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 21,2,13,N'�����������Micro-SDHC�ƶ��洢��',N'/upload/201210/20/small_201210201011047116.jpg',N'���ϣ�SanDisk��Ultra�������Micro-SDHC�ƶ��洢�� 8GB-Class10-UHS1-30MB/s ��TF������Ʒ���İ�װ��Ʒ���İ�װ��������ƶ��洢��ȫ������class10�ٶȵȼ���ӵ�иߴ�30MB/s�Ķ�ȡ�ٶȣ�Ϊ����������ʯ���ȫ�¼��ٴ洢���顣֧�����¸������ֻ���ƽ����Լ������ƶ������衭',N'<p>
	<br />
</p>
<p>
	���ϣ�SanDisk��Ultra�������Micro-SDHC�ƶ��洢�� 8GB-Class10-UHS1-30MB/s ��TF������Ʒ���İ�װ
</p>
<p>
	<br />
</p>
<p>
	��Ʒ���İ�װ��������ƶ��洢��ȫ������class10�ٶȵȼ���ӵ�иߴ�30MB/s�Ķ�ȡ�ٶȣ�Ϊ����������ʯ���ȫ�¼��ٴ洢���顣֧�����¸������ֻ���ƽ����Լ������ƶ������豸��Ϊ�û�������ٿ��ƶ��洢�ṩ���㣬�������������洢������Ҫ��
</p>
<p>
	<br />
</p>
<p>
	����SD��ת������һ�����ã����ķ���
</p>
<p>
	<br />
</p>
<p>
	����SD���ۣ���SD��ת������������ת�������Ӳ���SD�������ʹ��
</p>
<p>
	<br />
</p>
<p>
	ȫ�����İ�װ����
</p>
<p>
	<br />
</p>
<p>
	�����ֻ���ƽ����ԣ��ƶ��豸���ƶ��޴����ڣ����ϴ洢����Ϊ���ṩԭ������class10�ٶȵȼ����ߴ�30MB/s��ȡ�ٶȣ�֧�����¸������ֻ���ƽ����Ե��ƶ��豸��Ϊ�û�������ٿ��ƶ��洢�ṩ���㣬���������洢������Ҫ��
</p>
<p>
	<br />
</p>
<p>
	�����������ֻ���ͬʱ֧��ƽ����ԣ�������������������ƶ��豸��Ϊ����ƶ������������ȫ���𺳼��ٴ�������
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	SanDisk���ϲ�Ʒ��α��֤��ʽ
</p>
<p>
	<br />
</p>
<p>
	1. ����SanDisk���Ϲٷ���α��֤�绰��400-700-7700�����������˹���ѯ��
</p>
<p>
	2. ��½SanDisk�ٷ���α��֤��վ��sandisk.akl.com.cn�������Ʒ���װ���ı�����ͼһ��ָʾ�ķ�α�����վ��ͼ�����ṩ����֤����в�ѯ��
</p>
<p>
	<br />
</p>',99,38,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:11:11',N'2013/12/10 4:10:38')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 22,2,17,N'���ᣨSONY��Tablet SGPT112CN/S 9.4Ӣ��ƽ����ԣ�Android 3.2 32GB ���� WIFI ˫����ͷ ��չ��� ����',N'/upload/201210/20/small_201210201013178785.jpg',N'��Ļ�ߴ磺9.4Ӣ�� ����ʽ�����������ʽ...����ϵͳ��Android3.2 ��������Nvidia Tegra 2 ˫�ˣ�1GHz ϵͳ�ڴ棺1GB �洢������32GB Flash ������Ļ�ֱ��ʣ�1280x800 ����ͷ��˫����ͷ��ǰ�ã�30�����أ�����...��Ʒ������598g ����ʱ�䣺����ʱ����ʹ�û������� WiFi���ܣ�֧��',N'<p>
	��Ļ�ߴ磺9.4Ӣ�� ����ʽ�����������ʽ...<br />
����ϵͳ��Android3.2 <br />
��������Nvidia Tegra 2 ˫�ˣ�1GHz <br />
ϵͳ�ڴ棺1GB <br />
�洢������32GB Flash ����<br />
��Ļ�ֱ��ʣ�1280x800 <br />
����ͷ��˫����ͷ��ǰ�ã�30�����أ�����...<br />
��Ʒ������598g <br />
����ʱ�䣺����ʱ����ʹ�û������� <br />
WiFi���ܣ�֧��802.11b/g/n����Э�� <br />
����ʱ�䣺2011��09�� <br />
���ݽӿڣ�1��USB2.0��Micro-AB�ӿ�
</p>
<p>
	����SGPT112CN/S��32GB����ϸ����
</p>
<p>
	<br />
��������
</p>
<p>
	<br />
����ʱ�䣺2011��09��<br />
����ϵͳ��Android3.2<br />
��������Nvidia Tegra 2 ˫�ˣ�1GHz<br />
ϵͳ�ڴ棺1GB<br />
�洢������32GB<br />
�洢���ʣ�Flash ����<br />
�洢����֧��SD��TF����<br />
&nbsp;
</p>
<p>
	<br />
��ʾ��
</p>
<p>
	<br />
��Ļ�ߴ磺9.4Ӣ��<br />
��Ļ�ֱ��ʣ�1280x800<br />
��Ļ����������ʽ�����������ʽ������<br />
ָȡ�豸��������<br />
֧�����ԣ�֧�ֶ������<br />
&nbsp;
</p>
<p>
	<br />
��������
</p>
<p>
	<br />
WiFi���ܣ�֧��802.11b/g/n����Э��<br />
�������ܣ�֧�֣�����2.1ģ��<br />
&nbsp;
</p>
<p>
	<br />
��Ƶ��Ƶ
</p>
<p>
	<br />
����ϵͳ��������ЧоƬ<br />
��Ƶ��ʽ��֧��AAC��mp3��WAV��WMA��WMA Pro��FLAC��MIDI��Ogg Vorbis��ʽ<br />
��Ƶ��ʽ��֧��H.263��H.264/AVC��MPEG-4��WMV��ʽ<br />
&nbsp;
</p>
<p>
	<br />
���ýӿ�
</p>
<p>
	<br />
���ݽӿڣ�1��USB2.0��Micro-AB�ӿ�<br />
��Ƶ�ӿڣ�΢����˷�ӿ�<br />
�����ӿڣ���Դ�ӿڣ��洢���ӿ�<br />
&nbsp;
</p>
<p>
	<br />
��Դ����
</p>
<p>
	<br />
������ͣ�Ƕ��ʽ﮵�أ�5000����<br />
����ʱ�䣺����ʱ����ʹ�û�������<br />
&nbsp;
</p>
<p>
	<br />
���ܲ���
</p>
<p>
	<br />
����ͷ��˫����ͷ��ǰ�ã�30�����أ����ã�500�����أ�<br />
ͼƬ�����֧��JPEG��BMP��GIF��PNG��WBMP��ʽ<br />
���ø�Ӧ������������Ӧ<br />
�������ܣ��ṩQriocity����Ӱ�����񣬰������֣���Ϸ�����������Ƶ������<br />
&nbsp;
</p>
<p>
	<br />
��۲���
</p>
<p>
	<br />
��Ʒ�ߴ磺241.2��174.3��10.1-20.6mm<br />
��Ʒ������598g<br />
���ǲ��ʣ���þ�Ͻ����<br />
������ɫ����ɫ<br />
&nbsp;
</p>
<p>
	<br />
ƽ����Ը���
</p>
<p>
	<br />
��װ�嵥��ƽ��������� x1<br />
&nbsp;������ x1<br />
&nbsp;������ x1<br />
&nbsp;˵���� x1<br />
&nbsp;���޿� x1<br />
&nbsp;
</p>
<p>
	<br />
������Ϣ
</p>
<p>
	<br />
�������ߣ�ȫ��������������������<br />
�ʱ�ʱ�䣺1��<br />
�ʱ���ע������1��<br />
�ͷ��绰��400-810-2228<br />
�绰��ע����һ��������9:00-21:00�����գ�9:00-18:00<br />
��ϸ���ݣ��ڰ���΢�ͼ������Ʒ��������˻����ι涨�����������涨�����涨�������������˻�ʱʹ�á��������涨�⣬�������������涨�е�����Ȩ����ƾ��������Ч��Ʊ�������ܵ�������Ȩ��ά��վ�ṩ�ı��޷��񡣱�����ʧ�������������Ʊ��ܣ�����Ҫ���޷���ʱ���ʾ�������м��ص����������������ط��ɷ��治��֮�����Թ�����ط��ɷ���Ĺ涨Ϊ׼��
</p>
<p>
	&nbsp;
</p>',99,43,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:11:53',N'2013/12/10 4:10:29')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 24,2,17,N'�ǿᣨWitCool��H8 9.7Ӣ��ƽ�壨˫��CPU�ĺ�GPU IPS������ ���3G ˫����ͷ 7000mAh��',N'/upload/201210/20/small_201210201015343889.jpg',N'����Ʒ�� WitCool�ǿ� �ͺ� ����Ұ��H8 ��ɫ �mɫ ����/���� ���Ȧ�߻��� ��ǿ���ռ�ABS����׿� 1���ε��װ���� ����ʱ�� 2012��8�� ���ô洢���� ����16G ����ϵͳ �ȸ����°棨�����棩Android 4.0.3 ������ ����ȫ���ٶ���촦����֮һ ARM CortexA9�ܹ� ������о΢RK30��',N'<p>
	����
</p>
<p>
	Ʒ�� WitCool�ǿ� <br />
�ͺ� ����Ұ��H8 <br />
��ɫ �mɫ <br />
����/���� ���Ȧ�߻��� ��ǿ���ռ�ABS����׿� 1���ε��װ���� <br />
����ʱ�� 2012��8�� <br />
����
</p>
<p>
	�洢���� ����16G <br />
����ϵͳ �ȸ����°棨�����棩Android 4.0.3 <br />
������ ����ȫ���ٶ���촦����֮һ ARM CortexA9�ܹ� ������о΢RK3066˫�˴����� �ٶȷ�һ�� <br />
�������� ˫�� <br />
�������ٶ� ��߿ɴ�1.6GHz��Ƶ����Ƶ�£� <br />
ϵͳ�ڴ� 1GDDR3�͹��ĳ��󻺴� �ٶ�������Ʒ�Ƶ�2��������Ʒ�ƶ�Ϊ512MB �ٶ�һ�㣩 <br />
��ʾоƬ 4��ͼ�μ���Mali 400GPU���Կ������� ͼ����������� <br />
��չ֧�� ֧��MicroSD��TF���� <br />
����չ���� ֧��MicroSD��TF���������32GB <br />
��ʾ
</p>
<p>
	��Ļ�ߴ� ���ú���ԭװ����IPS����ȫ�ӽǸ���Ӳ�� <br />
��Ļ�ֱ��� ��Ļ���ȿɴ�400���� ��ɫ�������� ��ͬ���Ʒ��2�� <br />
��Ļ���� ����4:3�ƽ���� ������ʾ������� <br />
��Ļ���� IPS����ȫ�ӽ�178�ȸ����� ��IPAD����һ����׼ �Ӿ����������ױ� <br />
��Ļ���� ������ʽ������ <br />
ָȡ�豸 ������ʽ������ <br />
����
</p>
<p>
	WiFi���� ֧��802.11b/g/n����Э�� <br />
����3G ������3G���˰汾ΪWIFI�棬�����ϵ�SIM�����Ϊ3G��Ԥ���ݲ����ã��˰��ͨ����׼USB2.0�ӿ�ֱ��3G������������������֧��ֱ�Ӳ���SIM������Ҫ��������3G��������������3G������ �����蹺��������ת�� ���Ի� �Ƽ���&nbsp; <br />
3G���� ��֧��ֱ����ͨ���ƶ�3G���������� �ݲ�֧�ֵ��� <br />
�������� ��֧��2.1��������Э�� �������������� �����������һ��ʹ�� ������ <br />
RJ-45���� ����֧��ͨ����USBת������ת�������������������� <br />
�˿�
</p>
<p>
	��Ƶ�ӿ� ��׼3.5mm�����ӿ� ���������ֻ�����ͨ�� ����ʵ�����Ի� <br />
��Ƶ�ӿ� ����mini����HDMI����ӿ� ˫����ͬ����ʾ ��������е�Һ���������� �����Ƭ��� <br />
USB�ӿ� ���ø���USB2.0�ӿ� �����U�� �ֻ��������豸 <br />
�����ӿ� ����Ϊֹ ���ýӿ���ḻ��ƽ����� 1��DC 5V-2A���ӿڣ�2���Զ�Ӳ�����ָ��ӿڣ�3��MIC�ӿڣ�4����׼USB2.0�ӿڣ�5������HDMI�ӿڣ�6��miniUSB�ӿڣ�7�������ӿڣ�8���洢���ӿ� <br />
��Ч
</p>
<p>
	������ ����˫�����������߱����������˿������ʽ������ ����Ʒ�ƶ�Ϊ������ ���ʻ����� <br />
��˷� �Ҳ���MIC��˷�ӿ� <br />
����
</p>
<p>
	����ͷ ����200W����������ͷ <br />
����ͷ���� ǰ��30W������200W����������ͷ <br />
��Ƶ���� ��֧�� <br />
��㴥�� ������ʽ������ <br />
GPS���� ��֧������ģʽ�¹ȸ��ͼ���� <br />
��Ӱ���� ��֧��1080P������Ƶ �������Ѵ�Ƭʢ�� <br />
Flash���� ֧�����°��FLASH11.1 ��ʱ���߲����������ſᡢ���ո�����Ƶ <br />
���ø�Ӧ ����3�ᡰ4��G-Sensor������Ӧ���������������ĸ������������ת�������顰���š��ĸ��� <br />
������Ӧ ���á�4��G-Sensor������Ӧ���������������ĸ������������ת�������顰���š��ĸ��� <br />
���߸�Ӧ ֧�ֻ��������ȸ�Ӧ�� <br />
������� flash player,Gmail,google talk,play�̵�� <br />
��Դ
</p>
<p>
	������� �ۺ���﮵�أ�����С����ȫ�Ըߡ��ŵ����Լѵ��ŵ㣩 <br />
������� 7000mAh <br />
����ʱ�� ����������30�죬������������28Сʱ������������Ƶ6-8Сʱ����������6-8Сʱ���Ӿ���ʹ�û��������� <br />
�����ѹ DC 9V-2A <br />
���
</p>
<p>
	�ߴ� 184mm*239mm*10.5mm <br />
���� ����������Ϊ640g <br />
����
</p>
<p>
	���� �˴����ԣ�1������ǿ�� ˫��RK3066������ ��Ƶ�ɴ�1,6GHz �ֿܷɴ�8000�֣��������������2�����ܽӿڷḻ USB OTG HDMI WIFI ������Ӧ�о��С�3������Ʒ�� ��ƻ��� 1����װ�� ������ۡ�4�����ʴ���TP ͸��� ��ƫ�Ƶ����⡣5���ߴ�1024*768����ԭװ����IPS�� �����ɴ�400 �����ױȡ�6�������ǿ����G+G˫�ֻ���������������ʹС������Ҳ˿������7��7000������������� ��Ƶ�ɲ���8Сʱ���� ����30�졣8��1GDDR�͹��ĸ��ٻ��� 16G�������洢�� �������� ����ȴ���
</p>',99,14,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:16:23',N'2013/12/10 4:10:19')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 25,2,18,N'��ʿ�޼� M185������� �ʼǱ�������� ���͵��',N'/upload/201210/20/small_201210201020428486.jpg',N'����Ʒ�� �޼� Logitech ���� M185 ��ɫ ��ɫ��� ����䷽ʽ 2.4G ���幤ѧ �� ��깤����ʽ ��� ���ֱ��� 1000dpi �ӿ� USB �ߴ� Լ100x58x34mm ���� 95g ������������ ���أ��� ���ɲ֣��� ��أ�AA���x1',N'<div id="J_ItemDesc" class="content">
	<p>
		&nbsp;
	</p>
	<p>
		����
	</p>
	<p>
		Ʒ�� �޼� Logitech <br />
���� M185 <br />
��ɫ ��ɫ��� <br />
���
	</p>
	<p>
		���䷽ʽ 2.4G <br />
���幤ѧ �� <br />
��깤����ʽ ��� <br />
���ֱ��� 1000dpi <br />
�ӿ� USB <br />
�ߴ� Լ100x58x34mm <br />
���� 95g <br />
����
	</p>
	<p>
		�������� ���أ��� <br />
���ɲ֣��� <br />
��أ�AA���x1
	</p>
</div>',99,14,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:21:21',N'2013/12/10 4:10:11')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 27,2,18,N'���� S22B360HW ���� 22��LEDҺ����ʾ�� ȡ��S22A330BW',N'/upload/201210/20/small_201210201022485736.jpg',N'����Ʒ�� ���� SAMSUNG �ͺ� S22B360HW ��ɫ ������ ��ʾ������� TN��� ���ߴ� 22Ӣ�� ���� �� ��Ļ���� 16��10 ��ѷֱ��� 1680 x 1050 ��Ӧʱ�� 5ms ��� 0.282mm ɫ�� 16.7M ���� 250cd/m2 �Աȶ� 1000000��1 ���ӽǶ� 170/160(CR&gt;10) �������� �� HDCP���� ��֧�� ��',N'<p>
	<p>
		<br />
	</p>
	<p>
		����
	</p>
	<p>
		Ʒ�� ���� SAMSUNG <br />
�ͺ� S22B360HW <br />
��ɫ ������ <br />
��ʾ
	</p>
	<p>
		������� TN��� <br />
���ߴ� 22Ӣ�� <br />
���� �� <br />
��Ļ���� 16��10 <br />
��ѷֱ��� 1680 x 1050 <br />
��Ӧʱ�� 5ms <br />
��� 0.282mm <br />
ɫ�� 16.7M <br />
���� 250cd/m2 <br />
�Աȶ� 1000000��1 <br />
���ӽǶ� 170��/160��(CR&gt;10) <br />
�������� �� <br />
HDCP���� ��֧�� <br />
LED���� �� <br />
�ӿ�
	</p>
	<p>
		VGA 1�� <br />
HDMI 1�� <br />
���
	</p>
	<p>
		��Դ ��ѹ:100-240V(50/60hz) �ĵ���(����ֵ):30W&nbsp; <br />
�ߴ� �������ߴ�(�� x �� x ��):507 x 426 x 195mm ��װ�ߴ�(�� x �� x ��):581 x 423 x 141mm&nbsp; <br />
���� ����װ����:4kg <br />
�Ƿ�֧�ֱڹ� �� <br />
���� ��ͨ
	</p>
����
	<p>
		<br />
	</p>
	<p>
		Ʒ�� ���� SAMSUNG <br />
�ͺ� S22B360HW <br />
��ɫ ������ <br />
��ʾ
	</p>
	<p>
		������� TN��� <br />
���ߴ� 22Ӣ�� <br />
���� �� <br />
��Ļ���� 16��10 <br />
��ѷֱ��� 1680 x 1050 <br />
��Ӧʱ�� 5ms <br />
��� 0.282mm <br />
ɫ�� 16.7M <br />
���� 250cd/m2 <br />
�Աȶ� 1000000��1 <br />
���ӽǶ� 170��/160��(CR&gt;10) <br />
�������� �� <br />
HDCP���� ��֧�� <br />
LED���� �� <br />
�ӿ�
	</p>
	<p>
		VGA 1�� <br />
HDMI 1�� <br />
���
	</p>
	<p>
		��Դ ��ѹ:100-240V(50/60hz) �ĵ���(����ֵ):30W&nbsp; <br />
�ߴ� �������ߴ�(�� x �� x ��):507 x 426 x 195mm ��װ�ߴ�(�� x �� x ��):581 x 423 x 141mm&nbsp; <br />
���� ����װ����:4kg <br />
�Ƿ�֧�ֱڹ� �� <br />
���� ��ͨ
	</p>',99,12,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:24:54',N'2013/12/10 4:09:57')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 28,2,24,N'˧�������ײ�CXW-200-MD01+QA-019-B9',N'/upload/201210/20/small_201210202355364762.jpg',N'����Ʒ�� ˧��  �ͺ� TJ2+019G2��ɫ �������̻������� ����ʽ���Ʒ�ʽ �ټ������ŷ���(m3/min) 14.5 ��+1 -2������ھ���mm�� 18CM������ʽ LED�ƣ�˫��ͳ��23W�������� 23W����ѹ(Pa) 250������빦�ʣ�W�� 200������ �����������[dB(A)] 52dB(A)����ѹ�������γߴ磨��',N'<p>
	����
</p>
<p>
	<br />
</p>
<p>
	Ʒ�� ˧�� &nbsp;
</p>
<p>
	�ͺ� TJ2+019G2
</p>
<p>
	��ɫ ��
</p>
<p>
	�����̻����
</p>
<p>
	<br />
</p>
<p>
	��� ����ʽ
</p>
<p>
	���Ʒ�ʽ �ټ�����
</p>
<p>
	�ŷ���(m3/min) 14.5 ��+1 -2��
</p>
<p>
	����ھ���mm�� 18CM
</p>
<p>
	������ʽ LED�ƣ�˫��ͳ��2��3W
</p>
<p>
	�������� 2��3W
</p>
<p>
	����ѹ(Pa) 250
</p>
<p>
	������빦�ʣ�W�� 200
</p>
<p>
	������ �������
</p>
<p>
	����[dB(A)] 52dB(A)����ѹ����
</p>
<p>
	���γߴ磨���������mm�� 795��400��528mm
</p>
<p>
	��Ʒ������kg�� 27
</p>
<p>
	��߹��
</p>
<p>
	<br />
</p>
<p>
	������Դ ��Ȼ��(12T)
</p>
<p>
	���õ��� ȫ��
</p>
<p>
	���׳ߴ磨mm�� 655*353mm��R45
</p>
<p>
	��װ��ʽ Ƕ��ʽ
</p>
<p>
	Ϩ��װ�� ֧��
</p>
<p>
	���緽ʽ ȫ����
</p>
<p>
	���ʽ ������ӵ��
</p>
<p>
	������ �����
</p>
<p>
	���������KW�� 4.2KW
</p>
<p>
	���γߴ磨���������mm�� 750*430*142
</p>
<p>
	��Ʒ������kg�� 12
</p>
<p>
	<br />
</p>',99,73,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:29:11',N'2013/12/10 4:09:51')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 43,3,29,N'�ഺ ��һ��̫�ִٵ���',N'/upload/201210/20/small_201210201109244855.jpg',N'���еĽ�ֶ���д��   ���е���ˮҲ��������   ȴ��Ȼ��������ô����һ����ʼ   ���Ǹ����ϵĲ��ٻ���������',N'<p>
	<strong>���еĽ�ֶ���д��&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>���е���ˮҲ��������&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>ȴ��Ȼ��������ô����һ����ʼ&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>���Ǹ����ϵĲ��ٻ���������&nbsp;</strong>
</p>
<p>
	<img alt="" src="/upload/201210/20/201210201110513729.jpg" />
</p>
<p>
	&nbsp;
</p>
<p>
	<strong>��������ε�ȥ׷��&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>�������ֻ����Ӱ�ӹ�&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>����΢Ц�����ݼ�ǳ����&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>����û��������Ⱥ�&nbsp;</strong>
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
	<strong><strong>�𷭿��Ƿ��Ƶ���ҳ&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>���˽���װ���ļ�Ϊ׾��&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>������ &nbsp;��һ���ٶ�&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>ȴ���ò�����&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>�ഺ��һ��̫�ִٵ���&nbsp;</strong></strong>
</div>
<div>
	<img alt="" src="/upload/201210/20/201210201111542545.jpg" /><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', ΢���ź�, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
</div>',99,12,0,0,0,1,0,0,0,1,N'admin',N'2012/10/20 11:12:00')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 44,3,26,N'��ʹ���ҽ�ɽ�续��Ҳ�ֲ�����Ц���绨������',N'/upload/201210/20/small_201210201121224163.jpg',N'��ʹ���ҽ�ɽ�续��Ҳ�ֲ�����Ц���绨',N'��ʹ���ҽ�ɽ�续��Ҳ�ֲ�����Ц���绨������',99,12,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:21:42')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 45,3,29,N'�ù��Ǹ����ˣ���������˺���',N'/upload/201210/20/small_201210201122436999.jpg',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:23:12')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 29,2,24,N'�������̻�CXW-219-JT30(SN)(T)',N'/upload/201210/20/small_201210201035354966.jpg',N'����Ʒ�� �����ͺ� CXW-219-JT10��ɫ �����������̻������� ��ʽ���Ʒ�ʽ ��е�����ŷ���(m3/min) 15����ھ���mm�� 160������ʽ LED���������� 1W*2����ѹ(Pa) 320������빦�ʣ�W�� 219������ �������[dB(A)] 54���γߴ磨�����mm�� 900*520*550��Ʒ������kg�� 23��',N'<br />
<p>
	����
</p>
<p>
	<br />
</p>
<p>
	Ʒ�� ����
</p>
<p>
	�ͺ� CXW-219-JT10
</p>
<p>
	��ɫ ������
</p>
<p>
	�����̻����
</p>
<p>
	<br />
</p>
<p>
	��� ��ʽ
</p>
<p>
	���Ʒ�ʽ ��е����
</p>
<p>
	�ŷ���(m3/min) 15
</p>
<p>
	����ھ���mm�� 160
</p>
<p>
	������ʽ LED��
</p>
<p>
	�������� 1W*2
</p>
<p>
	����ѹ(Pa) 320
</p>
<p>
	������빦�ʣ�W�� 219
</p>
<p>
	������ ���
</p>
<p>
	����[dB(A)] 54
</p>
<p>
	���γߴ磨���������mm�� 900*520*550
</p>
<p>
	��Ʒ������kg�� 23
</p>
<p>
	����
</p>
<p>
	<br />
</p>
<p>
	���� ˫��������ƣ������޷켯��ǻ�����̲����䣬ȫ��·��˫����
</p>
<p>
	<br />
</p>',99,82,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:35:54',N'2013/12/10 4:09:46')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 30,2,24,N'�ϰ������ײ�CXW-200-8210N+9B26N+802N',N'/upload/201210/20/small_201210202357569149.jpg',N'����Ʒ�� �ϰ��ͺ� CXW-200-8310N+6G21N��ɫ ����������̻������� ŷʽ���Ʒ�ʽ �ټ������ŷ���(m3/min) 17����ھ���mm�� 170������ʽ ������������ ��2W2����ѹ(Pa) ��320������빦�ʣ�W�� 200������ ���������[dB(A)] 53���γߴ磨�����mm�� 895500535��Ʒ������',N'<p>
	<strong>����</strong><br />
Ʒ�� �ϰ�
</p>
<p>
	�ͺ� CXW-200-8310N+6G21N
</p>
<p>
	��ɫ �����
</p>
<p>
	�����̻����
</p>
<p>
	<br />
��� ŷʽ
</p>
<p>
	���Ʒ�ʽ �ټ�����
</p>
<p>
	�ŷ���(m3/min) 17
</p>
<p>
	����ھ���mm�� 170
</p>
<p>
	������ʽ ����
</p>
<p>
	�������� ��2W��2
</p>
<p>
	����ѹ(Pa) ��320
</p>
<p>
	������빦�ʣ�W�� 200
</p>
<p>
	������ �����
</p>
<p>
	����[dB(A)] 53
</p>
<p>
	���γߴ磨���������mm�� 895��500��535
</p>
<p>
	��Ʒ������kg�� 23
</p>
<p>
	��߹��
</p>
<p>
	<br />
������Դ ��Ȼ��(12T)
</p>
<p>
	���õ��� ȫ��
</p>
<p>
	���׳ߴ磨mm�� 596��354 R25
</p>
<p>
	��װ��ʽ Ƕ��ʽ
</p>
<p>
	Ϩ��װ�� �Զ�Ϩ��
</p>
<p>
	���緽ʽ ȫ����
</p>
<p>
	���ʽ ������ӵ��
</p>
<p>
	������ �����
</p>
<p>
	���������KW�� ��3.5 KW��4.0KW
</p>
<p>
	���γߴ磨���������mm�� 710��400��150
</p>
<p>
	��Ʒ������kg�� 10Kg
</p>',99,177,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 10:39:23',N'2013/12/10 4:09:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 31,1,10,N'�ϰ���ѡ������ �Լ۱ȳ��ߵĳ������Ƽ�',N'/upload/201210/20/201210202130270350.jpg',N'��1946�꣬�����һ̨������ĳ��֣�ʹ����ĿƼ���չ������һ��ո�µĽ׶Σ������������������˺ܶิ�ӣ�������������ɵ����񣬳�Ϊ�����ǹ����벻�������֡��������Ϊ�˷����ƶ��Ͱ칫���ͷ����˱ʼǱ����ԣ�����һֱ�����ڶ���ѭ��һ��Ŀ�꣬�Ǿ�������Խ��Խǿ����',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���ڱʼǱ����ƶ����࣬��ʵ���������Ҳ��ϸ�ֳɺܶ���ģ�����������Ҫ�Ƽ������ϰ�����ʹ�õıʼǱ������౾���ڲ��ܿ϶��Ķ�λΪ�������ˣ���Ϊ�ִ���������ķḻ�����Ե�һ�������ǲ���ȫ�������û��ġ���Ҫ�Ĵ��໹�Ǳ�������Ŀǰ���ĳ�������Χ�ڣ����������ڰ칫��˵�ں��ʲ����ˣ����ٵ������ͻ����ٶȣ����Ա�֤����ְ���в��˷�ÿһ�롣���ᱡ�Ļ������������ǳ���ǳ��Σ������Ժ����Ѿ��Ĵ�����ߡ��������Ϳ�������Щ�������ǳ�ֵ���͵���ѡ��
</p>
<p sizcache="1" sizset="0">
	<table style="font-size:12px;" border="1" cellspacing="0" bordercolor="#000000" cellpadding="5" width="500" align="center" sizcache="1" sizset="0">
		<tbody sizcache="0" sizset="0">
			<tr style="color:#fff;" height="35" bgcolor="#3367cd">
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>�ͺ�</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>������</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>�Կ�</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>�ڴ�</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>Ӳ��</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>�ߴ�</strong> 
				</td>
				<td style="text-align:center;" bgcolor="#3367cd">
					<strong>�۸�</strong> 
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					���۷���UI45D3
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
					4399Ԫ
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					����U410-IFI
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
					4999Ԫ
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					��˶S46
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
					6650Ԫ
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					����Envy 4-1007tx
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
					6499Ԫ
				</td>
			</tr>
		</tbody>
	</table>
</p>
<p>
	<br />
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 10:40:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 32,2,23,N'����ϴ�»�XQG60-V63GS',N'/upload/201210/20/small_201210201044429301.jpg',N'����Ʒ�� ���� Panasonicϵ�� ���Ӵ��ͺ� XQG60-V64NW��ɫ ��ɫ��� ��Ͳʽ�Զ����̶� ȫ�Զ���ʾ��ʽ LED�������ʾ���Ʒ�ʽ ���Կ��ƿ��ŷ�ʽ ǰ��ʽ��ˮ��ʽ ����ˮ������� ��ͨ�����ɫ������ˮ���� ֧�ַ����� ֧�ֶ�ͯ��ȫ�� ֧��ԤԼ���� ֧�ָ��¹��� ��֧��ҹ��ϴ ����',N'<p>
	����
</p>
<p>
	<br />
</p>
<p>
	Ʒ�� ���� Panasonic
</p>
<p>
	ϵ�� ���Ӵ�
</p>
<p>
	�ͺ� XQG60-V64NW
</p>
<p>
	��ɫ ��ɫ
</p>
<p>
	��� ��Ͳʽ
</p>
<p>
	�Զ����̶� ȫ�Զ�
</p>
<p>
	��ʾ��ʽ LED�������ʾ
</p>
<p>
	���Ʒ�ʽ ���Կ���
</p>
<p>
	���ŷ�ʽ ǰ��ʽ
</p>
<p>
	��ˮ��ʽ ����ˮ
</p>
<p>
	������� ��ͨ���
</p>
<p>
	��ɫ����
</p>
<p>
	<br />
</p>
<p>
	��ˮ���� ֧��
</p>
<p>
	������ ֧��
</p>
<p>
	��ͯ��ȫ�� ֧��
</p>
<p>
	ԤԼ���� ֧��
</p>
<p>
	���¹��� ��֧��
</p>
<p>
	ҹ��ϴ ��֧��
</p>
<p>
	�縨���Ⱥ�� ��֧��
</p>
<p>
	�縨����ϴ�� ֧��
</p>
<p>
	�Զ��ϵ� ֧��
</p>
<p>
	���ܶϵ���� ֧��
</p>
<p>
	��ˮ��©ˮ���� ֧��
</p>
<p>
	��ˮ��©ˮ���� ֧��
</p>
<p>
	���
</p>
<p>
	<br />
</p>
<p>
	���ܵȼ� 1��
</p>
<p>
	ϴ���� 1.06
</p>
<p>
	ˮλѡ�񣨶Σ� �Զ���֪
</p>
<p>
	ϴ�³��� ��ǿϴ������ͨ����ë�����ݴ�����ˡ�����ϴ��Ͳϴ��
</p>
<p>
	ϴ��������kg�� 6
</p>
<p>
	ϴ��ת�� 400-800
</p>
<p>
	ϴ�ӹ��ʣ�W�� 240
</p>
<p>
	��ˮ������kg�� 6
</p>
<p>
	��ˮת�� 800
</p>
<p>
	��ˮ���ʣ�W�� 330
</p>
<p>
	ˮ�µ��ڷ�Χ 60
</p>
<p>
	������� ��п�ְ�
</p>
<p>
	��Ͳ���� �����
</p>
<p>
	��Դ��� 220V/50HZ
</p>
<p>
	��Ʒ�ߴ磨�������ߣ�mm 596*596*850
</p>
<p>
	��Ʒ������kg�� 74
</p>
<p>
	����
</p>
<p>
	<br />
</p>
<p>
	���� бʽ��Ͳ�����Ӵ�
</p>
<p>
	<br />
</p>',99,274,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:45:05',N'2013/12/10 4:09:36')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 33,2,23,N'����XQG60-10866',N'/upload/201210/20/small_201210201044509728.jpg',N'����������Ʒ���͹�Ͳʽ ϴ������6kg ϴ�³�������,����,��ë,����,��ϴ,����,��Ư,����,����ϴ,ţ��,��ŵ ϴ�ӹ���180W ��ˮ����350W ��Ͳ���ϲ���� �������������ӿ��� ���ܲ��� ��ʾ��LCD �������� ������Ʋ��˲��� ���ͳߴ�840595570mm ��Ʒ����83kg �����ص�29���ӿ��١�',N'<p>
	&nbsp;
</p>
<p>
	��������
</p>
<p>
	��Ʒ����
</p>
<p>
	��Ͳʽ
</p>
<p>
	&nbsp;
</p>
<p>
	ϴ������
</p>
<p>
	6kg
</p>
<p>
	&nbsp;
</p>
<p>
	ϴ�³���
</p>
<p>
	����,����,��ë,����,��ϴ,����,��Ư,����,����ϴ,ţ��,��ŵ
</p>
<p>
	&nbsp;
</p>
<p>
	ϴ�ӹ���
</p>
<p>
	180W
</p>
<p>
	&nbsp;
</p>
<p>
	��ˮ����
</p>
<p>
	350W
</p>
<p>
	&nbsp;
</p>
<p>
	��Ͳ����
</p>
<p>
	�����
</p>
<p>
	&nbsp;
</p>
<p>
	��������
</p>
<p>
	�����ӿ���
</p>
<p>
	&nbsp;
</p>
<p>
	���ܲ���
</p>
<p>
	&nbsp;
</p>
<p>
	��ʾ��
</p>
<p>
	LCD
</p>
<p>
	&nbsp;
</p>
<p>
	��������
</p>
<p>
	&nbsp;
</p>
<p>
	�������
</p>
<p>
	���˲���
</p>
<p>
	&nbsp;
</p>
<p>
	���ͳߴ�
</p>
<p>
	840��595��570mm
</p>
<p>
	&nbsp;
</p>
<p>
	��Ʒ����
</p>
<p>
	83kg
</p>
<p>
	&nbsp;
</p>
<p>
	�����ص�
</p>
<p>
	29���ӿ���ϴ
</p>
<p>
	&nbsp;
</p>
<p>
	��Ʒ�ʱ���Ϣ
</p>
<p>
	&nbsp;
</p>
<p>
	�ͷ��绰
</p>
<p>
	400-699-9999��24Сʱ�绰����
</p>
<p>
	&nbsp;
</p>
<p>
	�ʱ�����
</p>
<p>
	ȫ��������������������
</p>
<p>
	&nbsp;
</p>
<p>
	�ʱ�ʱ��
</p>
<p>
	���û�����3�꣬�ۺ������Ʒ�Ƴ����ṩ��֧��ȫ����������������������
</p>
<p>
	&nbsp;
</p>
<p>
	��ϸ����
</p>
<p>
	����ֲ�Ʒ�����������ϣ����ɲ�ѯ�����ά�޵㣬�ɳ��̵��ۺ�����Ҳ��ƾ����ά�����Ļ���Լά�޵����ṩ���������֤��������7�����˻���15���ڻ���������15�������ʱ����ڣ���������ѱ��޵������������ߡ����������ʣ�����ѯ�����ͷ��绰
</p>
<p>
	<br />
</p>
<p>
	&nbsp;
</p>',99,36,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:45:48',N'2013/12/10 4:09:29')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 34,2,23,N'��֥ϴ�»�XQG75-ESE',N'/upload/201210/20/small_201210201048503818.jpg',N'��֥����Ӫ����ʽ����ľ��и߸���ֵ�ĵ���䡢ϴ�»���С�ͼ��õ������������������ճ��������Ҫ������������������������˾�������ձ��г�����Ӱ���豸�����������Ʒ����˾�ڹ��̷�չ�ձ��г����Ƶ�ͬʱ����ͨ������ʻ���ս���Խ��˴ٽ�������ҵ����չ����֥����Ӫ����',N'<table style="color:#000000;font-family:tahoma, arial, ����;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" width="700">
	<tbody>
		<tr>
			<td valign="top">
				<span style="line-height:25px;">��֥����Ӫ����ʽ����ľ��и߸���ֵ�ĵ���䡢ϴ�»���С�ͼ��õ������������������ճ��������Ҫ������������������������˾�������ձ��г�����Ӱ���豸�����������Ʒ����˾�ڹ��̷�չ�ձ��г����Ƶ�ͬʱ����ͨ������ʻ���ս���Խ��˴ٽ�������ҵ����չ����֥����Ӫ����ʽ���绹��˳��֧���������豸���յ���һ���Ե�غ��ۺ�����������ҵ���й���ҵ����֥����������˾����֥������˾�Ͷ�֥��ع�˾����֥�����빤�̹�˾�� ��Ҫ�ֻ�������䣻ϴ�»���΢��¯�������������ٶ����緹�Һ��Զ�ϴ���������������ϵͳ�����䡢��¥�����ÿյ���Ʒ��ϵͳ�ͼ�����һ���Ե�أ���ض����ȼ��õ�����</span> 
			</td>
		</tr>
	</tbody>
</table>
<span style="line-height:25px;font-family:tahoma, arial, ����;background-color:#FFFFFF;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20120710165839.jpg" width="700" height="39" /><br />
<span class="style27"><strong><span style="color:#FF6622;font-size:x-small;"><span style="color:#FF8C00;"><span style="font-size:14px;">��ϸ��Ϣ<br />
</span></span></span></strong></span></span><span style="font-family:tahoma, arial, ����;background-color:#FFFFFF;"></span> 
<table style="width:700px;color:#000000;font-family:tahoma, arial, ����;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
	</tbody>
</table>
<table style="width:700px;color:#000000;font-family:tahoma, arial, ����;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				<p>
					&nbsp;
				</p>
				<hr />
				<span style="line-height:25px;">�ͺţ�XQG75-ESE&nbsp;<br />
ϴ��.��ˮ������kg����7.5<br />
ϴ�ӡ����/���������kg����-<br />
��ɫ����ɫ<br />
<strong>ϴ����</strong></span> 
				<p>
					&nbsp;
				</p>
				<p>
					<span style="line-height:25px;"><img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20110119145724.jpg" width="113" height="33" />��<br />
DSP��Ƶ��������<br />
ϴ�ӳ������ͣ���׼������ϴ�ӣ����䣬�ִ�ϴ�ӣ�ǿ�������������ޣ�ë̺��Ͱ���<br />
X��ǿ��˫����ϴ�ӣ�--<br />
�����ϴ�ӣ��Ĵ�ϴ+�ִ�ϴ������<br />
�����ˮת�٣�ת/�֣���1200<br />
<strong>���</strong>&nbsp;<br />
��߼����¶ȣ���C����60<br />
�����ӿ���ˮ��--<br />
������ˮ��--<br />
Ͱ��ࣺ��<br />
Ͱ��ɣ�--<br />
<strong>����<br />
</strong>��Ч�ȼ���1<br />
�޼�ˮλ����<br />
�Զ��ϵ磺��<br />
��׼����ʱ�䣨�֣���Լ74<br />
��׼��ˮ����L/kg����10.5<br />
<strong>���Ի�����</strong>&nbsp;<br />
������壺LED���<br />
�����Լ죺��<br />
ʱ��ԤԼ����<br />
ͯ�����ܣ���<br />
ϴ������/��ˮ����dB��A����51 / 58<br />
<strong>��������&nbsp;<br />
</strong>���ѹ��V��/Ƶ�ʣ�Hz����220 / 50<br />
����� ϴ�ӣ�140 &nbsp;&nbsp;��ˮ��170&nbsp;��ɣ�--<br />
���������ʣ�W����1740<br />
�����ߴ磨��*��*��mm����655*714*1040<br />
���أ�kg����69<br />
&nbsp;</span> 
				</p>
				<hr />
				<span style="line-height:25px;"><span style="font-size:14px;"><span style="color:#FF8C00;"><strong>���ܽ���</strong>&nbsp;<br />
</span></span>1.�����ϴ�ӣ��Ĵ�ϴ+�ִ�ϴ��<br />
2.Active S-dd������棬�ɱ������ǿ��������<br />
3.DSP��Ƶ��������׼���ơ�<br />
4.�����ӿ���ˮϴ�ӣ���ˮʱҲ�ɿ������ྻ���<br />
5.90��C���³�������ǿ��������<br />
6.������������ƣ����������<br />
7.������Ч�ȼ�1����ʡˮʡ�硣<br />
8.Ͱϴ�����ܣ��ǻ���Ͳ��<br />
9.����ʱ��ԤԼ���ܣ�ԤԼ����ʱ�䡣<br />
10.��;��׷�����������ơ�<br />
11.��ˮë�޹���������װ��ݡ�<br />
12.ǿ��ѭ���ã�ѭ��ϴ�ӣ�ϴ�¸����ס�&nbsp;<br />
<img alt="" src="http://image.suning.cn/images/nrgl/cpjs/101281054_20120710165858.jpg" width="700" height="39" /><br />
</span> 
				<table style="width:700px;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
					<tbody>
						<tr>
							<td>
								<span style="line-height:25px;">1��1963�ꡢ1988�ꡢ1995�ꡢ1997�� �ٻ��ձ������ҵ�����������á����󽱡���<br />
2��1976�ꡢ1977��&nbsp; �ٻ��ձ�������ͨ���ֽ��ͣ�<br />
3��1979�� �ٻ��ձ���ҵ����Ժ������<br />
4��1980�ꡢ1984�� �ٻ��ձ������ҵ�����������ã�<br />
5��1982�� �ٻ��ձ��¼������������д影��<br />
6��1984�� �ٻ��ձ����ܴ󽱣�<br />
7��1986�� �ٻ��ձ������ҵ�����������á�����������<br />
8��1998�� �ٻ��ձ�����ڼ��������<br />
9��1998�ꡢ2000�� �ٻ��ձ������ҵ�����������á��᳤������</span> 
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
								<span style="line-height:25px;"><strong>ʹ�ù�Ͳϴ�»�С�����ӳ�����<br />
</strong>��Ͳϴ�»�����ϴ�Ӳ�ĥ�𡢲����ƣ��ʿ��Է���ϴ�Ӹ����������ϴ��ǰ��Ҫע�����¼��㣺<br />
��ϴ��ǰӦС�Ĳ鿴�����ϵı�ǩ�����Ƿ����ˮϴ�����̵ȣ�����������ʵأ�����֯�����ˡ���ë��ѡ����Ӧ��ϴ�ӳ���<br />
����ɫ���з��࣬����Ӧ�������������ɫ����ֿ�ϴ�ӣ��鿴���Ƿ���ɫ��<br />
ϴ��ǰ���������ƾɵ�Ŧ�ۡ����롢�����������£������������·�Ҫ���������ϡ�<br />
ϴ�»��ĸ���������ϴ��������һ�룬�����ں��ʱҪע�ⲻ�ɷ��ù������������ɺ�������塣<br />
ϴ�»������Ժ���ý�ϴ�»������Ӵ�����һ�㣬�������ӳ��ܷ�Ȧ��ʹ���������������ڻ��ڳ�����ɢ����<br />
��Ͳϴ�»�һ��Ҫ�õ��ݡ���ȥ������ϴ�·ۣ������������ü���ϴ�ӡ�</span> 
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
<table style="width:700px;color:#000000;font-family:tahoma, arial, ����;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
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
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 35,1,10,N'�ʼǱ��Ľڵ� �����������ĳ�������ЧӦ',N'/upload/201210/20/201210202200180718.jpg',N'������ʮ����ݻ����ʼǱ�����������ǿ�����н��������У���Ȼ�����˲������˾��޵������Ʒ�����������޷������ʵķ�Ծ��Ȼ���������ĳ���ȴ������������֣��������ЧӦ�㣬һ�����ĸĸ����������������ĳ��ֶ��ڱʼǱ����Ծ����Ǻ�����������֮������һ���𶯣���',N'<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="�����������ĳ�������ЧӦ" alt="�����������ĳ�������ЧӦ" src="http://img0.pconline.com.cn/pconline/1209/20/2948576_500333.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ȥ��11�£�Ӣ�ض���������˳������Ķ��壬���ʱ�С������ᱡ���������С�����������������ȫ�µıʼǱ����Ϊ��̶����ˮ�������˾޴�������������������Ŀ�����ֱ�������U300S����˶UX21���곞����S3�Լ���֥Z830�����⼸�������ɫ�ĳ�����ȴʼ������һ������֮����������
</p>
<p>
	<strong>�ڵ㡪���ᱡ</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ڳ���������֮ǰ��ȻҲ�й��ǳ��ᱡ�ıʼǱ������ǳ�����ȴ������Ϊ��һ�ֱ�־���������������Ժ곞����S3Ϊ�ᱡ֮�13mm�ĳ������Ѿ�������һ�����壬�ᱡ����������������ܿ�õ��������û�����ͬ���ʼǱ�������Ϊ��Я������������ɵ����Էŵ�����������Я�������ǽ���һ���ʷ��ӵ��˼��㡣
</p>
<p>
	���ᱡ���ǳ����������ʼǱ���ĵ�һ�س����13�缰���»��Ͳ�����18mm��14�����ϻ��Ͳ�����21mm�����������������ϣ�ÿ0.1mm�Ľ����ƺ����ǳ��������ͻ�ƣ�����֮ǰ���ᱡ������������ȫ�������level��25mm���ҵı����Ѿ����Ƿǳ����������ˣ�Ҳ����Ϊ�ˣ�17mm��MacBook Air�ĳ��ֲŻ���������磬���������ǽ���һ��������ռ���
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="����900X3C" alt="����900X3C" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-1.jpg" /><br />
���� 900X3C-A01&nbsp;&nbsp;ͼƬ&nbsp;&nbsp;ϵ��&nbsp;&nbsp;����&nbsp;&nbsp;��̳&nbsp;&nbsp;����&nbsp;&nbsp;
</p>
<script></script>
<p>
	<br />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�˺󳬼����ı���νԽ��Խ���£�������900X3CΪ������������Ϊ12.9mm�ĳ�������һ��������֤���˳��������ܵ���ļ��ޡ�����900X3C������������ᱡ֮�ڷ���S3��������0.1mm��ͻ�ƣ������������Ƿ����ı�Ե�������Ӿ�Ч���ϸ��˸����˱��ĸо���
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="����900X3C" alt="����900X3C" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-2.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����û����ϲ��̫�����صıʼǱ������˱��Ļ������ִ���������������ʹ�������أ��ô���Ȼ�ǲ��ö�˵����Я�������Դ���һ�С�����Ϊ�˿��ƻ���ĺ��������������ܶ࣬������̵ļ��̣�������Ҳ�޷��ӳ��������Ͽ�����ͳ���̵���Ӱ�����ֳ��д��ڸе��û�Ҳ��Ҳ�޷���ᣬ�������ʣ��̼����Ǽ������г����������ڵı׶ˣ��޷����⡣
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="����" alt="����" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-4.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����֮�⣬���������޷������㹻�Ľӿ�Ҳ��һ��ڸ����ͨ�������ó�������ʱ���޷�ʹ���������磬�޷�ͬʱ���Ӷ������裬��Ȼ�������14Ӣ�����ϻ��������л��⣬������Եģ�14Ӣ��Ļ�����Ȼ����С�ߴ糬���������ᱡ��
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="����900X3C" alt="����900X3C" src="http://img0.pconline.com.cn/pconline/1209/19/2948576_sanxing-3.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�������������������ᱡ�ļ��½����������ڳ�����֮��ıʼǱ�Ҳ�ڳ����������Ľ���������Z13�ȡ��˱��Ļ����Ѿ���Ϊ�˱ʵ����Ʒ�����巢չ���ƣ�ȷʵ���������ǵ�������𽥼ӿ죬Խ��Խ����ƶ��칫����ʹ�õ����豸Ҳ������С�ͻ���ͬ����ֻ��˳Ӧ���ƵĲ�Ʒ��������˼��ҵľ�������ӱ������ֻ�з����û���������ıʼǱ����ܳ�Ϊ���������ơ�
</p>
<p>
	<br />
</p>',99,74,0,0,0,0,1,0,1,1,N'admin',N'2012/10/20 10:50:42')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 36,2,21,N'YORK�յ�YHFH-120B/N2CS',N'/upload/201210/20/small_201210201052093300.jpg',N'\��ȷѡ���յ������ܹ���յ�ʱ����ֱ����Ƶ�յ���ʡ�磻��Ч��Խ�ߵĿյ�Խʡ�磺�յ�����Ч���Ǻ���һ̨�յ��Ƿ���ܵ�Ψһ��׼���յ���Ч�ȼ�ԽСԽʡ�磺������ů�Ϳյ���Ӧѡ����縨�����ȿ��Ե������Ƶģ��յ��������(��)��Ҫ��ʹ��������Ӧ��ѡ��ѡС������ĵ硣 ��',N'<br />
<table style="width:700px;color:#000000;font-family:tahoma, arial, ����;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
							</td>
			<td>
				<span style="line-height:22px;"><strong><br />
<br />
��ȷѡ���յ�������<br />
</strong>����յ�ʱ����ֱ����Ƶ�յ���ʡ�磻<br />
��Ч��Խ�ߵĿյ�Խʡ�磺�յ�����Ч���Ǻ���һ̨�յ��Ƿ���ܵ�Ψһ��׼��<br />
�յ���Ч�ȼ�ԽСԽʡ�磺������ů�Ϳյ���Ӧѡ����縨�����ȿ��Ե������Ƶģ�<br />
�յ��������(��)��Ҫ��ʹ��������Ӧ��ѡ��ѡС������ĵ硣</span> 
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;&nbsp;
			</td>
			<td>
				<span style="line-height:22px;"><strong><br />
<br />
��ȷʹ�ÿյ�������</strong><br />
˯��ʱӦʹ��˯�߹��ܣ��������ֽ��ܣ�<br />
��ʱ����ǰ1-2Сʱ��ǰ�رտյ�����ҪƵ�����ؿյ���<br />
�����ٿ��Ŵ��������������Ƚ�����<br />
����ʱ��ס������ĳ���ڣ�����ή����ů��Ч�����˷ѵ�����</span> 
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
��ȷ�����յ�������<br />
</strong>������ϴ�յ��Ļ��������˳��������Ч�ʣ�<br />
��ʱ�䲻ʹ�ÿյ�Ӧ�ε���Դ��ͷ����Ϊ����״̬Ҳ��ĵ硣&nbsp;&nbsp;&nbsp;&nbsp;<br />
<br />
</span> 
			</td>
		</tr>
	</tbody>
</table>',99,13,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 10:52:35',N'2013/12/10 4:09:19')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 37,2,21,N'�����յ�KFR-35GW/(35556)FNFa-3(�����)',N'/upload/201210/20/small_201210201055447111.jpg',N'��Ҫ�����ص㣺                          �� ����G10��Ƶ����                          �� 150-260V�����ѹ���У����÷�Χ���㷺                          �� ��ҵ�״�����ʡ��ģʽ                          �� ������ƣ���������˯��                          �� ������',N'<div style="font-family:tahoma, arial, ����;background-color:#FFFFFF;" class="detail_img">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��Ҫ�����ص㣺<br />
</span> 
								</td>
							</tr>
							<tr>
								<td class="u_td_menu" colspan="2">
									<span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ����G10��Ƶ����<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�� 150-260V�����ѹ���У����÷�Χ���㷺<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ��ҵ�״�����ʡ��ģʽ<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ������ƣ���������˯��<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ������ù������������������<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ����+�ɿص縨������<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� �ɿس�ǿ��<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� �Զ����<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ������ʪ<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �� ��������</span> 
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>',99,154,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 10:56:05',N'2013/12/10 4:09:15')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 38,1,10,N'��������һ�ּ���! ����duo11��籾����',N'/upload/201210/20/201210202205217874.jpg',N'�����＾����Ʒ����һ�����VAIO Duo 11����ʵ�ڵ�һ�ο�������Ʒ��ʱ��༭Ҳ�Ǻ���˵����⵽����һ̨ƽ����ԣ�����һ̨�ʼǱ����ԡ������ǹر�ʱ��VAIO Duo 11����ȥ����һ̨���ᱡ��ƽ����ԣ�������������ʱ����̨11Ӣ����豸������һ��ܱ��µıʼǱ���',N'<p style="text-align:left;">
	�ڽ�����α�ʢ�е�����£�VAIO Duo 11�ĳ��ֲ�����֣��ڼ����˷�ת����˫����֮���ٿ�����ͬ�����ֻ�һ��Ĳ�ƷҲ��������̫�������ˡ��Ƚ�����˼��������VAIO Duo 11�Ĵ���Ͷ�֥��U920T���ǱʼǱ���ͬ�ˣ�������ϵ�����ƺ������Ƴ�������ʽ�ıʼǱ������䱸���̣��߱�������intel������������£����ǻ�����Ϊ����������ڳ�������������ϸ�Ķ��壬���д�����ٷ�����˵����
</p>
<p style="text-align:left;">
	<strong>�� �������� IPSȫ������Ļ</strong> 
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_1.jpg" /> 
</p>
<p style="text-align:left;">
	�����ƺ��Ǳ��κͿ�����Ʒ���б�����һ�꣬�ڹ�ȥһ����֮�к����в�Ʒ����Ƴ��ں���Ļ�������������ȷʵһֱ���ڳ��Ը�����������Ĳ�Ʒ������ȥduo11Ҳֻ�������е�һ����ѡ�
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_5.jpg" /> 
</p>
<p style="text-align:left;">
	�����۵��ĵ���֮�⣬VAIO Duo 11������������Ƕ����ɺϽ�����Ƴɣ��������зǳ����ʸС��Ӳ������������ƺ�����һ��ƽ����Լ�����һ�����̵���֮�ϡ�������Ҫ������һ��򵥵�֧���Ǻ���ʵ�ֵģ�����Ҫ������ߺ�֧�ܵ����⡣�������ǻ������֧������صĽ��ܡ�
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_2.jpg" /> 
</p>
<p style="text-align:left;">
	VAIO Duo 11������11.6Ӣ���ȫ����IPS��ʾ�����ֱ��ʴﵽ��1920 x 1080����������Ļ�ֱ���Ҫ�ȶ����ĳ�������Ҫ���ˣ�������Ŀǰ���ŵ�surfaceҲԶԶ����������Ļ�������ȡ�����ɫ�ʺ������ȶ�����ӡ����̡�IPS��Ļ�����й������ӽǣ��������Դ��κνǶȿ�����Ļ�ϵ����ݡ����Կ�������������Ʒ��Ҳ�����˲��ٹ���ġ�
</p>
<p style="text-align:center;">
	<img style="border-bottom:black 1px solid;border-left:black 1px solid;width:500px;border-top:black 1px solid;border-right:black 1px solid;" title="sony duo11" alt="sony duo11" src="http://img0.pconline.com.cn/pconline/1210/18/3030270_DSC_4190.jpg" /> 
</p>
<p style="text-align:left;">
	VAIO Duo 11����Ļ��Ŀǰ�����ƽ�������Ļ�ǳ����ƣ���������Ļ�Ϸ���װ��һ����������Ļ���֧��10�㴥�أ��ڴ�������ʱ�о����Ƿǳ������ġ�
</p>',99,7,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:03:57')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 40,2,20,N'�����ֲʵ�42PFL3320/T3',N'/upload/201210/21/small_201210210001069890.jpg',N'ͼƬ/��ʾ��߱�: 16:9 ����Ļ��Ļ�Խ��߳ߴ磨Ӣ�磩: 42Ӣ����Ļ�Խ��߳ߴ磨���ƣ�: 107������ʾ������: ��Դ���� LCD, ȫ�������ֱ���: 1920 x 1080����Ч����ǿ: 720p 50/60 ���ȴ���, 2D/3D ����, 3/2 - 2/2 �ƶ�����, 3D ��״�˲���, ����, ���뽵��, ��̬�Աȶ���ǿ��',N'<br />
<table style="width:700px;color:#000000;font-family:tahoma, arial, ����;font-size:12px;background-color:#FFFFFF;" class="ke-zeroborder" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				<span style="line-height:25px;"><strong>ͼƬ/��ʾ<br />
</strong>��߱�:&nbsp;<span style="color:#808080;">16:9 ����Ļ</span><br />
��Ļ�Խ��߳ߴ磨Ӣ�磩:&nbsp;<span style="color:#808080;">42Ӣ��</span><br />
��Ļ�Խ��߳ߴ磨���ƣ�:&nbsp;<span style="color:#808080;">107����<br />
</span></span><span style="line-height:25px;">��ʾ������:&nbsp;<span style="color:#808080;">��Դ���� LCD, ȫ����</span><br />
���ֱ���:&nbsp;<span style="color:#808080;">1920 x 1080<br />
</span>����Ч����ǿ:&nbsp;<span style="color:#808080;">720p 50/60 ���ȴ���,&nbsp;</span><span style="color:#808080;">2D/3D ����, 3/2 - 2/2 �ƶ�����, 3D ��״�˲���, ����, ���뽵��, ��̬�Աȶ���ǿ, �����ȵ���<br />
</span>��Ļ��ǿ:&nbsp;<span style="color:#808080;">�������Ĥ����<br />
</span><strong>֧�ֵ���ʾ�ֱ���</strong><br />
���Ը�ʽ:<span style="color:#808080;">1920 x 1080��60 ����, 640 x 480��60 ����, 800 x 600��60 ����, 1024 x 768��60 ����, 1360 x 768��60 ����</span><span style="color:#808080;"><br />
</span>��Ƶ��ʽ:&nbsp;<span style="color:#808080;">1080p��50��60 ����, 480i��60 ����, 480p��60 ����, 576i��50 ����, 576p��50 ����, 720p��50��60 ����, 1080i��50��60 ����<br />
<span style="color:#000000;"><strong>����</strong></span><br />
</span>������� (RMS):&nbsp;<span style="color:#808080;">2x10 ��<br />
</span>��Ч��ǿ:&nbsp;<span style="color:#808080;">�Զ���������, ������������<br />
<span style="color:#000000;">����ϵͳ:&nbsp;</span>������, ������<br />
<span style="color:#222222;"><strong>������<br />
</strong>��ͯ����:&nbsp;</span>��ͯ�� + ��ĸ�˿ؼ�<br />
</span></span> 
			</td>
			<td>
				<span style="line-height:25px;"><span style="color:#808080;"><span style="color:#222222;">ʱ��:&nbsp;</span>��ʱ�ػ�<br />
</span>������ǿ:&nbsp;<span style="color:#808080;">��������<br />
</span>���ڰ�װ:&nbsp;<span style="color:#808080;">�Զ��洢, ΢��, PLL ���ֵ�г<br />
</span>����ʹ��:&nbsp;<span style="color:#808080;">�Զ���������, EasyLink, ��Ļ��ʾ, ���, ����ͼ��, ��������<br />
</span>��Ļ��ʾ����:&nbsp;<span style="color:#808080;">Ӣ��, ��������<br />
</span>ң����:&nbsp;<span style="color:#808080;">����ң����<br />
</span>��Ļ��ʽ����:&nbsp;<span style="color:#808080;">4:3, ���� 1, ���� 2, ����Ļ</span><span style="color:#808080;">��</span><strong>ý��Ӧ��</strong><br />
��ý������:&nbsp;<span style="color:#808080;">USB<br />
</span>���Ÿ�ʽ:&nbsp;<span style="color:#808080;">RMVB��RealMedia �ɱ�����ʣ�, MPEG4, MPEG2, MPEG1, H.264/MPEG-4 AVC, AVI, ��Ƭ (JPEG), MP3<br />
</span><strong>��г��/����/����</strong><br />
��������:&nbsp;<span style="color:#808080;">75 ŷķ��IEC �ࣩ�����棩<br />
</span>Ԥ��Ƶ����:&nbsp;<span style="color:#808080;">200</span><br />
��г����:&nbsp;<span style="color:#808080;">UHF, VHF<br />
</span>������ʽ:&nbsp;<span style="color:#808080;">PAL B/G, PAL D/K, PAL I</span><br />
��Ƶ����:&nbsp;<span style="color:#808080;">NTSC, PAL</span><br />
<strong>����</strong><br />
��������:&nbsp;<span style="color:#808080;">75 ŷķ��IEC �ࣩ�����棩<br />
</span>HDMI 1:&nbsp;<span style="color:#808080;">HDMI v1.3�����棩&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
HDMI 2:&nbsp;<span style="color:#808080;">HDMI v1.3�����棩</span></span> 
			</td>
			<td>
				<span style="line-height:25px;">������Ƶ 1:&nbsp;<span style="color:#808080;">YPbPr + L/R ��Ƶ�����棩<br />
</span>AV 1:&nbsp;<span style="color:#808080;">CVBS �� L+R ��Ƶ�����棩<br />
</span>AV 2:&nbsp;<span style="color:#808080;">CVBS �� L+R ��Ƶ���Աߣ�<br />
</span>PC ����:&nbsp;<span style="color:#808080;">D-sub�����棩, 3.5 ����������Ƶ��ף����棩<br />
</span>AV OUT:&nbsp;<span style="color:#808080;">CVBS�����棩, ��Ƶ L/R ��������棩<br />
</span>USB:&nbsp;<span style="color:#808080;">USB2.0x1�����棩, USB2.0x1�����棩<br />
</span>EasyLink (HDMI-CEC):&nbsp;<span style="color:#808080;">����ʽ����, ϵͳ��Ϣ���˵����ԣ�, ϵͳ����<br />
</span><strong>����</strong><br />
�����¶�:&nbsp;<span style="color:#808080;">5 ��C �� 40 ��C<br />
</span>����Դ:&nbsp;<span style="color:#808080;">200-240 ����50 ����<br />
</span>����:&nbsp;<span style="color:#808080;">13</span><span style="color:#808080;">0 ��</span><br />
��������:&nbsp;<span style="color:#808080;">&lt; 0.5 ��<br />
</span><strong>�ߴ�</strong><br />
���ݵ�ǽ��:&nbsp;<span style="color:#808080;">VESA 400x400 ����<br />
</span><strong>����</strong><br />
�渽�ĸ���:&nbsp;<span style="color:#808080;">2</span><span style="color:#808080;">&nbsp;�� AAA ���, ��Դ��, ң����, ����, �û��ֲ�, ���޵�<br />
</span>�û��ֲ�:&nbsp;<span style="color:#808080;">��������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span> 
			</td>
		</tr>
	</tbody>
</table>',99,433,0,0,1,0,1,1,0,1,N'admin',N'2012/10/20 11:06:58',N'2013/12/10 4:09:10')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 42,1,9,N'˫�˾����ײ� ˢ������698Ԫ�»�����',N'/upload/201210/22/201210220953227953.jpg',N'�⼸���ƺ��ǹ������󱬷���ʱ�̣��Ӵ���ֵ�Ŧ���ٵ��Ա����Ƴ����Լҵ�Android�����ֻ���Ʒ���⻹�����꣬����ˢ������CEO��΢����Ҳ�ų����µڶ�������������ϸ���ã���һ��ͼ�˫���ֻ����ˡ�',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��΢�����ع����Ϣ������<strong>ˢ������ڶ����������������ʺ����Ƴ��ģ�����ΪĢ��M2���������ݴ��ԣ��г���λ898Ԫ��������ƽ̨���Żݼ۸�Ϊ698Ԫ</strong>��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�û��ĳߴ�Ϊ122��63.6��10.4mm������һ��<strong>4Ӣ��IPSȫ�ӽǴ��������ֱ���Ϊ800��480���䱸��һ����Ƶ1GHz��MTK6577˫�˴�����������1GB 
RAM�Լ�4GB ROM</strong>�����֧��32GB 
MicroSD����չ��ͬʱ���ṩ��500�����غ�������ͷ�Լ�30������ǰ������ͷ��֧���Զ��Խ��Լ�720P��Ƶ���㣬����Android 4.0����ϵͳ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����û���֧��˫��˫�����ܣ��䱸һ��1500mAh��ء����ع��ͼƬ���������������С���ֻ�2�����Ƶĵط�������Ϊ��ɫ������������������˴�����ɫ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ʵ����ûʲô�ĺ�˵���ˣ����ǧԪ����˫�����ܻ�Ƶ��Ӧ�ö����������ƵĹ��Ͱɣ�û��MTK6577������棬����Ҳ��������ô��ġ�������������
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:09:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 46,3,25,N'#̩̹��˺�# ���㻨��',N'/upload/201210/20/small_201210201128412942.jpg',99,15,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:29:03')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 47,3,26,N'���������Ͳ˻��������ഺ����.',N'/upload/201210/20/small_201210201134400466.jpg',99,6,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:34:58')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 48,3,25,N'ѧ����ģ������ʪ���Ը���Ƭ',N'/upload/201210/20/small_201210201137062000.jpg',99,33,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:37:35')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 49,3,25,N'���ݻ�ò',N'/upload/201210/20/small_201210201143259178.jpg',99,25,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 11:44:27')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 51,3,25,N'��ͷ����',N'/upload/201210/20/small_201210201150403758.jpg',99,14,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 11:51:25')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 52,3,29,N'��Ϸ�е���Ů����������ֽ',N'/upload/201210/20/201210202300203204.jpg',99,55,0,0,0,1,1,0,0,1,N'admin',N'2012/10/20 11:54:23')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 53,3,25,N'����jiwon pang CG��Ʒ',N'/upload/201210/20/small_201210201156192282.jpg',99,47,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 11:56:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 50,3,25,N'ӡ����',N'/upload/201210/20/201210202304102474.jpg',N'ʮһ����ȥ������������룬9��11����Я���϶��˻�Ʊ��9��13����ͬ�����϶��˾Ƶꡪ����ҾƵ꣨�����ȪУ�����棩��370Ԫһ��10��2������9��20�ķɻ��������������ˣ�9��40����6������3�㷵�ء�ȥʱ290Ԫ������680Ԫ��       ���Ƶ��Ѿ���3�ŵ�0��30���ˣ��������㡭',N'<p align="left">
	&nbsp;&nbsp; &nbsp; ʮһ����ȥ������������룬9��11����Я���϶��˻�Ʊ��9��13����ͬ�����϶��˾Ƶꡪ����ҾƵ꣨�����ȪУ�����棩��370Ԫһ��10��2������9��20�ķɻ��������������ˣ�9��40����6������3�㷵�ء�ȥʱ290Ԫ������680Ԫ��
</p>
<p align="left">
	&nbsp; &nbsp; &nbsp; &nbsp;���Ƶ��Ѿ���3�ŵ�0��30���ˣ�������������ˣ������·�ϵ��·�С�Գ��緹��Ϻ��С�������������е��̡�����С���ߵ���Ȫ��������ȥ����ģ���������̫̫����˵����ȥ�����Ĺ���ã��Ƽ�����ȥ������԰�������̼�ɽ��˵����ȥ��ũ�����������裬Ȼ����ȥ�׷������պ���������������ʮ�ˣ�������ȥ��������Ǯ�����󳱡�
</p>
<p align="left">
	&nbsp; &nbsp; &nbsp; &nbsp;�ðɣ��������˼ҵ�ָ���ɣ�����27·�����˺öడ����������ͷ��̫̫���ϳ�Ҳû��������Ҳ������˼�����Ǽ����̼�ɽ�Ĳ�ũ�Ҷ��Ǻ����й滮�İ�ǽ���ߵĽ��Ϸ����С¥������ũ���������ǰ�������裬ζ����Ĳ��ܴ󣬲�ũ˵���������֡���ʨ�������������������㽭������ʨ�������ǰ�ɳ���ֵģ����������Ǻ������ֵģ��㽭�����к������ֵģ������ֵ���ʨ���������йɳ��ƶ���ζ��������8����500Ԫ��
</p>',99,55,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 11:47:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 54,3,29,N'��������Ϸ�����ɲ���������ģ�',N'/upload/201210/20/small_201210201200526551.jpg',99,50,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 12:02:11')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 55,3,25,N'��ɫ��˼��33',N'/upload/201210/20/small_201210201205466391.jpg',99,13,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:05:50')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 56,3,25,N'�����š���Բ���ɽ�5ǰ���� �����貨3D�ع�',N'/upload/201210/20/small_201210201207599384.jpg',99,21,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:08:05')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 57,3,26,N'�٣��������ɵ��˰�',N'/upload/201210/20/small_201210201209063079.jpg',N'�٣��������ɵ��˰�',99,66,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 12:11:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 58,1,5,N'��ͨ4GƵ�ʹ滮�ع⣺��3G���ÿ�ƽ������',N'/upload/201210/22/201210220957016335.jpg',N'�ڹ��Ų�͸¶TDD-LTEƵ�׹滮��֪����ʿ�����˿Ƽ�͸¶���й���ͨ���ܻ񷢵�4G���պ�Ƶ����Դ����Ϥ���й���ͨ����õ�4G����ΪFDD-LTE����ʹ�õ�4GƵ�ʽ�����3G���ã���������������ͨ3G��4Gƽ�����ɣ�����ͨ��4G�ǳ�������',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Ϥ���й���ͨ���ܽ���õ�4GƵ��Ϊ1.8GHz��2.1GHzƵ��2��60MHz������Ŀǰ��δʹ�õ�Ƶ�Σ�Ƶ����ԴҲ�ȽϷḻ��������Ҫ���ǣ����ҿ��������Ƶ�μ�����3G��������4G��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���й���ͨ�ڽ������ɹ���3G�豸��Ҳ������׼����ֻ��Ҫ��������Ϳɹ��ɵ�4G����ˣ�ҵ����Ϊ4Gʱ������������ͨ������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������Ŀǰ���޷�ȷ��1.8GHz��2.1GHzƵ��2��60MHz��120MHz�Ƿ�ȫ���鲦����ͨ����Ϊ�й�����Ҳһֱϣ����FDD-LTE��������ϣ����TD-LTE��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������ǰ�����Ų���ظ�������͸¶���ҹ��Ѿ�������2.6GHzƵ�ε�2500-2690Hz��ȫ��190MHzƵ����Դ�滮ΪTDDƵ�ף��滮��TD-LTEƵ�׶��190 
MHz����������ֻ�ָ�һ����Ӫ��ʹ�ã������Ļ����ܿ����й�����Ҫʹ��TD-LTEƵ����Դ���Ӷ���4Gʱ����TD-LTE��
</p>',99,79,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 12:12:39')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 59,1,3,N'���پܾ�ƻ���������ļ�������',N'/upload/201210/22/201210221005341893.jpg',N'ƻ��������ȫ����ع�˾���ڼ������С���������������Ժ����Lucy Koh������ƻ���йط������ļ�������',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ƻ��������ȫ����ع�˾���ڼ������С���������������Ժ����Lucy Koh������ƻ���йط������ļ�������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ƻ������Զ�빫�����ߵ��ļ��������ض���Ʒ�ĵ�λ�������롢���������ʺͳɱ����ݡ���ƻ������Ժ�����Щ�ļ����Ա�����δ��ͥ����ʹ����Щ�ļ����е����ݣ�������ƻ���ڹ�˾����ʤ����
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Щ�����ļ������԰���ƻ��������������Ӯ��5.35��������Ϊֹ��ƻ���Ѿ��Ӻ����ǵĹ�˾����Ӯ��10.5����Ԫ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Lucy 
Kohָ����ƻ������ʹ����Щ�����ļ���Ϊ֤�ݣ�ͬʱҪ������Щ�ļ�����Ѱ������⳥��ƻ����������������ļ���������Ѱ�������⳥�������ļ���������������֮��Ĺ�˾��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Lucy Koh��ʾ��ƻ����û���ṩ�κ������ŷ����������÷�ͥ�����Щ�����ļ���ƻ��Ŀǰ�����ɽ��������ļ��е���Ϣ����ҵ���ܡ�
</p>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:15:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 60,3,26,N'ֻ����������˶���',N'/upload/201210/20/small_201210201224112027.jpg',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:24:21',N'2013/12/10 4:07:59')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 61,1,3,N'Google�������Ʊ���ǰй© �ɼ۱���',N'/upload/201210/22/201210221015558926.jpg',N'���ݽ��췢���ĲƱ���Google�ڽ���9��30�յ�2012�������������������141����Ԫ����ȥ��ͬ�ڵ�97.2����Ԫ������45.1��������������ֻ��21.8����Ԫ����ȥ��ͬ�ڵ�27.3����Ԫ��������20.1����',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���ݽ��췢���ĲƱ���Google�ڽ���9��30�յ�2012�������������������141����Ԫ����ȥ��ͬ�ڵ�97.2����Ԫ������45.1��������<strong>������ֻ��21.8����Ԫ����ȥ��ͬ�ڵ�27.3����Ԫ��������20.1����</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Ϊ������ǣ�<strong>Google���²Ʊ�����������緢�˳�����������ɼ��ش�9��������ױ���ͣ��</strong>�ݳƣ�Google�ύ������֤ȯ����ίԱ�����ݱ���������ˡ�����(Google 
CEO��������)���۴�����(pending larry quote)�Ķ�������������Twitter��Ѹ���ߺ졣
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Google��󷢱�������ʱ�֣�����<strong>ӡˢ����˾RR 
Donnelleyδ����Ȩ�����Թ�����8K���񱨸�ݸ�����</strong>��Ϊ��Google��ͣ�����Ʊ����˹��˵Ľ��ף����ڲƱ���ʽ���������½��ס�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Google��������ÿ������6.53��Ԫ����ȥ��ͬ�ڵ�8.33��Ԫ������21.6����
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Ħ������ΪGoogle���׵�����Ϊ25.8����Ԫ��ռ�������18��������17.8����Ԫ�����ƶ����ţ�7.97����Ԫ���Լ�ͥ���ţ�<strong>����5.27����Ԫ</strong>���ƶ����źͼ�ͥ���ŷֱ�Ϊ5.05����Ԫ��2200����Ԫ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;GoogleĿǰ�����ֽ��ֽ�ȼ���ɱ����м�֤ȯ��ֵ457����Ԫ��<strong>ȫ��ȫְ��Ա53546��</strong>������Googleҵ��Ա��36118�ˡ�Ħ������ҵ��Ա��17428����<strong>�ϼƱ�һ������ǰ������1058��</strong>��
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:25:56')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 62,1,3,N'�ϸڰ��� �����ްԡ���10������',N'/upload/201501/30/201501301550320359.jpg',N'����һ�ӵķ�����ƿ����ֽ�������������������������ǵ�����?ʱ�����Σ�ʱ�����䡣��Ʒ���ղ�ҵ���뾭������ϢϢ��أ�����̬����ϢϢ��ء���Ʒȥ����?׷�ٻ��ղ�ҵ���������߽���Щ�����㡱��ҵ��',N'<p>
	<table>
		<tbody>
			<tr>
				<td class="line-content">
					<span class="html-tag">&lt;P&gt;</span>������ƿһëǮ�����������գ�һëǮ�ĸ�����ǿ�е�׬����24�գ��人61��ġ����������˴�������һ�������ƿ�ؼң���ͷɥ��������Ʒվ����ƿһ��һ���ۣ���������ޣ����ﻹ��500������ǰ�߼������Ĵ�������˴���ָ�Ÿ�¥��װ������ƿ�����˵�����ͳ����˱������߿���2014��11�£�������ƿÿ��0.1Ԫ��ÿ����6.8Ԫ���ϵ���Ʒվ��ÿ����ֻ��4.2Ԫ��ÿ���ﾻ��2.6Ԫ;2014��12�£���2��ƿ��0.1Ԫ�գ����ڿ���������3&amp;nbsp;��ƿ��0.1Ԫ��ÿ����Լ2.27Ԫ�����ȷ�Ʒվ�չ��۸߲���1��Ǯ����68��ũ��ɽȪ����36������ƿ�ӲŴ�һ���׬��������Ǯ�����˴�������һ˫�����ϼ���֡�<span class="html-tag">&lt;/P&gt;</span> 
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
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;�۸񵹹�Ҳ�÷�Ʒվ�ϰ庰�����������԰·һ��ƫƧ���������������򳡴�С�ķ����϶ѳ���������ƿ������30������������μӹ���ҵ�չ��۱��Ҵ��������Ƕ��Ľ��ۻ��ͣ������û�����ˡ����÷�Ʒվ�ϰ�����Ρ�<span class="html-tag">&lt;/P&gt;</span> 
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
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;�人������Դ��ҵЭ�ḱ�᳤л���۷���������ʯ�ͼ۸�����µ��Ƿ����ϻ��ղ�ҵ�������ӡ�����Ҫԭ�����ڣ������������˵ľ�����ά������(����ƿԭ���ϣ���ʯ������ȡ)������ÿ����ֻҪ5Ԫ���������ƿ���ռӹ��ƳɵĿ����ϼ۸�����޼���������ҵ��ô���ܻ��þ���?<span class="html-tag">&lt;/P&gt;</span> 
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
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;л����˵�����ϴ��ȸߡ����Ժã����ܱ��⻯����ҵ�ӹ����ϲ��������۳ɱ������⣬������ҵ�������Ͽ����õ���ֵ˰��Ʊ���������������л��յľ���û�з�Ʊ��17%����ֵ˰�޷��ֿۣ�������������ҵ˰�Ѹ�����ÿ���¾��ϲ�۲�����5000ԪǮ�����Ͼ����Է���<span class="html-tag">&lt;/P&gt;</span> 
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
					<span class="html-tag">&lt;P&gt;</span>&amp;nbsp;л���۱�ʾ��Ŀǰ�人��С�����ϻ���վ��ǧ�ң���ѹ�ķ�����ƿ���ڼơ����ھ��ϻ��հ�������������Ʒվ�������ϼӹ��ȶ�����ڣ��˹��ɱ��ߣ����ۿռ����ޡ���ʯ�ͼ۸��ڵ�λ�ǻ��ı����£������Ϻ�ȥ�δ�?���������⡢��ì�ܡ�&amp;nbsp;<span class="html-tag">&lt;/P&gt;</span>
				</td>
			</tr>
		</tbody>
	</table>
</p>
<p>
	<br />
</p>',0,34,0,0,0,0,0,0,0,1,N'admin',N'2015/1/30 15:50:38',N'2015/1/30 16:07:43')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 63,1,4,N'�����ع�΢������©�� �����˺�������',N'/upload/201210/20/201210201256195408.jpg',N'��ǰ���ã������Ѹ��ݵ绰�ɷ��ܺ�t����Ƶ��������ͨ�������ֶη��������ܺ�t�ĵ绰���룬�ܺ�t��֪��������΢���������׳������֦��������������ͨ������΢���˺Ű�ȫ������©�����ɹ����ƽ�����ѶCEO����΢���˺ţ�ֻ�ǲ�֪�����᲻�������ڵĴ��ࡣ',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ǰ���ã������Ѹ��ݵ绰�ɷ��ܺ�t����Ƶ��������ͨ�������ֶη��������ܺ�t�ĵ绰���룬�ܺ�t��֪��������΢���������׳������֦��������������ͨ������΢���˺Ű�ȫ������©�����ɹ����ƽ�����ѶCEO����΢���˺ţ�ֻ�ǲ�֪�����᲻�������ڵĴ��ࡣ
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��λ����WooYun��̳�ĺڿ����ѹ�����©�����ƽ������̣���Ȼ�ڼ��������������ͨ����˵��һЩ�Ѷȣ����������רҵ��ʿ��˵Ӧ������С��һ����
</p>',99,10,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 12:57:06')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 64,1,5,N'�������߷�Ժ�о����ֻ����˻�����',N'/upload/201210/20/201210201259238484.jpg',N'�ֻ���������徿����ʲôΣ������һ���ѧ�Ҳ�û�������϶��Դ𸴡�Ȼ���������������߷�Ժ��һ���о���������ˡ��϶����𰸡�',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�������߷�Ժ���ս���������һ�𰸼����ù�һ������Innocente 
Marcolin���������������������Լ�������<strong>���������Լ���ȥ12���������ͻ�̸���⣬ÿ��ʹ���ֻ��������绰����6Сʱ�������Բ��������񾭲���������</strong>������Ż�������ǰ���Ѿ�������̱��ϣ���õ������⳥��������ʦ�ṩ��ҽ��֤��������ʹ���ֻ������ӻ����������ķ��ա�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;�������߷�Ժ�����о���<strong>��ΪInnocente Marcolin�����������Ӧ��ù����⳥</strong>��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;��Ҫָ�����ǣ���ǰ�Ŀ�ѧ�о���δ�ܷ����ֻ�����������֮�����ֱ�ӹ�ϵ������������֯Ҳֻ�ǽ��ֻ�����Ϊ�����ܵġ��°����ɱ����Ϳ���һ����
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;�������߷�Ժ�Ĵ˴��о��Ƿ����������ҵĴ��స������ָ�������ã�Ҳ����ͷ���Ա������Ҳ�ܰ����˴����ˡ�
</p>',99,9,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 12:59:47')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 65,1,3,N'������ƻ������ʽ��ҵ ��˿��ҹ�Ŷ�',N'/upload/201210/20/201210201309186909.jpg',N'����������Apple Storeƻ���̵��������9����ʽ��ҵ����������������ҵ��apm(ԭ�¶����̳�)����Ŀǰ��������ƻ���̵ꡣ',N'<p style="text-align:center;">
	<img src="/upload/201210/20/201210201309307338.jpg" alt="" />
</p>
<p>
	<br />
</p>
<p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����7��30�֣��ֳ�����Լ200�������ŶӵȺ��ǰ��һλ�����˳��Լ�<strong>����9����Ѿ��ڴ��Ŷ�</strong>��9������ҵʱ������ǰ�����˿;�������һ������T������ֻ���˰��Сʱ�ͷ����ˡ�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������ƻ���깲�����㣬������������͵���һ�㣬���Ҵ��б�־�ԵĲ�����ת�ݡ�<strong>����һ��Ϊ��Ʒ������</strong>��չʾiPhone��iPad��MacBook�Ȳ�Ʒ������Ϊ�л���δ����������û�����µ�iPhone 
5��iPod 
touch��<strong>���϶���Ϊ��Ű�</strong>��360����ƣ��˿Ϳ�վ��ƻ���ķ�����Ա��߽�������ܷ��񣬲�ͬ��������̨ʽ������棬��Ҳ��<strong>Ŀǰ����Ψһ��360����Ƶ���Ű�</strong>��<strong>����һ��Ϊ���������</strong>����Ʒ���ͷǳ��ḻ��
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ƻ�����������꽫ӵ��<strong>��Լ300��ƻ��Ա��</strong>���룬������ƻ��Ա������Ҳ���ﵽ800����ƻ�����۵��ܼ�John 
Browett���Ե���Ϊý�彲������µꡣ��ǰ��������ʾ����ҵ����λ���������IFC���Ϻ��Ͼ�·�꣬������λ����á�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ƻ���������й�ӵ��6�����۵꣬ȫ�����۵������ﵽ390�ҡ���������ƻ�����������ڿ���һ���µꡣ
	</p>
</p>',99,8,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:11:08')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 66,1,8,N'SurfaceӢ��/���ô�Ҳ�� ��΢��ϲ�ǲΰ�',N'/upload/201210/22/201210221104494757.jpg',N'΢��Windows RT��Surface�Ѿ���10��17�տ�ʼ����Ԥ����������10��26������Ĵ����ǡ����ô��й����������¹����й���ۡ�Ӣ���������׷����ڽ���Ԥ�����죬�����г��Ĳ���Touch Cover��32GB��Surface���ۼ�Ϊ499��Ԫ���������ˡ�',N'<div class="post">
	<div style="word-break:break-all;" class="content">
		<p>
			<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ڼ��ô��Ӣ����Surfaceͬ��ʮ�ֻ�</strong>����ǰ��<strong>������΢�������̵��϶��޷���Ԥ��������Touch 
Cover��32GB��Surface��</strong>��
		</p>
		<p>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Touch Cover��32GB��Surface�ڼ��ô��Ԥ�ۼ�Ϊ519��Ԫ��Ӣ��Ϊ399Ӣ����
		</p>
		<p>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;΢��ǰ��δ����͸¶�Ѿ��ж���̨Surface��Ԥ�������Ǵӵ�ǰ������������32GB��Surface���ܻ�ӭ�������ǲ���Touch 
Cover�ġ���һ���һ������΢��ϲ�ǲΰ롣
		</p>
		<p>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�Կ�ʼ�ƹ�Surface������Touch Coverһֱ��΢������������֮�أ�Touch 
Cover��΢��רΪSurface�з������ô���������̣�ͬʱ��߱��������ã���΢��Ĵ��²�Ʒ��<strong>΢��һֱϣ���������ܹ�ϲ���������ǣ���Ȼ��Touch 
Cover�Ǹ߰����ۼ��ô������ȴ��</strong>��������������Touch 
Cover��32GB��Surface�۸�Ⱥ�Cover�ı���100��Ԫ�����ҹ�������Touch Cover��32GB��Surface�۸���ͳ�800Ԫ��
		</p>
		<p align="center">
			<a href="http://news.mydrivers.com/img/20121020/a71fcdfae4674e9cbd81e46df112a47c.jpg" target="_blank"><img style="border-bottom:black 1px solid;border-left:black 1px solid;border-top:black 1px solid;border-right:black 1px solid;" alt="SurfaceӢ��/���ô�Ҳ�� ��΢��ϲ�ǲΰ�" src="http://news.mydrivers.com/img/20121020/s_a71fcdfae4674e9cbd81e46df112a47c.jpg" /></a> 
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
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 67,1,3,N'����һλ����Google�������ĵļ��߱���',N'/upload/201210/20/201210201314407898.jpg',N'����Ѷ�Ƽ�������ʷ������ά��Steven Levy���ǵ�һλ���ҽ���ȸ��������ĵļ��ߡ������Լ����������渵�������������������侳�ĸо���',N'<div style="word-break:break-all;" class="content">
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Ѷ�Ƽ�������ʷ������ά��Steven 
Levy���ǵ�һλ���ҽ���ȸ��������ĵļ��ߡ������Լ����������渵�������������������侳�ĸо���
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��άд������<strong>�ȸ����������ſ���һ����ʶ�ƣ�ע�����û�д���������׾Ͳ�������</strong>�������ʹ���Զ��������³��ĳȺ�ɫ��������������������Ա���������ͷ�������Ǵ��ö��������ߣ�Kava������̧������׼��ȫɨ�������������֤��Ȼ����صĴ��žʹ��ˡ�Ȼ�����Ǿ��߽�����������ݵ����硣��
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����������ά����������ĩβ��ָ�����������ȸ���Ȼ�������������ĵ۹��������������羺�������յ�����Ҫ��һ�����ƣ�����Ȼ��������������͸¶�������¼������������ļ�������󣬹ȸ���ܻ�������������һ��㼼���ɹ��������µ��з��ɹ�ֻ�����Լ����ա��ȸ������ʩ�����ڶ��Ȼ�����Urs 
Holzle���ƣ������Ǿ����ܱ��ֿ����ԣ���ǰ���ǲ���ʧȥ���ǵľ������ơ����ǽ�����˼�룬��������Ϊ����
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ڹ�ȥ�ļ�������ǶԹȸ������˽��˺ܶ࣬��������Ϊ���Ƚ�������ҵ�񡣵������ǲ�֪���Ķ������кܶࡣ�����Ե��ǣ��ȸ�һֱ�����������ĵ۹���ʹ�õ����������ؿ���ƿ����ֻ˵��Ҫ�����Լ��ķ���������Facebook�ȴ������繫˾һ������û��͸¶����ȫ�������Ŷ���̨��������
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Щ����Ĵ𰸶�ֵ��̽Ѱ����Ϊ�ȸ�������������ҵ�ľ��ްԡ������������Ľ���������������ҵ������Щ�������Ľ��跽����������¶���������̾ͻᱻ������ҵ���á�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���ڣ��ȸ����������д����ž޴����⡣�����＾���ȸ������������ƶ��������豸������OpenFlow��ԴЭ������������֮�䴫����Ϣ���������ּ������ڼ����豸�д�����Ϣ�����������ǲ� ͬ�ġ������ڽ����ļ���ʱ�����ɷù������󣬵�����ʱ�ܾ�̸��������ˡ�
	</p>
	<p>
		<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ȸ����е������豸�������Լ���Ƶģ����Ѿ��ǹ���������</strong>���ݹȸ�ǰ����ʦJR����˹��JR 
Rivers���ƣ��ȸ��2005����Ϳ�ʼ����Լ��������豸�ˡ�����2�£�һ̨��ΪPluto 
Switch�����������豸����Ƭ������һ����֪������̳�ϣ���Щ��Ƭ��Ȼ�Ƿ����˵ط�������Ƭй¶����Ϣ���������ƺ��ǹȸ���3��ǰ����������һ̨���۵Ľ����������ȸ���Ȼû�й���������̨�豸���κ���Ϣ��
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���˻��ɹȸ��Ѿ���������������ʹ����һ��ȫ�µĹ��������������������ƺ�������ܡ������ڷ�����֮��̴̳���������˵�����˽������ĳɱ�һֱ��̫�ߡ�����Ҫ���ù��˽��������ͭ�߽�����������Ҫ���һЩ�����ϵ����⡣
	</p>
	<p>
		<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Ŀǰ��������ȸ��Ƿ���������������ʹ����OpenFlow����</strong>�����Ʋ⣬���ǹȸ��ڲ�ҵ��ĺܴ�һ�������ݡ����ȸ�Ҳ���ܻ����ĳ����������������Nicira�ṩ�����⻯������Nicira����ոձ����⻯����VMware��12.6����Ԫ�ļ۸��չ���
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����OpenFlow��һ��Զ�̹�������Ӳ���ļ��������⻯���������������ֻ����������ܼ����临�ӵ����磬�����Ϳ��Ը����׵������������ڲ��������ݵ������ڹȸ�ĸ�����������֮�䴫����Ϣ�Ĺ������ϣ��ȸ�ʹ��������Nicira����������һ�������������
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���ڣ��ȸ��Ѿ�̹�Գ������Լ��ķ������������Լ���Ƶ���һ��ʵ������2009���ʱ����⹫����ĳЩ��ơ����ڹ�ȥ��3����������ֿ����˲��ٵ����豸�����ڵ����ж��٣�˭Ҳ˵��������ȸ跢���˶�����˵�����ٹȸ迪����һЩ���µķ�������ƿ����������Ƶ�п�����
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�����ϸ��£������Ѿ�֪��<strong>�ȸ�Ϊ���Ĳ��ַ������䱸��GPS�豸��ԭ����</strong>����Э��������ȫ�������ݿ�Spanner���ǵģ�GPS�豸��ԭ���ӡ����ܣ��ȸ蹤��ʦ�ܷ�϶���Jeff 
Dean������ɼ��ٿ���һ��ϵͳ����ʦ�����϶�����˵��<strong>��Щ�豸��Ը�����һЩ������ÿ̨�豸�ĳɱ�ֻ�м�ǧ��Ԫ</strong>��
	</p>
	<p>
		<strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������Ȼ��֪���ȸ赽�������Ŷ���̨������</strong>����ά��Ϊ������ݲ�����Ҫ�� 
��д������<strong>�����Ӵ�����������ڲ�������ʶ������һ���Ӵ���������֡����������������Ǹ����ֻ�����Ҳ�Ǻ�������ġ�</strong>���ڵ��豸�䱸�Ŷ���Ĵ������������Ƚ���������ǵĴ��������͹��ܲ�֪������ǰ����˶��ٱ��� 
�ȸ����ڵ�һ̨������Ҳ���൱����ǰ��20̨��������������Σ��ȸ��Ѿ���ʹ��Ⱥ�������ˡ��� 
����˵��Ҳ��һ���ĵ������Ǵ���һ���Ƕ���˵���ȸ����еķ�����������Ȼ����Ҫ�ġ�
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���ڹȸ�ķ������������Լ���Ƶģ��������������Ʒ����⽫�ƶ�ȫ��Ӳ���г������޴�ı仯����Ӣ�ض��ĵҰ��������أ�Diane 
Bryant���ƣ��ȸ�������Ӣ�ض��ĵ���������оƬ�ͻ���������˵���ȸ��Ѿ���Ϊȫ������Ӳ��������֮һ�������ڲ�ʳ�����ͻ��յȳ��̵�ҵ��
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Ȼ���ȸ����������Լ���Ƶ��豸ʱ��Ҫ���ⲿ����ǩ����ͬ����ͻ������������Ĺ�˾��Facebook�͸�ʢ��ֱ�ӵ��ȸ��ԭ�豸���̴���������Լ���Ӳ���� 
�����ڽ��������ʱ�򣬻����������˵���ȸ�û�б�Ҫ�����е��豸������ԭ�豸���������졣Ҳ��ȸ轫ͨ�����ô�ī������������޵�һ�Ҵ������������������豸�� 
��Ŀǰ��������������ô���Celestica����һ���ܺõ�ѡ��
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ô�ȸ������Ŷ��ٸ����������أ� <strong>��������ӵ��6���������ģ���ŷ����3���������ģ�����4�������������ڽ���֮��</strong>��������3���ڽ�����������λ�����ޣ�1��λ�������ޣ��� 
���ȸ�û��͸¶��ͨ����������˾�������ʹ��Ȩ�����������ж��ٸ���
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��һ����Ҫ�������ǣ��ȸ����ڶ��������ʩ����ά������Ҳ��һ�����ܡ�
	</p>
	<p align="center">
		<img style="border-bottom:black 1px solid;border-left:black 1px solid;border-top:black 1px solid;border-right:black 1px solid;" alt="����һλ����Google�������ĵļ��߱���" src="http://news.mydrivers.com/img/20121020/a92c01aa5bbd48da901f89f96fd4c065.jpg" /><br />
Google����Ա��˰͹�ķ��װһ������
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
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 68,1,4,N'΢���ĸ�������׬Ǯ��',N'/upload/201210/20/201210201319126903.jpg',N'10��20����Ϣ���ݹ���ý�屨������΢�������׿�ƽ�����Surfaceʱ��CEOʷ�ٷ�?����Ĭ��Steve Ballmer����ָ������Windows��΢��������ҵ�񣬷�Χ���Ǹ��˵��ԡ����������ֻ�����ϵͳ�Լ��Ƽ���ƽ̨Azure����',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;10��20����Ϣ���ݹ���ý�屨������΢�������׿�ƽ�����Surfaceʱ��CEOʷ�ٷ�?����Ĭ��Steve 
Ballmer����ָ������Windows��΢��������ҵ�񣬷�Χ���Ǹ��˵��ԡ����������ֻ�����ϵͳ�Լ��Ƽ���ƽ̨Azure����
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Ȼ����Ĭ���Բ��飬�����ϸ����ȵĲƱ�������Windowsȴ������΢����Ӫ����������Դҵ�񣬶�����������Officeҵ��������ŵ���Ӫ����ﵽWindows�����������������Է������͹��ߵ���Ӫ����Ҫ����Windows���š�
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_120605_534.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;΢��Ŀǰ�����ڴ�Windows7��Windows8ת�͵Ĺ����ڣ�����Windows������Ӫ������ֲ��ѵ���Ҫԭ��һ��Windows 
8�����ڱ����ȵ���������ʱ����������ǣ�΢��Windows���ŵ���Ӫ�����ʱ�����ַ�����
</p>',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:19:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 69,1,4,N'΢������Office365��ѧ���棺ʮ���������㰮��',N'/upload/201210/22/201210221058594848.jpg',N'10��20����Ϣ��΢����ʽ����ȫ�µ������Уѧ���ġ�Office 365 University���ƻ���Office 365��ѧ�潫��2013���һ������ʽ���ߣ���ͨ�����ϡ��������Լ�΢���̵�����ȫ��52���г��Ƴ���',N'<p>
	10��20����Ϣ��΢����ʽ����ȫ�µ������Уѧ���ġ�Office&nbsp;365 University���ƻ���Office 
365��ѧ�潫��2013���һ������ʽ���ߣ���ͨ�����ϡ��������Լ�΢���̵�����ȫ��52���г��Ƴ���
</p>
<p>
	�ӽ����𣬷���������ѧ�����Թ���Office University 2010����Office University for Mac 
2011�������Ի�����ѵ�Office 365 University���ġ�
</p>
<p>
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_112110_565.jpg" /> 
</p>
<p>
	��Уѧ���ᰮ��Office 365 University��10���������£�
</p>
<p>
	<strong>��õ�Office</strong>������ȫ�µ�Word��PowerPoint��Excel��OneNote��Outlook��Publisher��Access��
</p>
<p>
	<strong>��õļ۸�</strong>��ÿ��1.67��Ԫ��Ԥ�����궩�ĵ����ۼ���79.99��Ԫ��
</p>
<p>
	<strong>����</strong>������������ѧ���꣬������Լһ�£�����ܼ�8���Office 365 University��
</p>
<p>
	<strong>���ֱʼ�</strong>��ͨ�����ء��ʻ��߼�����OneNote�ϼ�¼�ʼǣ����ɱ��������к�ͨ�����豸���ʡ�
</p>
<p>
	<strong>���浽SkyDrive</strong>��Office 365 
UniversityĬ�Ͻ��ĵ����浽SkyDrive���������ݻ�ʼ�����豸��ͬ����
</p>
<p>
	<strong>����Ĵ洢</strong>��������20GB��SkyDrive�洢���ܼ�Ϊ27GB��
</p>
<p>
	<strong>Skype</strong>��ÿ��60���ӵ�Skype����ͨ����
</p>
<p>
	<strong>������</strong>�����δ���������͸Ľ���
</p>
<p>
	<strong>���豸�İ�װ</strong>��һ���û����Խ�Office 365 University���԰�װ����̨���ԣ�PC�� Mac���С�
</p>
<p>
	<strong>�칫����</strong>��ʹ��������ʹ���뿪�������ɿ���ͨ��������ʵ��Office��ȫ�����ܡ�
</p>
<p>
	��֤�����е�ȫ����/��ȫ���Ƹ�Уѧ���ͽ�ְ�����ɹ���Office 365 University����У������ְ���ڼ���Office 365 
University��Ʒ�Ĺ�������Ҫ�ṩ�����֤������΢�����۵�Ҫ����ǰ��֤��ݣ���������Ҫ���������������ۺ���֤��ݡ�
</p>',99,10,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:22:20')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 71,1,4,N'Win8������Windows����ϵͳ',N'/upload/201210/20/201210201325180344.jpg',N'Salesforce.com����ϯִ�йٹ�Marc Benioffһֱ����ֱ�Բ�������Ƶģ��������־�Win8����һ���󵨵�Ԥ�⡣',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Salesforce.com����ϯִ�йٹ�Marc Benioffһֱ����ֱ�Բ�������Ƶģ��������־�Win8����һ���󵨵�Ԥ�⡣
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����ýComputerworld.com������Marc Benioff��ŦԼ��һ�ι�˾����ϣ�������Windows8�����Ϊ΢��Windows����ϵͳ�ġ��ս��ߡ�������Խ��Խ�����ҵ�������Ǩ�Ƶ������ƵĽ��������Windows�����ձ�á��޹ؽ�Ҫ����
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_094338_875.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Marc Benioff�����ںܶ��˾�����PC�н�ų�������Ա�����ű�Яʽ���˵�����������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;΢���Marc Benioff�����۲�δ�����κλ�Ӧ��������Ҫע���һ�㣬��ʵ΢���Windows 8�Լ�Windows RTϵͳ������Windows Phone 
8�����Ա�Я�Ժ�������Ϊ��������з��ġ�
</p>',99,35,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:26:01')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 74,1,9,N'799Ԫ360�ع�����������СǱͧ��������������',N'/upload/201210/22/201210221038088694.jpg',N'10��19����Ϣ��360�ͺ�����ͬ������360�ع����³�Ա��������СǱͧ���������ܶ���10��23�գ���ʽ���ۣ��ֻ�1��̨���ۼ�799Ԫ��',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;10��19����Ϣ��360�ͺ�����ͬ������360�ع����³�Ա��������СǱͧ���������ܶ���10��23�գ���ʽ���ۣ��ֻ�1��̨���ۼ�799Ԫ��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����СǱͧ��IP67��������ƣ���ˮ�����������Σ�������������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;������ǰ������360�����Ƴ������������콢W910��360�ع��������ۼ���1999Ԫ��
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_171105_626.jpg" /> 
</p>',99,29,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:42:40')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 75,1,7,N'С��������Ť������Win8���α�Twist������Ƶ',N'/upload/201210/20/201210201343435821.jpg',N'����Win8��ת�豸ThinkPad Twist����������˱Ƚ���̵�ӡ��������������ǿ���������ת��',N'<div class="current_nav">
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Win8��ת�豸ThinkPad 
Twist����������˱Ƚ���̵�ӡ��������������ǿ���������ת��
</div>
<div id="paragraph" class="post_content">
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�������뷢����ThinkPad Twist����Ƶ��棬�����չʾ��ThinkPad 
Twist����������ת���ŵ㣬С������ĺ���������������������Ƶ�ɣ���ʵ����һ���˧��Ҳ�����Ĳ�Ʒ������ĵ�Ҳ���������д�Ƭ������
	</p>
	<p style="text-align:center;">
		<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_144551_958.jpg" />
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���볬����ThinkPad 
Twist��Ļ��СΪ12.5Ӣ�磬������������ת��Ҳ�����۵���ƽ�塣����Windows8 Proϵͳ������Ӣ�ض����i7��������֧��3G���磬�û���ѡ��500GBӲ�̻�128GB��̬Ӳ�̣��ۼ�Ϊ849��Ԫ��
	</p>
	<p style="text-align:center;">
		<embed style="visibility:visible;" height="500" type="application/x-shockwave-flash" align="middle" width="600" src="http://player.youku.com/player.php/sid/XNDYzOTI0Nzg4/v.swf" flashvars="winType=index" quality="high" allowfullscreen="true" />
	</p>
	<p>
		&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����һ���Ƚϳ���ThinkPad Twistչʾ��Ƶ������Ȥ���û�����һ��һ�¡�
	</p>
	<p style="text-align:center;">
		<embed style="visibility:visible;" height="500" type="application/x-shockwave-flash" align="middle" width="600" src="http://player.youku.com/player.php/sid/XNDYzOTM1MTk2/v.swf" flashvars="winType=index" quality="high" allowfullscreen="true" />
	</p>
</div>',99,61,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:45:00')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 96,3,28,N'����',N'/upload/201210/20/201210202226228040.jpg',N'���ȱʧ���˿ڡ����ᶼ��֪��Ϊ˭�������Ҿ�ǿ�Ĳ�Ը������������ȴҲֻ���˺����ۡ�Ϊ�˵��㣬�Ҵ���˵��ҵ��ˡ�һ�ص�������д���������ı��ˡ��Ҹж���ж��أ�ȴ�ж������㡣',N'<p>
	���ȱʧ���˿ڡ����ᶼ��֪��Ϊ˭������
</p>
<p>
	�Ҿ�ǿ�Ĳ�Ը������������ȴҲֻ���˺����ۡ�
</p>
<p>
	Ϊ�˵��㣬�Ҵ���˵��ҵ��ˡ�
</p>
<p>
	һ�ص�������д���������ı��ˡ�
</p>
<p>
	�Ҹж���ж��أ�ȴ�ж������㡣
</p>
<p>
	<br />
</p>',99,16,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 21:02:43')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 97,3,28,N'�ҵ�����',N'/upload/201210/20/201210202224582044.jpg',N'������һ�����ȥ���С�ȥ��û��ȥ���ĵط���û�����û�б������������Ը���Ҫ�ֻ�����һ���ط�ͣһ����',N'<span style="white-space:nowrap;">������һ�����ȥ���С�ȥ��û��ȥ���ĵط���û�����û�б������������Ը���Ҫ�ֻ�����һ���ط�ͣһ����</span>',99,20,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 21:04:49')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 70,1,9,N'��Ϊ�����»�Ascend Mate�ع⣺6.1Ӣ��+�ĺ�',N'/upload/201210/22/201210221055082458.jpg',N'����Galaxy Note2�����ֻ���5.5Ӣ�糬����Ļ�Ѿ����˺��Ѽ�Ԧ�ˣ����ֻ���ĻԽ��Խ����������޷��赲�ˡ�����Ϊ�����Ƴ�ӵ��6.1Ӣ�������Ascend Mate�����ء��ֻ������ٴ��ع⣬����������ų������ھ������������˽�һ�°ɡ�',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Galaxy Note2�����ֻ���5.5Ӣ�糬����Ļ�Ѿ����˺��Ѽ�Ԧ�ˣ����ֻ���ĻԽ��Խ����������޷��赲�ˡ�����Ϊ�����Ƴ�ӵ��6.1Ӣ�������Ascend 
Mate�����ء��ֻ������ٴ��ع⣬����������ų������ھ������������˽�һ�°ɡ�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;��ΪAscend Mate��ӵ��6.1Ӣ���1080pȫ���崥����������1.8GHz��˼K3V3�ĺ˴�����������Android 4.1����ϵͳ�����仪Ϊ������EMUI 
1.5���棻2G RAM��4000mAh��أ�������9.9mm��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;����ǿ�������Ƿ��ڴ��أ�
</p>',99,30,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 13:24:06')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 72,1,8,N'iPad Mini 23�յǳ�',N'/upload/201210/22/201210221047038495.jpg',N'˵������ֵ�ù�ע�����ž�Ҫ��ƻ�������뺯�ķ����ˣ���Ȼ����ƻ�������ὫҪ�����ľ����Ʒ�����޴ӵ�֪������ƻ���кܴ�Ŀ����Խ�����23�շ�����С�ߴ�ƽ��iPad Mini�������һֱ���кܴ�������΢��SurfaceҲ�Ѿ����������ۣ�ͬʱ���ܻ��кܶ���������˼�����ţ����š�',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;˵������ֵ�ù�ע�����ž�Ҫ��ƻ�������뺯�ķ����ˣ���Ȼ����ƻ�������ὫҪ�����ľ����Ʒ�����޴ӵ�֪������ƻ���кܴ�Ŀ����Խ�����23�շ�����С�ߴ�ƽ��iPad 
Mini�������һֱ���кܴ�������΢��SurfaceҲ�Ѿ����������ۣ�ͬʱ���ܻ��кܶ���������˼�����ţ�����һ����������ʧ���ģ������������ֻ��й������ƽ�����Ż��ܣ�
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_100140_193.jpg" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ǰ������Ϣ�ƣ������������ȿ���΢�������ƽ��Surface������΢���Ѿ��󷽵ĳ���������ţ��������Ҳ��ʾ����10��17����ʽ��������Ԥ����10��26��0����ȫ��ͬ����ʽ���ۣ���
</p>
<p style="text-align:center;">
	<img border="0" alt="" src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_093633_78.jpg" width="500" height="375" /> 
</p>
<p>
	<strong>΢��Surface RT</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��֮ǰ�ع����Ϣ������Surface RT�潫�������Ƶ1.4GHz��NVIDIA Tegra 
3�ĺ˴���������֮ǰ΢�����Ĳ���Ϊ���û����Ϊ9.3mm��������Լ676�ˣ��䱸����10.6Ӣ��16:9���������ֱ���Ϊ1920��1080���أ�������USB 
2.0��microSD��Micro HD Video�ӿں�31.5Wh��ء�
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121020_093633_125.jpg" /> 
</p>
<p>
	<strong>΢��Surface RT</strong> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Ŀǰ����Ԥ����ֻ��Surface RT�棬����32GB�汾���ۼ�Ϊ3688Ԫ��16GB Wi-Fi��iPad 
3Ҳ������۸񣩣��������ɫ����������Touch Cover��Surface 
32GB�ۼ�Ϊ4488Ԫ��64GB�ļ۸���Ϊ5288Ԫ�����΢����ʾ��Ϊ���ø�����й��û��������˽�͸���Surface���������������������̵�����������ר�������в�չʾSurface��ͬʱ�䱸רҵ��������Ա����Ҫע����ǣ�΢���ṩ��Surface�Ķ������������ӵ��5�ֲ�ͬ��ɫ����ɫ����ɫ�����ɫ������ɫ�Լ���ɫ���Ĵ���ʽ���̱�����Touch 
Cover�����ۼ�Ϊ908.88Ԫ������ɫʵ����̱����׵ļ۸���988.88Ԫ��
</p>',99,22,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:37:19')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 73,1,5,N'����լ�������磺��ֽ��һ�����г�',N'/upload/201210/22/201210221043246420.jpg',N'�����ֽ�������г���������ɫ�еĹ���ʦ�����г��������������ӷ��ᣨIzhar Gafni���ͺ�����һ�����������г����˳�̥���������������֮����ȫ�ɻ������õ�Ӳֽ���Ƴɣ����ҳɱ����� 12 ��Ԫ���������ֻ������۵����г���������Ⱥ�ֶ���һ�ֽ��ܼ��ŵĳ��з�ʽ��ͬʱ��',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�����ֽ�������г���������ɫ�еĹ���ʦ�����г����������������ӷ��ᣨIzhar 
Gafni���ͺ�����һ�����������г����˳�̥���������������֮����ȫ�ɻ������õ�Ӳֽ���Ƴɣ����ҳɱ����� 12 
��Ԫ���������ֻ������۵����г���������Ⱥ�ֶ���һ�ֽ��ܼ��ŵĳ��з�ʽ��ͬʱ�������г�������ϵ͵ķ�չ�й��ҽ������г���
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_210309_409.png" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����������Ĵ�������������˵���������һ��ֽ�ʵĶ�ľ�ۣ���Ҳ�ɴ�����������ֽ�����г�����ͷ�����ܡ�ר�ҡ��Ǽ���Ȱ���������Լ��ġ��������롱���������������ӵĹ����»���ѡ���˽��뷨����ʵ����Ϊ������ɱ������������ɿ����ʺ��ճ�ʹ�õ�ֽ�����г�����������������������ʵ�����ĸ���ģ�ͣ����������ȡ���˳ɹ���
</p>
<p>
	ֽ�����г����������̲����򵥡����ȣ�������Ҫ��Ӳֽ�屻�ü�Ϊ�ض�����״��֮��ֽ���۵���ճ�ϡ���ѹ���Ƴɾ߱��ض�ǿ�ȵ����г�������֮��������ʹ���Լ����г��Ķ����ط��ٴδ�����Щ������ʹ��ӵ�и��ߵ�ǿ�ȡ������������ÿ������ˢ��������з�ˮ�����ٺ���װ��ͨ���г�һ����ÿ��������װ������
</p>
<p>
	ͨ�����������Ƶ�����ǿ����˽�һ��ֽ�����г������������ġ�
</p>
<p style="text-align:center;">
	<embed style="visibility:visible;" height="500" type="application/x-shockwave-flash" align="middle" width="600" src="http://player.youku.com/player.php/sid/XNDYzNzk5ODY0/v.swf" flashvars="winType=index" quality="high" allowfullscreen="true" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�������з���ֽ�����г�����9�����أ���ͬ���͵����г�ͨ������14�����Ȼ��ֽ�ʵģ��������г�������ˮ���������ܳ��ظߴ�220����������������г�ʹ��ʮ�ַ��㣬�����κε��ԣ��κλ������г����˶���˲�����֡����ɶ��ֳ�̥�Ͷ�������ͬ���ݴ�����ĳ�̥������Ҳ��֤�˵����ĳɱ��Ϳɿ���������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����������ھ����󾫵��Ż�ֽ�����г��Ĺ������̣������Ƴ�Ʒֽ�����г����г��ۼ�Ӧ��Ϊ20��Ԫ��20��Ԫ���ۼ��ڷ�չ�й��ҷǳ��о�����������������һ����������������׵Ļ������г������ڷ�����������г������߶��ԣ�����20��Ԫһ�������г�����ҾͲ����ٵ������г������������ˡ�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;��������ʾ��δ�������Ƴ����˰�Ͷ�ͯ�����ֹ���ֽ�����г��������˰��ֽ�����г��ϻ�����װһ���綯��ʹ�仪����������Ϊֽ�ʵ綯���г���
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_210309_497.png" /> 
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;���ֽ�����г����У����ȥ��һ����������
</p>',99,27,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:40:18')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 76,1,3,N'�����ڿ�Comex�뿪ƻ��',N'/upload/201210/20/201210201346386615.jpg',N'�������һ���� iOS 5 �Ժ�ŽӴ�ƻ���豸���û�����ʶ��Խ������Ӧ���� pod 2g��ǰ�̶���� p0sixninja��Planetbeing �ȶ� iOS 5.0.1��5.1.1 ����Խ������׿Խ���׵ĺڿ͡�����������ڼ�������Խ����ʷ��С����������ǰ��һҳ���ͻῴ��һ��������һ��֮�����ж���������',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�������һ���� iOS 5 �Ժ�ŽӴ�ƻ���豸���û�����ʶ��Խ������Ӧ���� pod 2g��ǰ�̶���� p0sixninja��Planetbeing �ȶ� 
iOS 5.0.1��5.1.1 ����Խ������׿Խ���׵ĺڿ͡�����������ڼ�������Խ����ʷ��С����������ǰ��һҳ���ͻῴ��һ��������һ��֮�����ж������� iOS 
�û������֣�Nicholas Allegra��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Nicholas Allegra ̫����ʽ�����Ǿͼ�ס���Ǹ���һ���֮ǰ���绽��� ID����Comex �ɡ��ڷ��� JailbreakMe 3.0��Ϊ���� 
iOS 4.3.3 ���û�����ʷ�����ݵ�����Խ��֮��Comex ����ƻ��ʵϰ�������� Twitter 
�ϱ�ʾ�����ٿ���Խ������ԭ��������Ȼ��֪����ƻ������������Ƥ�����췴��
</p>
<p style="text-align:center;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_110522_703.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;����Խ������������ Comex ����֮ʱ�����������ڿ�ͨ�� Twitter 
������20������ע��������һ����ʵϰ����������Ѿ��������뿪��ƻ����Ҳ����Ԥ���������Ϣ������㷺��ע��Comex 
������һ����������ͣ�Ҫ��Ϊʲô���뿪ƻ��������Ϊ�����˻ظ���˾�ĵ����ʼ���
</p>
<p style="text-align:center;">
	<img src="http://images.weiphone.com/attachments/Day_121019/7_2537775_625f8a4b3ad3557.jpg" />
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��Ȼ Comex �� Twitter �������ʾ���ǡ��뿪��������ʵ�������Ƕ�֪�����Ǳ�ƻ�����ˡ����˽⣬������˹���ڵ�֪����Ϣ���һʱ���� Comex 
ȡ���˵绰��ϵ���õ��˶Է����뿪ƻ����֤ʵ��Comex 
�ڵ绰���ʾ����˾��������һ������ʼ����������Ѿ��õ����Լ�������ƻ��ʵϰ�Ļ��ᣬ������������˻ظ�����ʼ���
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ƻ����˾�ڲ������������Ĺ�ʧ��Ȼ�������ģ�Comex 
�ܿ���յ��˾��̸����˵�֪ͨ���Դ�����ʾ���뿪ƻ��������˵�ܲ������������Ҳ֪��һ���Ѿ�������أ���������ȥ�ɡ���������˹����͸¶��Comex 
�뿪ƻ��֮��᷵�ز����ʴ�ѧ������ѧ��Ŀǰ��û�����½���Խ����ļƻ���
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Ҳ�����Դ�ʧ��������������˹�������Ϊ���� Comex ��ƻ��֮��ġ�Լ�������������ո��뿪ƻ������˻����ܹ�����Ͷ�� iOS 
Խ����һ�����˻����ڣ�Ҳ�������ֿ��Կ��� Comex ���񵱳������ǧ iPad 2 �û�ʱ�ķ���ˡ���������ȫ�о�Ա�����������ڿ���֮���������������ꡱ�� 
Comex�����ػ�����֮�������һ����Խ������û�������ϲ�أ�
</p>',99,152,0,0,1,0,0,0,1,1,N'admin',N'2012/10/20 13:47:27')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 77,1,5,N'��ʷ��ʱ�̣�ARM�״γɹ�ģ������x86',N'/upload/201210/22/201210221028328511.jpg',N'ARM���ƶ��������ˮ�𣬵���Ҫ��������ͷ�������ռ��һϯ֮�أ������鷳�����ڲ�������Ϊ�ռ���x86����ϵͳ�ͳ��򣬶���·ֻ��������Ҫô�����ƽ��Լ�����̬ϵͳ��Ҫôģ������x86������������ȫ����������',N'<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ARM���ƶ��������ˮ�𣬵���Ҫ��������ͷ�������ռ��һϯ֮�أ������鷳�����ڲ�������Ϊ�ռ���x86����ϵͳ�ͳ��򣬶���·ֻ��������Ҫô�����ƽ��Լ�����̬ϵͳ��Ҫôģ������x86������������ȫ����������
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�������·ݣ�Ӣ������Boston Server�Ƴ��˻���Calxeda 
ARM�ܹ��������ķ�������Viridis����֮��Ҳһֱ����¶�乤����չ�����ո��Ǻ������ɵعٷ�������һ����ʷ��ʱ�̵ĵ���������ARMƽ̨��һ�γɹ�������x86���룡
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ȥһ��ʱ���Bostonһֱ�ں�����Eltech�Ĺ���ʦ�ŶӾʹ˽��к��������ò�����Զ���˹�Ĺ�˾����ARM�������Ͽ����ܹ�����x86���������������Ѿ��ɹ���������һ�ֿ���Ϊģ����ʹ�õĶ�����ת����(binary 
translator)���ܹ����ӳ���Լ45%��ԭ��ARM���ܡ�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;˫����Viridisƽ̨�Ͻ�������������������Ժ󣬽���һģ��Ч����ߵ���65%�����һ���ȡ�ڽ��ڼ�����ߵ�80%���������ߡ�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��ȻBoston�ܾ���¶����ϸ�ڣ�����AnandTech��վ����ָ����Eltech��ģ������ʵʱ���롢����x86����ģ��������ģ��������Щƫ�󣬱Ͼ���Ҫ��������ȫ��ͬ��ָ��ܹ�֮��ǣ�ߴ��ţ���ͬ��VMware������x86-x86֮��ת����
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ݳƣ�Eltechʹ����1MB��ת�������棬����ζ�Ŵ���ת�������ظ����ã������Ż������������ظ������ʾͻ�Ѹ�ٽ��ͣ�����ֻ��������Ĵ���������еñȽϿ죬������Ƶ�45-65%��ת��Ч�ʡ�
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;��������֪���������������Ӧ�õĴ����ָ��ܴ�����Eltech��ת�����ܷ��Ч����������Ҳ�д��۲졣�����ܼ������������Բ���ô���ӣ�����������Դ���������Ҫ�����ر�ߣ�����˵�����Ƿ���x86������ARM��ȥģ��x86(�ο�����)��
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;�ܵ���˵��������ת�������ض������»������õģ�����ĳЩ�ض���WebӦ���������ܴ����Ǳ�Դ�ģ�û��ARM�汾��������֮��ͺ���˵�ˡ�ARM���������봳��һƬ��أ������׵Ļ����Ǵ���һ�������ARM�ܹ���ȫ�Ż������Linux�����
</p>',99,202,0,0,1,0,0,0,0,1,N'admin',N'2012/10/20 13:49:36')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 78,3,25,N'����I9300 GALAXY SIII',N'/upload/201210/20/201210202242561250.jpg',N'�����������ϳ���ǿ��������ֻ���������������ɱһ�е��ĺ����ֻ��������������ֱ�Ӻ����Ǵ򽻵��Ļ����ǿ黪��������Ļ������GALAXY S III���ⷽ�����ʸ���������κ������ֻ�ǿӲ�Ի�����������4.8Ӣ���1280*720�ֱ���Super AMOLED��Ļ��˵ʵ��û�в���Plus��Ļ�ҡ�',N'<span style="color:#666666;line-height:20px;font-family:&quot;Microsoft YaHei&quot;;white-space:normal;background-color:#FFFFFF;">�����������ϳ���ǿ��������ֻ���������������ɱһ�е��ĺ����ֻ��������������ֱ�Ӻ����Ǵ򽻵��Ļ����ǿ黪��������Ļ������GALAXY S III���ⷽ�����ʸ���������κ������ֻ�ǿӲ�Ի�����������4.8Ӣ���1280*720�ֱ���Super AMOLED��Ļ��˵ʵ��û�в���Plus��Ļ������Щ�ź�������720P��Super AMOLED�ƺ��ܹ�����ʾЧ��������֮��ﵽ���õ�ƽ��㡣</span>',99,23,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 19:54:30')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 79,3,29,N'����������',N'/upload/201210/20/201210202242019748.jpg',N'һ���������߹������� ���ֵ� ���� �����޹��� ֻ�п��֣�',N'һ���������߹������� ���ֵ� ���� �����޹��� ֻ�п��֣�',99,25,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:12:40')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 80,3,29,N'Ψ����ͼƬ��һ��',N'/upload/201210/20/201210202241181983.jpg',N'����������û�� �������������ĳ嶯�أ�',N'����������û�� �������������ĳ嶯�أ�',99,12,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:18:01')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 81,3,26,N'Ψ��ͼƬ�ڶ���',N'/upload/201210/20/201210202239307256.jpg',N'���벻Ҫ����������ͻȻ�����ҵ��������ߵ���ô��������һ���Թ�����ǰ��չ�ĳ�����ת����������������ѳ��б�ɵ����Թ�����۸��������һֻ���� ���߾����������� ����û������ ����ˮ����ΰͶ�ѩ���ᴺ����ϰ�������û��׼������������������һ�������������һ�ų���',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	���벻Ҫ����������ͻȻ�����ҵ��������ߵ���ô����
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	����һ���Թ�����ǰ��չ�ĳ���<br />
��ת���������������<br />
�ѳ��б�ɵ����Թ�����۸���
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	�����һֻ���� ���߾���<br />
�������� ����û������
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	����ˮ����ΰͶ�ѩ���ᴺ����ϰ�������
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	û��׼��������������<br />
����һ�������������һ�ų�Ʊ<br />
����ͬ�ĳ���ͬһ���ط���˵��������ů�Ĵ�
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	�Դ˵ز� ʱ�����ǰ����Ҫ����ǰȥ����Ǩ������
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	��֪����������ĺ��� û���Ҷ���������ֽ���<br />
ת��һ��Ȧ���ջ��ǻص���ԭ��<br />
�Ҳ������ ��Ҳ��Ҫ��˵<br />
����Ҳ������õİ취 ������״
</p>
<div style="text-align:left;">
	<span style="color:#333333;font-size:x-small;"><span style="line-height:21px;"><br />
</span></span> 
</div>',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:19:45',N'2013/12/10 4:07:51')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 82,3,26,N'�����˵�����',N'/upload/201210/20/201210202238382318.jpg',N'������� �㲻��~ ���˸���ģ�',N'������� �㲻��~ ���˸���ģ�',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:23:20',N'2013/12/10 4:07:38')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 83,3,26,N'����',N'/upload/201210/20/201210202236076088.jpg',N'�� �����Ƕ���һҹ���� ���������� ����ң���� ������˼ ���������� ���⻨����������� ��������� �������������Ʈ�� �δ����� ������ӭЦһ������ ����Ī���� ���⺮˪��������ȴ �������� ������������',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�� �����Ƕ���
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	һҹ���� ��������
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�� ����ң����&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	������˼ ��������
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�� ���⻨���
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�������� �������
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�� ���������
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	����Ʈ�� �δ����
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�� ������ӭЦ
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	һ������ ����Ī��
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�� ���⺮˪��
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	������ȴ ��������&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	������������
</p>',99,12,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:26:39')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 84,3,26,N'����������һ��ȥ����',N'/upload/201210/20/201210202237224125.jpg',N'��ȥԭ�еĴ������·��ɻƵ�ֽ�ű����޷����������ıʵ�ȥ��Ⱦ���̻�ֻʣ��ӡ�µĸ߸ߵ͵͵ĽŲ���һ��ǳ���ᳪ��ʫ������ȴһ����ǰ˼�����Ѳ����޷����ܵģ�Ҳ�����������Ҵӽ�����ΨԸ��������ȱ�����´����ʫ',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	��ȥԭ�еĴ���
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	���·��ɻƵ�ֽ��
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	�����޷����������ıʵ�
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	ȥ��Ⱦ���̻�
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	ֻʣ��ӡ�µĸ߸ߵ͵͵ĽŲ�
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	��һ��ǳ���ᳪ��ʫ��
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	����ȴһ����ǰ˼�����Ѳ���
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	�޷����ܵģ�Ҳ������������
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	�ӽ�����ΨԸ
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	��������ȱ
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	�����´����ʫ
</p>',99,6,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:30:28',N'2013/12/10 4:07:25')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 85,3,26,N'Сľ�ݣ�ʱ�յ�����',N'/upload/201210/20/201210202233114575.jpg',N'�з�����޷����� ����ҭ�ź����� �зݸо��ô����� Ʈ���������ĺ� �Ҳ�����ŵص��з�˼����ʺ���� ����ã��˲�� ͻȻ���� �з����¸������� ǧ���� ȴ�Ӷ������������ﰮ�� �������������� һ˫Ŀ��ͬһյ��һ������һ����ͬһ�仨ɢ��ͬ���ķ��� ϸ��������Ѻ�ҹ�࡭',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:����_GB2312;">�з�����޷�����</span>&nbsp;<span style="font-family:����_GB2312;">����ҭ�ź�����</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:����_GB2312;">�зݸо��ô����� Ʈ���������ĺ� �Ҳ�����ŵص�<br />
�з�˼����ʺ���� ����ã��˲�� ͻȻ����</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:����_GB2312;">�з����¸������� ǧ���� ȴ�Ӷ�����<br />
�������ﰮ�� ��������������</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:����_GB2312;">һ˫Ŀ��ͬһյ��һ������һ����ͬһ�仨ɢ��ͬ���ķ���</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:����_GB2312;">ϸ��������Ѻ�ҹ����</span>&nbsp;<span style="font-family:����_GB2312;">ҹ����&nbsp;&nbsp;��ȴ���� ���أ�</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	<span style="font-family:����_GB2312;">�����Ǹ�ɵ�� �������� ���ܲ������ĵĻ�����������Ͻ��Լ�����������</span>&nbsp;<span style="font-family:����_GB2312;">���ڽֽ�</span>&nbsp;<span style="font-family:����_GB2312;">��������</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	<span style="font-family:����_GB2312;">�����������ݲ������Ϸ</span> 
</p>',99,7,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:33:04',N'2013/12/10 4:07:17')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 86,3,27,N'��������',N'/upload/201210/20/201210202234148251.jpg',N'��������Ѱ�ҿ��ֵ�·�ϡ�������׷Ѱ�����·�Ͽ񱼡������Ҳ��ˣ���ô�ͺ���һ��ɡ�������������ů���ұ����������ر����㡣���������Ұ�����Ҳ��ر��������İ�������������ң���Ҳ�������������㡣ͻȻ������������˵ļ���������������鶼���͸�������졭',N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">��������Ѱ�ҿ��ֵ�·�ϡ�������׷Ѱ�����·�Ͽ񱼡�</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">�����Ҳ��ˣ���ô�ͺ���һ��ɡ�</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">������������ů���ұ����������ر����㡣</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">���������Ұ�����Ҳ��ر��������İ���</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">����������ң���Ҳ�������������㡣</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">ͻȻ������������˵ļ���������������鶼���͸����</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">�����ر�ϲ����һ�仰����������֮ǰ����������ĵ����⡣</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">��Ϊ��ɫ�Ը�����磬�Ѿ�����˵ı��������</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">������Ҫ��ů������������������������ջ�һ����ů��</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">����һ�������Ѿ����ߣ�</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">����һ�츺�������Ѿ����Ҵ�ܣ�</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">����һ��ǰ����·�Ѿ�ģ�����磬���������֡�</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">ϣ����������������ң�Ҫ��ů������</span>',99,11,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:35:07',N'2013/12/10 4:07:09')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 87,3,27,N'����ͼƬ',N'/upload/201210/20/201210202235129902.jpg',N'����һ�ա�ÿ��ÿ�գ�ʱ���ߵ÷ɿ죬���±�ʲô�ϳ���ȥһ�㣬��æ����Į���������Ѳ������ǰ���޲��ð�ÿһ���Ӷ�Ҫ�����������Ƭ��һ��Ҫ������ÿһ����Ƭ�źá����̸ֽ������ģ��������ǣ�ƽ����Ҳ��һ�ֺ�ȡ�����ʱ���ܵ��Ĺ�����ʱ�⣬�����Ŷ��ã���Ŭ����ʱ���ա�',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	����һ�ա�
</p>
<div style="margin:0px;padding:0px;text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<div style="margin:0px;padding:0px;">
		ÿ��ÿ�գ�ʱ���ߵ÷ɿ죬���±�ʲô�ϳ���ȥһ�㣬��æ����Į���������Ѳ������ǰ���޲��ð�ÿһ���Ӷ�Ҫ�����������Ƭ��һ��Ҫ������ÿһ����Ƭ�źá����̸ֽ������ģ��������ǣ�ƽ����Ҳ��һ�ֺ�ȡ�����ʱ���ܵ��Ĺ�����ʱ�⣬�����Ŷ��ã���Ŭ����ʱ���ջṼ�����Լ���
	</div>
	<div style="margin:0px;padding:0px;">
		&nbsp;
	</div>
</div>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:38:55',N'2013/12/10 4:07:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 88,3,26,N'�е�ʱ�򰮵�̫�ã����Ļ���',N'/upload/201210/20/201210202229412330.jpg',N'����������������е�ˮ���������ս�����̯��������������ʧ����ò��������˱�ɲ���������ò���֪����˱�ɲ���˼���е�ʱ�򰮵�̫�ã����Ļ����е�ʱ��޵�̫�ã�����Ҳ���飻��ʱ��ȴ�̫�ã����Ļ�ɺԣ�����̫�ã��Ļ���ô����ʵ��Ȼ�������ˣ��ͳ���һ��ϰ�ߡ�',N'<p>
	<strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">����������������е�ˮ���������ս�����̯��������������ʧ����ò��������˱�ɲ���������ò���֪����˱�ɲ���˼��</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;"><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">�е�ʱ�򰮵�̫�ã����Ļ����е�ʱ��޵�̫�ã�����Ҳ���飻��ʱ��ȴ�̫�ã����Ļ�ɺԣ�����̫�ã��Ļ���ô����ʵ��Ȼ�������ˣ��ͳ���һ��ϰ�ߣ�û���˼���İ��飬������������ô���޵�̫�ã��Ļ���ô��</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">�����������ˢ������������ʱ�������е���Ƭ��������վ�ڽ��������������磬����������������Ⱥ��ÿ���˶����ĴҴҵĴ��ҵ�����߹������н�Զ�� �ƺ����е��˶������Ѿ��뿪�ң����߽�Ҫ�뿪���Լ������뿪��</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">������ֻ�������������籯���ȡ����б�ȴ�����ģ�ȴ���������ױ䡣��ɽ��������룬ҹ�������ղ�Թ�����籡�ҽ��¶���������֦����Ը�����鲻�����ϣ����㸡��ǡ�ã�����δ�ؾ��Ǿ�������ֻҪ����ţ�����ʱ�˴˵�΢Ц����ס���õ�ʱ�⣬�����ź������¡�</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">�������̲�סҪ��������ʱ�������۾���գ�ۣ���ῴ��������������ģ����ȫ���̡��ģ�ȴ���������µ���һ�̱�������������ˣ�����һ��ϰ�ߣ�ʹ���ˣ�����һ���̺ۣ��޾��ˣ�����һ�ָ�����</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">ʱ����ȥ����Ҳ������ʱ�����ȥ���������Σ��й����ڴ����߹���·������������أ������ϵ��±������Ǿ�����ʱ��ĵȴ�������Ϊ�Լ���Ϊ˭���ѹ��ܾã�����Ϊ�Լ�����ķŲ���һЩ���������������Ǻúõ�,˭������Զ����˭��ߣ������Ķ��������Ϊ��ȥ����Ϊ���䡣</strong><br />
</strong> 
</p>',99,42,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:43:14')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 90,3,26,N'����~��',N'/upload/201210/20/201210202228415528.jpg',N'��Щ����ǳ�����룬������ʱ�������ǳǳ�����߳���',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	��Щ����ǳ�����룬
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	������ʱ���
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	����ǳǳ�����߳���
</p>',99,57,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:51:12')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 91,3,26,N'��',N'/upload/201210/20/201210202240396556.jpg',N'�·�����������������ʱ���Ļ���δ��л   ����Ļ�����ʢ��æ�����۷�    �������ɳ���ԭ��Ϊ�����ǰܵĺ�����ʱ�����ڰ뿪������ǿ������   �߸�����Ԥı��ʫƪ����һ�������������',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�·�����������������ʱ��
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�Ļ���δ��л &nbsp;&nbsp;����Ļ�����ʢ��
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	æ�����۷� &nbsp;&nbsp;&nbsp;�������ɳ���
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	ԭ��Ϊ�����ǰܵĺ���
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	��ʱ�����ڰ뿪�����
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	��ǿ������ &nbsp;&nbsp;�߸�����Ԥı��ʫƪ
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	����һ������������� &nbsp;&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	��������粢�����ҵ�Ԥ��
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	����������������뿪
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	���ȴԹ�����������
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	�����е�һĨ��� &nbsp;&nbsp;�վ����˿���
</p>',99,56,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:53:55')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 94,3,26,N'ϲ���㡪���������',N'/upload/201210/20/201210202232163549.jpg',N'��Ե��������ˮ�������ᣬ�ξ�һ���飿Ī���飬���˼���',N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	&nbsp;One day someone will walk into your life, then you realize love was always worth waiting for��
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	&nbsp;&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;��Ե��������ˮ�������ᣬ�ξ�һ���飿Ī���飬���˼���
</p>',99,232,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:59:37')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 95,3,28,N'��Ů����--����.',N'/upload/201210/20/201210202227157663.jpg',N'��һ�����������ղغã����ư��ţ�ϸ�ı��棬���㾪������࣬�����������룬������֦������Ҫ�ǵã����ڣ���һֱ�ڣ������뿪��',N'<span style="text-align:left;color:#333333;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;white-space:normal;background-color:#FFFFFF;">��һ�����������ղغã����ư��ţ�ϸ�ı��棬���㾪������࣬�����������룬������֦������Ҫ�ǵã����ڣ���һֱ�ڣ������뿪��</span>',99,308,0,0,1,0,1,0,0,1,N'admin',N'2012/10/20 21:01:05')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 89,3,27,N'��ϲ������ ����Ϊ����������ů���õ��� ����',N'/upload/201210/20/201210202301235320.jpg',N'���ǽ���ˮ��ͣס���Ρ����϶��������ʯ���ţ��������ӵ�С������ԿյĻƻ裬һ�ж�����ʵ��һ��ȴ���Ե��ǰ㴿�桢Ψ�����·�һ�����˸�Ը�Ӵ˳��ٵ��ξ����������飬�����˸ж����ᣬ��Ȼ���¡����룬���ϵĲ��Ӽ������Ҹ��ģ���Ϊ������Я���߹�һ����Զ����ʯ���ţ�����',N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">&nbsp;���ǽ���ˮ��ͣס���Ρ����϶��������ʯ���ţ��������ӵ�С������ԿյĻƻ裬һ�ж�����ʵ��һ��ȴ���Ե��ǰ㴿�桢Ψ�����·�һ�����˸�Ը�Ӵ˳��ٵ��ξ����������飬�����˸ж����ᣬ��Ȼ���¡����룬���ϵĲ��Ӽ������Ҹ��ģ���Ϊ������Я���߹�һ����Զ����ʯ���ţ�����һ����գ�����������С������������ӵ�ı�Ӱ�����ǵ��μ򵥶����⣬һ���Ĭ�����ص���ʯ���ţ�һ��������г��С�һ����ʪ��¶����峿���Ӵ˳����һ����</span>',99,15,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:47:01',N'2013/12/10 4:06:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time]) VALUES ( 92,3,26,N'���ǣ������������ĵ�ģ����',N'/upload/201210/20/201210202236451044.jpg',N'�������ĵ����ӣ��ܻ����˸е����á�֮ǰ���Ǿ��������������ģ�ȴû����Ҳ�����Ѥ�õ�ɫ�ʡ���ʱ���������ǹ�ͺͺ�����ɣ�����������ɪɪ�����ĺ��磬��������ͷ���������ˡ���ϲ���ģ���������������ֵ����������������ô��Ӱ֮������⣬��ʵ����Ĳ�����ѧУ���㡭',N'<span style="text-align:left;color:#333333;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;white-space:normal;background-color:#FFFFFF;">�������ĵ����ӣ��ܻ����˸е����á�֮ǰ���Ǿ��������������ģ�ȴû����Ҳ�����Ѥ�õ�ɫ�ʡ���ʱ���������ǹ�ͺͺ�����ɣ�����������ɪɪ�����ĺ��磬��������ͷ���������ˡ���ϲ���ģ���������������ֵ����������������ô��Ӱ֮������⣬��ʵ����Ĳ�����ѧУ����Ӱ������Ҳ��֪������ô�ɵ����Ƚ��ģ�����򵥵Ļ���˵�����ǰ�ϲ����һ�ж���¼������֮����ȥ������֪���ĸ��ĵĺ��ĸ����������������ڼ�¼����Ҷ�ϲ�������յ�̬�Ⱥ���������ƣ��������ˣ�������ᵽ�������������̬��</span>',99,69,0,0,0,0,1,0,0,1,N'admin',N'2012/10/20 20:55:30')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 93,3,28,N'�㲻֪�����������е��Ϸ�������ů��',N'/upload/201210/20/201210202240309222.jpg',N'�������ǹ�����Ҷ ������������̾ һöö��չ����ͬ����ǰ�еĽ�ӡ   ˳�Ž�ɫ�ķ��� ������������������� �����÷��̵ļ���   �˿�,�ž���դ�� Χס��С�ĸ�������С���� ��������һö��Ҷ �·���סԶȥ��ʱ��  �ٴη����ο�ʼ�ĵط� һ�������İ� ��������Զ����˼��',N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">�������ǹ�����Ҷ</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">������������̾</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">һöö��չ����ͬ����ǰ�еĽ�ӡ</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;"><span style="font-family:&quot;&quot;;">&nbsp;</span></span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">˳�Ž�ɫ�ķ���</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">�������������������</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">�����÷��̵ļ���</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;"><span style="font-family:&quot;&quot;;">&nbsp;</span></span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">�˿�,�ž���դ��</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">Χס��С�ĸ�������С����</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">��������һö��Ҷ</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">�·���סԶȥ��ʱ��</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">�ٴη����ο�ʼ�ĵط�</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">һ�������İ�</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:����;">��������Զ����˼��</span></b> 
</p>',99,9,0,0,0,0,0,0,0,1,N'admin',N'2012/10/20 20:58:10',N'2013/12/10 4:06:41')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[seo_title],[seo_keywords],[seo_description],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 98,4,30,N'16*16PNG��ҳСͼ��',N'/upload/201210/21/201210211433570142.jpg',N'16*16PNG��ҳСͼ��',N'16*16PNG��ҳСͼ��',N'16*16PNG��ҳСͼ��',N'16*16PNG��ҳСͼ��',N'16*16PNG��ҳСͼ��',99,61,0,0,0,0,1,0,0,1,N'admin',N'2012/10/21 14:34:06',N'2013/12/10 4:09:02')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[seo_title],[seo_keywords],[seo_description],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 99,4,30,N'��ɫ���ü��PNGͼ��',N'/upload/201210/22/201210221634334069.jpg',N'��ɫ���ü��PNGͼ��',N'��ɫ���ü��PNGͼ��',N'��ר������98�ųߴ�Ϊ32x32���ص���ɫ���ü��PNGͼ���ز�',N'��ר������98�ųߴ�Ϊ32x32���ص���ɫ���ü��PNGͼ���زģ���������WIN8��񣬼򵥹��������Ŵ�Ҷ������õ��ϣ�',N'<p>
	��ר������98�ųߴ�Ϊ32x32���ص���ɫ���ü��PNGͼ���زģ���������WIN8��񣬼򵥹��������Ŵ�Ҷ������õ��ϣ�
</p>
<p>
	&nbsp;
</p>',99,51,0,0,0,1,1,0,0,1,N'admin',N'2012/10/21 14:43:39',N'2013/12/10 4:08:59')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 100,4,30,N'���������ͻ���PNGͼ��',N'/upload/201210/22/201210221641205768.jpg',N'PNG��ʽ͸������ͼ�꣬�ɴ�����ء���������Ӿ��񾭣�������������У���ר������48�ųߴ�Ϊ256x256���ص����������ͻ���PNGͼ���زġ�',N'<p>
	PNG��ʽ͸������ͼ�꣬�ɴ�����ء���������Ӿ��񾭣�������������У�
</p>
<p>
	��ר������48�ųߴ�Ϊ256x256���ص����������ͻ���PNGͼ���زġ�
</p>
<p>
	<img alt="google_shipping" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/google_shipping.png" /> <img alt="pinterest��������" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/pinterest_front.png" /> <img alt="ups_shipping����" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/ups_shipping.png" /> <img alt="linkedin_front" src="http://d.lanrentuku.com/down/png/1209/wuliu-tubiao/linkedin_front.png" /> 
</p>',99,112,0,0,0,1,1,0,0,1,N'admin',N'2012/10/22 16:43:39',N'2013/12/10 4:08:55')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 101,4,30,N'�������ÿ�PNGͼ��',N'/upload/201210/22/201210221647536218.jpg',N'��ר������8�ųߴ�Ϊ512x512���صĹ������ÿ�PNGͼ���زġ�PNG��ʽ͸������ͼ�꣬�ɴ�����ء���������Ӿ��񾭣�������������У�',N'<div class="jieshao">
	��ר������8�ųߴ�Ϊ512x512���صĹ������ÿ�PNGͼ���زġ�
</div>
PNG��ʽ͸������ͼ�꣬�ɴ�����ء���������Ӿ��񾭣�������������У�',99,124,0,0,0,1,1,0,0,1,N'admin',N'2012/10/22 16:48:51',N'2013/12/10 4:08:52')
INSERT [mfp_article] ([id],[channel_id],[category_id],[title],[img_url],[seo_keywords],[zhaiyao],[content],[sort_id],[click],[status],[vote_id],[is_msg],[is_top],[is_red],[is_hot],[is_slide],[is_sys],[user_name],[add_time],[update_time]) VALUES ( 102,4,31,N'�Ա��̳Ƕ��jQuery����ͼ',N'/upload/201210/23/201210231350163795.jpg',N'�Ա��̳�,jQuery����ͼ',N'��ȫģ�����Ա��̳ǵ�Ч����ͼƬ�Զ����ŵ����һ��ʱ���������л�����һ�ţ�����ͼ���Ƽ����أ���',N'<div class="jieshao">
	<p>
		��ȫģ�����Ա��̳ǵ�Ч����ͼƬ�Զ����ŵ����һ��ʱ���������л�����һ�ţ�����ͼ���Ƽ����أ���
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

INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 5,98,N'16PNGСͼ��.rar',N'/upload/201210/21/201210211433267781.rar',42,N'rar',0,1,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 7,99,N'raster-32x32.zip',N'/upload/201210/22/201210221635237349.zip',56,N'zip',15,0,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 8,100,N'pinterest_front.png',N'/upload/201210/22/201210221641014831.png',95,N'png',11,0,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 9,100,N'ups_shipping.png',N'/upload/201210/22/201210221641088581.png',109,N'png',5,0,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 10,101,N'�������ÿ�PNGͼ��.zip',N'/upload/201210/22/201210221648156687.zip',305,N'zip',1,2,N'2013/12/4 16:00:38')
INSERT [mfp_article_attach] ([id],[article_id],[file_name],[file_path],[file_size],[file_ext],[down_num],[point],[add_time]) VALUES ( 11,102,N'�Ա��̳Ƕ��jQuery����ͼ.zip',N'/upload/201210/23/201210231346099468.zip',473,N'zip',3,1,N'2013/12/4 16:00:38')

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

INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 1,N'sub_title',N'������',N'single-text',N'nvarchar(255)',255,0,0,0,0,0,N'��Ϊ�գ����255���ַ�',N's0-255',99,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 2,N'source',N'��Ϣ��Դ',N'single-text',N'nvarchar(50)',50,0,N'��վ',0,0,0,0,N'�Ǳ�����50���ַ�',N's0-50',100,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 3,N'author',N'��������',N'single-text',N'nvarchar(50)',50,0,0,0,0,0,N'�Ǳ�����50���ַ�',N's0-50',101,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 4,N'goods_no',N'��Ʒ����',N'single-text',N'nvarchar(100)',100,0,0,0,0,0,N'������ĸ���»��ߣ�100���ַ���',N's0-100',103,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 5,N'stock_quantity',N'�������',N'number',N'int',0,0,N'0',1,0,0,0,N'�������Ϊ0ʱ��ʾȱ��״̬',N'n',104,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 6,N'market_price',N'�г��۸�',N'number',N'decimal(9,2)',0,2,N'0',0,0,0,0,N'�г��Ĳ���۸񣬲��������',N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/',105,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 7,N'sell_price',N'���ۼ۸�',N'number',N'decimal(9,2)',0,2,N'0',1,0,0,0,N'*���۵�ʵ�ʽ��׼۸�',N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/',106,1)
INSERT [mfp_article_attribute_field] ([id],[name],[title],[control_type],[data_type],[data_length],[data_place],[default_value],[is_required],[is_password],[is_html],[editor_type],[valid_tip_msg],[valid_pattern],[sort_id],[is_sys]) VALUES ( 8,N'point',N'���׻���',N'number',N'int',0,0,N'0',0,0,0,0,N'*��Ϊ��������Ϊ���ѻ���',N'n',107,1)

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
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 5,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 6,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 7,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 8,N'��վ',N'Aitkon',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 9,N'694574',100,1500.00,1199.00,11)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 10,N'742173',100,1999.00,1999.00,20)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 11,N'��վ',N'����Ա',0,0.00,0.00,0)
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
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 23,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 24,N'703026',100,1299.00,1299.00,13)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 25,N'455456',100,99.00,69.00,7)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 26,N'1000002',100,4488.00,4388.00,200)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 27,N'782595',100,995.00,995.00,10)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 28,N'10000004',500,2499.00,2299.00,130)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 29,N'10000005',1000,1499.00,1450.00,80)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 30,N'1454006',450,10599.00,10399.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 31,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 32,N'10054568',100,4200.00,3870.00,200)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 33,N'754893',100,2880.00,2880.00,29)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 34,N'16788780',80,5688.00,5308.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 35,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 36,N'15678957',100,3288.00,3179.00,105)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 37,N'1560004',250,3690.00,3580.00,270)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 38,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 39,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[goods_no],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 40,N'1450004',300,3699.00,3580.00,200)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 41,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 42,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 43,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 44,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 45,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 46,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 47,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 48,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 49,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 50,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 51,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 52,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 53,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 54,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 55,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 56,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 57,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 58,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 59,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 60,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 61,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 62,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 63,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 64,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 65,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 66,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 67,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 68,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 69,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 70,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 71,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 72,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 73,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 74,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 75,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 76,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 77,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 78,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 79,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 80,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 81,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 82,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 83,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 84,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 85,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 86,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 87,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 88,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 89,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 90,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 91,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 92,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 93,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 94,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 95,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 96,N'��վ',N'����Ա',0,0.00,0.00,0)
INSERT [mfp_article_attribute_value] ([article_id],[source],[author],[stock_quantity],[market_price],[sell_price],[point]) VALUES ( 97,N'��վ',N'����Ա',0,0.00,0.00,0)
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

INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 1,1,N'��Ʒ����',N'feipinxinwen',0,N',1,',1,99)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 2,2,N'�ֻ�����',0,N',2,',1,99,N'�ֻ�����')
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 3,1,N'���綯̬',N'wangluodongtai',1,N',1,3,',2,100)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 4,1,N'��ҵ��Ѷ',N'xingyezixun',1,N',1,4,',2,101)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 5,1,N'���·���',N'zuixinfagui',1,N',1,5,',2,102)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 6,1,N'�����г�',N'huishoushichang',0,N',6,',1,100)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 7,1,N'�Ͼɽ���',N'feijiujinshu',6,N',6,7,',2,99)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 8,1,N'��ҵ����',N'gongyechuli',6,N',6,8,',2,100)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 9,1,N'���ӵ���',N'dianzidianqi',6,N',6,9,',2,101)
INSERT [mfp_article_category] ([id],[channel_id],[title],[call_index],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 10,1,N'���μӹ�',N'ercijiagong',6,N',6,10,',2,102)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 11,2,N'�����ֻ�',2,N',2,11,',2,99,N'�ֻ�ͨѶ')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 12,2,N'�������',2,N',2,12,',2,100,N'�������')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 13,2,N'�洢��',2,N',2,13,',2,101,N'�洢��')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 14,2,N'���԰칫',0,N',14,',1,100,N'���԰칫')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 15,2,N'�ʼǱ�',14,N',14,15,',2,99,N'�ʼǱ�')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 16,2,N'������',14,N',14,16,',2,100,N'������')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 17,2,N'ƽ�����',14,N',14,17,',2,101,N'ƽ�����')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 18,2,N'�����Ʒ',14,N',14,18,',2,102,N'�����Ʒ')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 19,2,N'���õ���',0,N',19,',1,101,N'���õ���')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 20,2,N'ƽ�����',19,N',19,20,',2,99,N'ƽ�����')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 21,2,N'�յ�',19,N',19,21,',2,101,N'�յ�')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 22,2,N'����',19,N',19,22,',2,102,N'����')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 23,2,N'ϴ�»�',19,N',19,23,',2,103,N'ϴ�»�')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 24,2,N'�̻�/���',19,N',19,24,',2,104,N'�̻�/���')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 25,3,N'3C����',0,N',25,',1,99,N'3C����')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 26,3,N'�Ҿ�����',0,N',26,',1,100,N'�Ҿ�����')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 27,3,N'������Ӱ',0,N',27,',1,101)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 28,3,N'������Ů',0,N',28,',1,102,N'������Ů')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id]) VALUES ( 29,3,N'Ȥζ����',0,N',29,',1,103)
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 30,4,N'ͼ���ز�',0,N',30,',1,99,N'ͼ���ز�')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 31,4,N'jquery���',0,N',31,',1,99,N'jquery���')
INSERT [mfp_article_category] ([id],[channel_id],[title],[parent_id],[class_list],[class_layer],[sort_id],[seo_title]) VALUES ( 32,5,N'��˾����',0,N',32,',1,99,N'��˾����')

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

INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 1,1,N'news',N'��������',0,0,0,12,99)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 2,1,N'goods',N'������Ʒ',1,0,1,12,100)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 3,1,N'photo',N'��Ϣ����',1,0,0,12,101)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 4,1,N'down',N'�г�����',0,1,0,12,102)
INSERT [mfp_channel] ([id],[category_id],[name],[title],[is_albums],[is_attach],[is_group_price],[page_size],[sort_id]) VALUES ( 5,1,N'content',N'��վ����',0,0,0,12,103)

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

INSERT [mfp_channel_category] ([id],[title],[build_path],[templet_path],[is_default],[sort_id]) VALUES ( 1,N'Ĭ��վ��',N'main',N'green',1,99)

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

INSERT [mfp_express] ([id],[title],[express_code],[express_fee],[website],[remark],[sort_id],[is_lock]) VALUES ( 1,N'˳����',N'shunfeng',20.00,N'http://www.sf-express.com',N'˳����<br />��������',99,0)
INSERT [mfp_express] ([id],[title],[express_code],[express_fee],[website],[remark],[sort_id],[is_lock]) VALUES ( 2,N'�ϴ���',N'yunda',14.00,N'http://www.yundaex.com',N'�ϴ���',100,0)

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

INSERT [mfp_feedback] ([id],[title],[content],[user_name],[user_tel],[user_qq],[user_email],[add_time],[is_lock]) VALUES ( 1,N'��һ�����Է���Ī������',N'������һ�����Է���Ī������<br />ɳ��������',N'һЩ����',N'13800138000',N'932235529',N'joxie@qq.com',N'2012/11/21 17:28:58',0)
INSERT [mfp_feedback] ([id],[title],[content],[user_name],[add_time],[is_lock]) VALUES ( 2,N'��ǰ�ſ���',N'����Щ�����á�',N'test',N'2012/11/22 7:51:12',1)

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

INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 1,N'�Ѻ�IT',N'http://it.sohu.com',0,99,1,0,N'2012/11/21 16:52:46')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 2,N'�ٶ�����',N'http://tieba.baidu.com',0,99,1,0,N'2012/11/21 16:53:13')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 3,N'�л����Ƽ�',N'http://tech.china.com',0,99,1,0,N'2012/11/21 16:53:34')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 4,N'��ţʿ',N'http://www.bianews.com',0,99,1,0,N'2012/11/21 16:54:02')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 5,N'�й�ITʵ����',N'http://www.chinaitlab.com',0,99,1,0,N'2012/11/21 16:54:30')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 6,N'�Ƽ�Ѷ',N'http://www.kejixun.com',0,99,1,0,N'2012/11/21 16:54:48')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 7,N'ţ����',N'http://www.newhua.com',0,99,1,0,N'2012/11/21 16:55:13')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 8,N'�Ա�����',N'http://it.taobao.com',0,99,1,0,N'2012/11/21 16:55:39')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 9,N'�ֻ�֮��',N'http://www.imobile.com.cn',0,99,1,0,N'2012/11/21 16:55:58')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 10,N'Discuz����',N'http://www.discuz.net',0,99,1,0,N'2012/11/21 16:56:29')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 11,N'IT֮��',N'http://www.ithome.com',0,99,1,0,N'2012/11/21 16:56:59')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 12,N'�ƶ�վ��',N'www.mymzz.com',0,99,1,0,N'2012/11/21 16:57:24')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 13,N'ckplayer��Ƶ������',N'http://www.ckplayer.com',0,99,1,0,N'2012/11/21 16:58:40')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 14,N'����ľ��',N'http://www.ylmf.net',0,99,1,0,N'2012/11/21 16:59:13')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 15,N'��ʡ���Ƽ���ҵ',N'http://www.mittrchinese.com',0,99,1,0,N'2012/11/21 16:59:41')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 16,N'������',N'http://www.ccw.com.cn',0,99,1,0,N'2012/11/21 16:59:59')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 17,N'IT���',N'http://www.itchaguan.com',0,99,1,0,N'2012/11/21 17:00:33')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 18,N'��6�Ƽ�',N'http://tech.ku6.com',0,99,1,0,N'2012/11/21 17:00:52')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 19,N'�׷���',N'http://www.leiphone.com',0,99,1,0,N'2012/11/21 17:01:11')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 20,N'�����ʿ',N'http://www.tgbus.com',0,99,1,0,N'2012/11/21 17:01:30')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 21,N'վ����',N'http://www.admin5.com',0,99,1,0,N'2012/11/21 17:02:02')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 22,N'վ��֮��',N'http://www.chinaz.com',0,99,1,0,N'2012/11/21 17:02:21')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 23,N'����֮��',N'http://www.mydrivers.com',0,99,1,0,N'2012/11/21 17:02:39')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 24,N'��������',N'http://www.160.com',0,99,1,0,N'2012/11/21 17:02:56')
INSERT [mfp_link] ([id],[title],[site_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 25,N'��Ѫ����',N'http://www.tiexue.net',0,99,1,0,N'2012/11/21 17:03:14')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 26,N'����׿Խ',N'http://www.maticsoft.com',N'http://www.maticsoft.com/images/logo/logo12.gif',1,99,1,0,N'2012/11/21 17:04:07')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 27,N'վ���й�',N'http://www.chinaz.com',N'http://www.chinaz.com/images/chinaz.gif',1,99,1,0,N'2012/11/21 17:04:57')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 28,N'51aspx',N'http://www.51aspx.com',N'http://www.51aspx.com/logo_88x31.gif',1,99,1,0,N'2012/11/21 17:05:23')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 29,N'UI������',N'http://www.uimaker.com',N'http://www.uimaker.com/templets/uimaker/images/uimakerlogo.gif',1,99,1,0,N'2012/11/21 17:06:05')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 30,N'�Ƹ�ͨ',N'http://www.tenpay.com',N'http://www.it134.cn/it134_old2/UpLoadFiles/image/links/2010071420394503.jpg',1,99,1,0,N'2012/11/21 17:08:07')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 31,N'֧����',N'http://www.alipay.com',N'http://www.dtcms.net/it134_old2/UpLoadFiles/20110509/2011050915104673.jpg',1,99,1,0,N'2012/11/21 17:08:55')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 32,N'������ҳ��Ƶ������',N'http://www.ckplayer.com',N'http://www.ckplayer.com/images/logo_88-31.jpg',1,99,1,0,N'2012/11/21 17:09:40')
INSERT [mfp_link] ([id],[title],[site_url],[img_url],[is_image],[sort_id],[is_red],[is_lock],[add_time]) VALUES ( 33,N'���Ƽ�',N'http://www.dukeji.com',N'http://www.dukeji.com/Content/themes/base/CMS/images/logo.jpg',1,99,1,0,N'2012/11/21 17:11:54')
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

INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 1,N'��Աע�������ʼ�',N'registerlink',N'���û�ע������(����ظ����ʼ�)',N'<p>
	��ӭ����Ϊ{webname}��Ա�û����������µ���ַ����ע�᣺
</p>
<p>
	<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	��������Ч��Ϊ{valid}�죬����{valid}���ڵ�����ӽ���ע�᣻�������δע�����վ��Ա������Ա��ʼ������ʼ�Ϊϵͳ�Զ�����������ظ���<br />
�κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 2,N'ע�ἤ���˻��ʼ�',N'regverify',N'����ע���˻�(����ظ����ʼ�)',N'<p>
	<strong>�𾴵�{username}�����ã�</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; ��ӭ����Ϊ{webname}��Ա�û����������µ���ַ���м������Ļ�Ա�˻���
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	��������Ч��Ϊ{valid}�죬����{valid}���ڵ�����ӽ���ע�᣻�������δע�����վ��Ա������Ա��ʼ������ʼ�Ϊϵͳ�Զ�����������ظ���<br />
�κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 3,N'�û�ȡ������',N'getpassword',N'�һ�������ʾ(����ظ����ʼ�)',N'<strong>{username}�����ã�</strong><br />
<p>
	����<span style="color:#FF0000;">{webname}</span>����ˡ��������롱�һ����룬��ϵͳ�Զ�Ϊ������������ʼ��������Ե�����������޸��������룺<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	��������Ч��Ϊ{valid}�죬����{valid}���ڵ�����ӽ����޸ġ����������Ҫ�޸����룬��������δ��������������롱��ť������Ա��ʼ���<br />
�κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 4,N'��ӭ���û��ʼ�',N'welcomemsg',N'��ӭ���û�(����ظ����ʼ�)',N'<p>
	<strong>�𾴵�{username}�����ã�</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; ���ѳɹ�ע�Ტ��ʽ��Ϊ{webname}��Ա�û�������ע�Ᵽ�ܺø����˻���Ϣ����ֹ��ʧ��й©��
</p>
<hr />
<p>
	���ʼ�Ϊϵͳ�Զ�����������ظ����ʼ����κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 5,N'����ȷ��֪ͨ',N'order_confirm',N'����ȷ��֪ͨ',N'<p>
	<strong>�𾴵�{username}�����ã�</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����{webname}��һ�ʶ�����ȷ�ϣ�������Ϊ��{orderno}������{amount}Ԫ�����ǻᾡ�찲�ŷ������������ĵȴ���ף��������죡
</p>
<hr />
<p>
	���ʼ�Ϊϵͳ�Զ�����������ظ����ʼ����κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 6,N'��������֪ͨ',N'order_express',N'��������֪ͨ',N'<p>
	<strong>�𾴵�{username}�����ã�</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����{webname}��һ�ʶ����Ѿ�������������Ϊ��{orderno}������{amount}Ԫ������ע����գ�ף��������죡
</p>
<hr />
<p>
	���ʼ�Ϊϵͳ�Զ�����������ظ����ʼ����κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>',1)
INSERT [mfp_mail_template] ([id],[title],[call_index],[maill_title],[content],[is_sys]) VALUES ( 7,N'�������֪ͨ',N'order_complete',N'�������֪ͨ',N'<p>
	<strong>�𾴵�{username}�����ã�</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����{webname}��һ�ʶ���������ɣ�������Ϊ��{orderno}������{amount}Ԫ���ڴ����´ι��٣�ף��������죡
</p>
<hr />
<p>
	���ʼ�Ϊϵͳ�Զ�����������ظ����ʼ����κ����ʣ��벦��ͷ�������ѯ��{webtel}��лл����֧�֣�
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

INSERT [mfp_manager] ([id],[role_id],[role_type],[user_name],[password],[salt],[real_name],[telephone],[email],[is_lock],[add_time]) VALUES ( 1,1,1,N'admin',N'BB59946C93C0DEE8082F292B3A0FC7FF',N'28LH48',N'��������Ա',N'13800138000',N'info@dtcms.net',0,N'2013/12/4 1:53:36')

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

INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 1,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/19 10:20:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 2,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/19 11:24:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 3,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/19 11:40:08')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 4,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/19 16:00:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 5,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 9:33:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 6,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 9:41:49')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 7,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 10:23:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 8,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 10:27:18')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 9,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 10:54:22')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 10,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 10:59:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 11,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/20 17:44:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 12,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/22 10:06:30')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 13,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/22 11:26:50')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 14,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/23 17:28:35')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 15,1,N'admin',N'Add',N'�޸ĵ�����Ϣ:URL����',N'127.0.0.1',N'2015/1/23 17:39:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 16,1,N'admin',N'Add',N'�޸ĵ�����Ϣ:��չ�ֶ�',N'127.0.0.1',N'2015/1/23 17:40:31')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 17,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 9:25:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 18,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/1/29 9:25:59')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 19,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 9:53:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 20,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 10:24:33')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 21,1,N'admin',N'Edit',N'�޸�URL������Ϣ:index',N'127.0.0.1',N'2015/1/29 10:45:39')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 22,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/1/29 10:47:00')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 23,1,N'admin',N'Edit',N'�޸Ĺ����ɫ:����������',N'127.0.0.1',N'2015/1/29 10:49:21')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 24,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 11:06:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 25,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 11:16:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 26,1,N'admin',N'Edit',N'�޸�URL������Ϣ:index',N'127.0.0.1',N'2015/1/29 11:18:17')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 27,1,N'admin',N'Edit',N'�޸�URL������Ϣ:index',N'127.0.0.1',N'2015/1/29 11:25:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 28,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/29 11:59:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 29,1,N'admin',N'Delete',N'ɾ��ģ���ļ���ģ��:green',N'127.0.0.1',N'2015/1/29 12:06:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 30,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/29 12:26:49')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 31,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/29 12:31:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 32,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/29 12:52:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 33,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 14:57:28')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 34,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/29 16:35:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 35,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/29 16:38:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 36,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 9:33:28')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 37,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 9:33:37')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 38,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 9:34:23')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 39,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 9:38:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 40,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/1/30 9:39:07')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 41,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 9:39:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 42,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/1/30 9:40:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 43,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 10:08:15')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 44,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 10:12:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 45,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 10:20:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 46,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/1/30 10:20:29')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 47,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 11:00:01')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 48,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/1/30 11:35:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 49,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/1/30 11:36:22')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 50,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/1/30 11:37:34')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 51,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/1/30 11:45:20')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 52,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 11:49:51')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 53,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 11:52:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 54,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 11:55:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 55,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/1/30 11:58:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 56,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 11:58:42')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 57,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/1/30 11:59:16')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 58,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/1/30 12:04:32')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 59,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 12:05:21')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 60,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/1/30 15:33:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 61,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:ҵ����Ѷ',N'127.0.0.1',N'2015/1/30 15:34:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 62,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:��ҵ��Ѷ',N'127.0.0.1',N'2015/1/30 15:34:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 63,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:��Ʒ����',N'127.0.0.1',N'2015/1/30 15:35:19')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 64,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:�����г�',N'127.0.0.1',N'2015/1/30 15:36:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 65,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:��������',N'127.0.0.1',N'2015/1/30 15:43:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 66,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:���綯̬',N'127.0.0.1',N'2015/1/30 15:44:00')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 67,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:��ҵ��Ѷ',N'127.0.0.1',N'2015/1/30 15:44:17')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 68,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:���·���',N'127.0.0.1',N'2015/1/30 15:44:50')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 69,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:�Ͼɽ���',N'127.0.0.1',N'2015/1/30 15:45:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 73,1,N'admin',N'Edit',N'�޸�newsƵ������:�ϸڰ��� �����ްԡ���10������',N'127.0.0.1',N'2015/1/30 16:07:43')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 74,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/2 16:59:11')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 70,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:��ҵ����',N'127.0.0.1',N'2015/1/30 15:46:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 71,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:���ӵ���',N'127.0.0.1',N'2015/1/30 15:46:42')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 72,1,N'admin',N'Edit',N'�޸�newsƵ����Ŀ����:���μӹ�',N'127.0.0.1',N'2015/1/30 15:48:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 75,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 16:34:22')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 76,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:11:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 77,1,N'admin',N'Add',N'���Ƶ�������Ϣ',N'127.0.0.1',N'2015/2/3 17:17:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 78,1,N'admin',N'Edit',N'�޸�Ƶ�������Ϣ',N'127.0.0.1',N'2015/2/3 17:18:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 79,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/2/3 17:20:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 80,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:27:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 81,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:28:17')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 82,1,N'admin',N'Delete',N'ɾ��Ƶ���ɹ�1����ʧ��0��',N'127.0.0.1',N'2015/2/3 17:29:09')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 83,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:29:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 84,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:30:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 85,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:35:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 86,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:38:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 87,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/3 17:38:59')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 88,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 17:46:08')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 89,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/3 17:50:44')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 90,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/3 17:50:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 91,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/3 18:04:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 92,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/3 18:04:19')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 93,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 13:34:51')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 94,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/4 13:37:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 95,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/4 13:50:33')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 96,1,N'admin',N'Build',N'���ɲ��ģ��',N'127.0.0.1',N'2015/2/4 14:47:05')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 97,1,N'admin',N'Instal',N'��װ���',N'127.0.0.1',N'2015/2/4 14:47:28')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 98,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:13:38')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 99,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:16:53')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 100,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:17:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 101,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:17:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 102,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:18:37')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 103,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:19:13')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 104,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:30:40')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 105,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:36:04')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 106,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:37:36')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 107,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:37:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 108,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 15:42:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 109,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 16:31:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 110,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 16:32:14')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 111,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/4 16:39:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 112,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 9:41:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 113,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/2/5 9:42:19')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 114,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/2/5 9:42:57')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 115,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/2/5 9:43:03')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 116,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 9:57:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 117,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 10:04:09')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 118,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 10:22:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 119,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/2/5 10:22:56')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 120,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 10:29:51')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 121,1,N'admin',N'Edit',N'�޸�Ƶ������:Ĭ��վ��',N'127.0.0.1',N'2015/2/5 10:30:57')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 122,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 10:41:36')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 123,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 14:03:47')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 124,1,N'admin',N'Add',N'���Ƶ�������г�',N'127.0.0.1',N'2015/2/5 14:24:12')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 125,1,N'admin',N'Edit',N'�޸�Ƶ�������г�',N'127.0.0.1',N'2015/2/5 14:24:42')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 126,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 14:28:11')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 127,1,N'admin',N'Delete',N'ɾ��URL������Ϣ',N'127.0.0.1',N'2015/2/5 14:42:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 128,1,N'admin',N'Delete',N'ɾ��Ƶ���ɹ�1����ʧ��0��',N'127.0.0.1',N'2015/2/5 14:43:05')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 132,1,N'admin',N'Edit',N'�޸�Ƶ������ƷĿ',N'127.0.0.1',N'2015/2/5 15:06:08')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 134,1,N'admin',N'Edit',N'�޸�Ƶ����Ϣ����',N'127.0.0.1',N'2015/2/5 15:22:05')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 135,1,N'admin',N'Edit',N'�޸�Ƶ���г�����',N'127.0.0.1',N'2015/2/5 15:22:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 136,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 15:29:58')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 137,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 16:19:06')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 138,1,N'admin',N'Edit',N'�޸�Ƶ����������',N'127.0.0.1',N'2015/2/5 16:19:52')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 139,1,N'admin',N'Edit',N'�޸�Ƶ��������Ʒ',N'127.0.0.1',N'2015/2/5 16:20:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 140,1,N'admin',N'Edit',N'�޸�Ƶ����Ϣ����',N'127.0.0.1',N'2015/2/5 16:20:13')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 141,1,N'admin',N'Edit',N'�޸�Ƶ���г�����',N'127.0.0.1',N'2015/2/5 16:20:25')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 142,1,N'admin',N'Edit',N'�޸�Ƶ����վ����',N'127.0.0.1',N'2015/2/5 16:20:36')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 143,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 16:21:55')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 144,1,N'admin',N'Edit',N'�޸Ĺ����ɫ:����������',N'127.0.0.1',N'2015/2/5 16:23:48')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 145,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 16:23:54')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 146,1,N'admin',N'Edit',N'�޸�ϵͳ������Ϣ',N'127.0.0.1',N'2015/2/5 16:25:41')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 151,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 17:46:09')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 152,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 17:47:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 129,1,N'admin',N'Edit',N'�޸�Ƶ������ƷĿ',N'127.0.0.1',N'2015/2/5 15:00:02')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 130,1,N'admin',N'Edit',N'�޸�Ƶ����վ����',N'127.0.0.1',N'2015/2/5 15:03:26')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 131,1,N'admin',N'Edit',N'�޸�Ƶ����������',N'127.0.0.1',N'2015/2/5 15:05:27')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 133,1,N'admin',N'Edit',N'�޸�Ƶ��������Ʒ',N'127.0.0.1',N'2015/2/5 15:10:53')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 147,1,N'admin',N'Login',N'�û���¼',N'127.0.0.1',N'2015/2/5 17:04:45')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 148,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 17:04:57')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 149,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 17:22:24')
INSERT [mfp_manager_log] ([id],[user_id],[user_name],[action_type],[remark],[user_ip],[add_time]) VALUES ( 150,1,N'admin',N'Build',N'����ģ��:green',N'127.0.0.1',N'2015/2/5 17:27:43')

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

INSERT [mfp_manager_role] ([id],[role_name],[role_type],[is_sys]) VALUES ( 1,N'����������',2,1)
INSERT [mfp_manager_role] ([id],[role_name],[role_type],[is_sys]) VALUES ( 2,N'ϵͳ������',2,0)

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

INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 1,N'System',N'sys_contents',N'���ݹ���',N'����',99,0,0,N',1,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 2,N'System',N'sys_users',N'��Ա����',N'��Ա',100,0,N'ϵͳĬ�ϵ��������ɸ��ĵ���ID',0,N',2,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 3,N'System',N'sys_orders',N'��������',N'����',101,0,N'ϵͳĬ�ϵ����������޸ĵ���ID',0,N',3,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 4,N'System',N'sys_design',N'�������',N'����',102,0,N'ϵͳĬ�ϵ��������ɸ��ĵ���ID',0,N',4,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 5,N'System',N'sys_controller',N'�������',N'�������',103,0,N'ϵͳĬ�ϵ����������޸ĵ���ID',0,N',5,',1,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sub_title],[sort_id],[is_lock],[remark],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 6,N'System',N'sys_plugins',N'�������',N'�������',999,0,N'ϵͳĬ�ϵ����������޸ĵ���ID',1,N',1,6,',2,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 7,N'System',N'user_manage',N'��Ա����',99,0,2,N',2,7,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 8,N'System',N'user_log',N'��Ա��־',100,0,2,N',2,8,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 9,N'System',N'user_settings',N'��Ա����',101,0,2,N',2,9,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 10,N'System',N'order_manage',N'��������',99,0,3,N',3,10,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 11,N'System',N'order_settings',N'��������',100,0,3,N',3,11,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 12,N'System',N'app_manage',N'Ӧ�ù���',99,0,4,N',4,12,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 13,N'System',N'site_manage',N'ϵͳ����',99,0,5,N',5,13,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 14,N'System',N'sys_manager',N'ϵͳ�û�',101,0,5,N',5,14,',2,0,N'Show',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 15,N'System',N'user_audit',N'��˻�Ա',N'users/user_audit.aspx',99,0,7,N',2,7,15,',3,0,N'Show,View,Audit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 16,N'System',N'user_list',N'���л�Ա',N'users/user_list.aspx',100,0,7,N',2,7,16,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 17,N'System',N'user_group',N'��Ա���',N'users/group_list.aspx',101,0,7,N',2,7,17,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 18,N'System',N'user_sms',N'���Ͷ���',N'users/user_sms.aspx',99,0,8,N',2,8,18,',3,0,N'Show,View,Add',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 19,N'System',N'user_message',N'վ����Ϣ',N'users/message_list.aspx',100,0,8,N',2,8,19,',3,0,N'Show,View,Add,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 20,N'System',N'user_point_log',N'���ּ�¼',N'users/point_log.aspx',101,0,8,N',2,8,20,',3,0,N'Show,View,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 21,N'System',N'user_amount_log',N'���Ѽ�¼',N'users/amount_log.aspx',102,0,8,N',2,8,21,',3,0,N'Show,View,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 22,N'System',N'user_config',N'��������',N'users/user_config.aspx',99,0,9,N',2,9,22,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 23,N'System',N'user_sms_template',N'����ģ��',N'users/sms_template_list.aspx',100,0,9,N',2,9,23,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 24,N'System',N'user_mail_template',N'�ʼ�ģ��',N'users/mail_template_list.aspx',101,0,9,N',2,9,24,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 25,N'System',N'user_oauth',N'OAuth����',N'users/oauth_app_list.aspx',102,0,9,N',2,9,25,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 26,N'System',N'order_confirm',N'��ȷ�϶���',N'order/order_confirm.aspx',99,0,10,N',3,10,26,',3,0,N'Show,View,Confirm',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 27,N'System',N'order_list',N'ȫ������',N'order/order_list.aspx',100,0,10,N',3,10,27,',3,0,N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 28,N'System',N'order_config',N'������������',N'order/order_config.aspx',99,0,11,N',3,11,28,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 29,N'System',N'order_payment',N'֧����ʽ����',N'order/payment_list.aspx',100,0,11,N',3,11,29,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 30,N'System',N'order_express',N'���ͷ�ʽ����',N'order/express_list.aspx',101,0,11,N',3,11,30,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 31,N'System',N'app_templet_list',N'��վģ�����',N'settings/templet_list.aspx',99,0,12,N',4,12,31,',3,0,N'Show,View,Add,Edit,Delete,Build',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 32,N'System',N'app_plugin_list',N'�����װ����',N'settings/plugin_list.aspx',100,0,12,N',4,12,32,',3,0,N'Show,View,Build,Instal,Unload',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 33,N'System',N'app_builder_html',N'���ɾ�̬ҳ��',N'settings/builder_html.aspx',101,0,12,N',4,12,33,',3,0,N'Show,View,Build',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 34,N'System',N'app_navigation_list',N'��̨��������',N'settings/nav_list.aspx',102,0,12,N',4,12,34,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 35,N'System',N'site_config',N'ϵͳ����',N'settings/sys_config.aspx',99,0,13,N',5,13,35,',3,0,N'Show,View,Edit',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 36,N'System',N'site_url_rewrite',N'URL����',N'settings/url_rewrite_list.aspx',103,0,13,N',5,13,36,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 37,N'System',N'site_channel_list',N'Ƶ������',N'channel/channel_list.aspx',101,0,13,N',5,13,37,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 38,N'System',N'site_channel_category',N'Ƶ������',N'channel/category_list.aspx',102,0,13,N',5,13,38,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 39,N'System',N'site_channel_field',N'��չ�ֶ�',N'channel/attribute_field_list.aspx',104,0,13,N',5,13,39,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 40,N'System',N'manager_list',N'����Ա����',N'manager/manager_list.aspx',99,0,14,N',5,14,40,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 41,N'System',N'manager_role',N'��ɫ����',N'manager/role_list.aspx',100,0,14,N',5,14,41,',3,0,N'Show,View,Add,Edit,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 42,N'System',N'manager_log',N'������־',N'manager/manager_log.aspx',101,0,14,N',5,14,42,',3,0,N'Show,View,Delete',0)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 43,N'System',N'channel_main',N'Ĭ��վ��',99,0,1,N',1,43,',2,0,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 44,N'System',N'channel_news',N'��������',99,0,43,N',1,43,44,',3,1,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 45,N'System',N'channel_news_list',N'���ݹ���',N'article/article_list.aspx',99,0,44,N',1,43,44,45,',4,1,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 46,N'System',N'channel_news_category',N'��Ŀ���',N'article/category_list.aspx',100,0,44,N',1,43,44,46,',4,1,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 47,N'System',N'channel_news_comment',N'���۹���',N'article/comment_list.aspx',101,0,44,N',1,43,44,47,',4,1,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 48,N'System',N'channel_goods',N'������Ʒ',100,0,43,N',1,43,48,',3,2,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 49,N'System',N'channel_goods_list',N'���ݹ���',N'article/article_list.aspx',99,0,48,N',1,43,48,49,',4,2,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 50,N'System',N'channel_goods_category',N'��Ŀ���',N'article/category_list.aspx',100,0,48,N',1,43,48,50,',4,2,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 51,N'System',N'channel_goods_comment',N'���۹���',N'article/comment_list.aspx',101,0,48,N',1,43,48,51,',4,2,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 52,N'System',N'channel_photo',N'��Ϣ����',101,0,43,N',1,43,52,',3,3,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 53,N'System',N'channel_photo_list',N'���ݹ���',N'article/article_list.aspx',99,0,52,N',1,43,52,53,',4,3,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 54,N'System',N'channel_photo_category',N'��Ŀ���',N'article/category_list.aspx',100,0,52,N',1,43,52,54,',4,3,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 55,N'System',N'channel_photo_comment',N'���۹���',N'article/comment_list.aspx',101,0,52,N',1,43,52,55,',4,3,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 56,N'System',N'channel_down',N'�г�����',102,0,43,N',1,43,56,',3,4,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 57,N'System',N'channel_down_list',N'���ݹ���',N'article/article_list.aspx',99,0,56,N',1,43,56,57,',4,4,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 58,N'System',N'channel_down_category',N'��Ŀ���',N'article/category_list.aspx',100,0,56,N',1,43,56,58,',4,4,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 59,N'System',N'channel_down_comment',N'���۹���',N'article/comment_list.aspx',101,0,56,N',1,43,56,59,',4,4,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 60,N'System',N'channel_content',N'��վ����',103,0,43,N',1,43,60,',3,5,N'Show',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 61,N'System',N'channel_content_list',N'���ݹ���',N'article/article_list.aspx',99,0,60,N',1,43,60,61,',4,5,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 62,N'System',N'channel_content_category',N'��Ŀ���',N'article/category_list.aspx',100,0,60,N',1,43,60,62,',4,5,N'Show,View,Add,Edit,Delete',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 63,N'System',N'channel_content_comment',N'���۹���',N'article/comment_list.aspx',101,0,60,N',1,43,60,63,',4,5,N'Show,View,Delete,Reply',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 64,N'System',N'plugin_link',N'���ӹ���',N'/plugins/link/admin/index.aspx',99,0,6,N',1,6,64,',3,0,N'Show,View,Add,Edit,Delete,Audit',1)
INSERT [mfp_navigation] ([id],[nav_type],[name],[title],[link_url],[sort_id],[is_lock],[parent_id],[class_list],[class_layer],[channel_id],[action_type],[is_sys]) VALUES ( 65,N'System',N'plugin_feedback',N'���Թ���',N'/plugins/feedback/admin/index.aspx',99,0,6,N',1,6,65,',3,0,N'Show,View,Delete,Audit,Reply',1)

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

INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock]) VALUES ( 1,N'��������',N'�յ���Ʒ�����֧����֧���ֽ��ˢ������',2,2,0.00,99,0)
INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path]) VALUES ( 2,N'�˻����',N'�˻�����ǿͻ�������վ�ϵ��˻������ʽ�',1,2,0.00,100,0,N'balance')
INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path]) VALUES ( 3,N'֧����',N'������������ˣ���Ԥ��/��ѣ����ʷ��ʽ������0.7%�����������ơ�<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">��������</a>',1,2,0.00,101,0,N'alipay')
INSERT [mfp_payment] ([id],[title],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path]) VALUES ( 4,N'�Ƹ�ͨ',N'���������<span style="color:#FF0000;font-weight: bold;">0.61%</span>�������ͼ�ֵǧԪ��ҵQQ��<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">��С�̼�ǩԼ���</a>',1,2,0.00,102,0,N'tenpay')

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

INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 1,N'��Ա��֤�����',N'usercode',N'������֤��Ϊ��{code}��{valid}��������Ч��',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 2,N'��ӭ���û�����',N'welcomemsg',N'��ӭ��Ϊ{webname}��Ա������û���Ϊ��{username}��ע�Ᵽ�ܺ������˻���Ϣ��',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 3,N'����ȷ��֪ͨ',N'order_confirm',N'�𾴵�{username}������{webname}�Ķ�����ȷ�ϣ�������Ϊ��{orderno}������{amount}Ԫ�����ǻᾡ�찲�ŷ�����',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 4,N'��������֪ͨ',N'order_express',N'�𾴵�{username}������{webname}�Ķ����ѷ�����������Ϊ��{orderno}����ע����ա�',1)
INSERT [mfp_sms_template] ([id],[title],[call_index],[content],[is_sys]) VALUES ( 5,N'�������֪ͨ',N'order_complete',N'�𾴵�{username}������{webname}��һ�ʶ���������ɣ�������Ϊ��{orderno}���ڴ��´ι��٣�ף��������졣',1)

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

INSERT [mfp_user_amount_log] ([id],[user_id],[user_name],[type],[payment_id],[value],[remark],[status],[add_time],[complete_time]) VALUES ( 1,1,N'test',N'SysGive',0,1.00,N'ע�����ͽ��',1,N'2015/2/5 11:53:14',N'2015/2/5 11:53:14')

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

INSERT [mfp_user_groups] ([id],[title],[grade],[upgrade_exp],[amount],[point],[discount],[is_default],[is_upgrade],[is_lock]) VALUES ( 1,N'��ͨ��Ա',1,0,1.00,10,100,1,1,0)
INSERT [mfp_user_groups] ([id],[title],[grade],[upgrade_exp],[amount],[point],[discount],[is_default],[is_upgrade],[is_lock]) VALUES ( 2,N'VIP��Ա',2,1000,0.00,0,99,0,1,0)

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

INSERT [mfp_user_login_log] ([id],[user_id],[user_name],[remark],[login_time],[login_ip]) VALUES ( 1,1,N'test',N'��Ա��¼',N'2015/2/5 11:53:14',N'127.0.0.1')

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

INSERT [mfp_user_message] ([id],[type],[accept_user_name],[is_read],[title],[content],[post_time]) VALUES ( 1,1,N'test',0,N'��ӭ����Ϊ��վ��Ա',N'��ӭ���Ϊ��վ��Ա��',N'2015/2/5 11:53:14')

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

INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 1,N'��QQ�ʺŵ�¼',N'/upload/201301/22/201301222356267017.png',N'API Key',N'Secret Key',N'QQ��������ƽ̨',99,0,N'qq')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 2,N'������΢����¼',N'/upload/201301/22/201301222358108990.png',N'API Key',N'Secret Key',N'����΢������ƽ̨',100,0,N'sina')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 3,N'���Ա��˺ŵ�¼',N'/upload/201301/22/201301222359116140.png',N'API Key',N'Secret Key',N'�Ա�����ƽ̨',101,0,N'taobao')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 4,N'�ÿ������ʺŵ�¼',N'/upload/201301/22/201301222359597445.png',N'API Key',N'Secret Key',N'����������ƽ̨',102,0,N'kaixin')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 5,N'���������ʺŵ�¼',N'/upload/201301/23/201301230000421311.png',N'API Key',N'Secret Key',N'����������ƽ̨',103,0,N'renren')
INSERT [mfp_user_oauth_app] ([id],[title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path]) VALUES ( 6,N'�÷����˺ŵ�¼',N'/upload/201301/23/201301230001220360.png',N'API Key',N'Secret Key',N'�й��ƶ����ſ���ƽ̨',104,0,N'feixin')

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

INSERT [mfp_user_point_log] ([id],[user_id],[user_name],[value],[remark],[add_time]) VALUES ( 1,1,N'test',10,N'ע�����ͻ���',N'2015/2/5 11:53:14')

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
[sex] [nvarchar]  (20) NULL DEFAULT ('����'),
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

INSERT [mfp_users] ([id],[group_id],[user_name],[password],[salt],[email],[sex],[mobile],[amount],[point],[exp],[status],[reg_time],[reg_ip]) VALUES ( 1,1,N'test',N'88D3D45E87261B5E',N'264048',N'ada@asfa.c',N'����',N'13800138000',1.00,10,0,0,N'2015/2/5 11:53:14',N'127.0.0.1')

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
