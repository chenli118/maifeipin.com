﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="MaiFeiPin.Web.UI.Page.usermessage_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="MaiFeiPin.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by maifeipinSystem Template Engine at 2015/2/5 18:03:23.
		本页面代码由maifeipinSystem模板引擎生成于 2015/2/5 18:03:23. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>查看站内短信息 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\" />\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	function ExecPostBack(checkValue) {\r\n		ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_delete',checkValue);\r\n    }\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n  <div class=\"header_inner\">\r\n    <h1 class=\"logo\">\r\n      <a title=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</a>\r\n    </h1>\r\n    <ul class=\"nav\">\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">回收新闻</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">热门商品</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">信息发布</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">市场行情</a></li>\r\n    </ul>\r\n    <div class=\"search\">\r\n      <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" x-webkit-speech=\"\" autofocus=\"\" placeholder=\"输入回车搜索\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" />\r\n      <input class=\"submit\" type=\"submit\" value=\"搜索\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" />\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        $.ajax({\r\n            type: \"POST\",\r\n            url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n            dataType: \"json\",\r\n            timeout: 20000,\r\n            success: function (data, textStatus) {\r\n                if (data.status == 1) {\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>');\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a></li>');\r\n                } else {\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a></li>');\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>');\r\n                }\r\n            }\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n    <ul id=\"menu\" class=\"menu\">\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">购物车<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
	templateBuilder.Append("script>件</a></li>\r\n    </ul>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left180\">\r\n    <!--Sidebar-->\r\n    ");

	templateBuilder.Append("    <div class=\"sidebar\">\r\n      <h3>交易管理</h3>\r\n      <ul>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\">交易订单</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userorder","close"));

	templateBuilder.Append("\">已关闭订单</a></li>\r\n      </ul>\r\n      <h3>账户管理</h3>\r\n      <ul>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户余额</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">我的积分</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">站内短信</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","invite"));

	templateBuilder.Append("\">邀请码</a></li>\r\n      </ul>\r\n      <h3>基本资料</h3>\r\n      <ul>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","proinfo"));

	templateBuilder.Append("\">个人资料</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","password"));

	templateBuilder.Append("\">修改密码</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出登录</a></li>\r\n      </ul>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/Sidebar-->\r\n  </div>\r\n  \r\n  <div class=\"right757\">\r\n    <h1 class=\"main_tit\">\r\n      <span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">管理首页</a></span>\r\n      站内短信\r\n      <strong>Message</strong>\r\n    </h1>\r\n    <div class=\"tab_head\">\r\n      <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n      <ul class=\"tabs\">\r\n        ");
	if (model.type==2)
	{

	templateBuilder.Append("\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a></li>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a></li>\r\n        ");
	}	//end for if

	if (model.type==1)
	{

	templateBuilder.Append("\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a></li>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a></li>\r\n        ");
	}	//end for if

	if (model.type==3)
	{

	templateBuilder.Append("\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a></li>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <div class=\"line10\"></div>\r\n    <div class=\"ntitle\">\r\n      <h1 class=\"ntitle-tit\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n      <p class=\"ntitle-info\">\r\n          <span class=\"time\">");
	templateBuilder.Append(Utils.ObjectToStr(model.post_time));
	templateBuilder.Append("</span>\r\n          ");
	if (model.type==2)
	{

	templateBuilder.Append("\r\n          发件人：");
	templateBuilder.Append(Utils.ObjectToStr(model.post_user_name));
	templateBuilder.Append("&nbsp;&nbsp;&nbsp;\r\n          ");
	}
	else if (model.type==3)
	{

	templateBuilder.Append("\r\n          收件人：");
	templateBuilder.Append(Utils.ObjectToStr(model.accept_user_name));
	templateBuilder.Append("&nbsp;&nbsp;&nbsp;\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n      </p>\r\n    </div>\r\n    <div class=\"entry\">\r\n      ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n    </div>\r\n\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer_inner\">\r\n    <div class=\"foot_nav\">\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首 页</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于我们</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">回收新闻</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">热门商品</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">市场行情</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">信息发布</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>|\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <div class=\"copyright\">\r\n      <p>本站源码 <a href=\"http://www.github.com/maifeipin/download.html\"> </a>Rebuild base DTCMS  京ICP备11040974号 版本：V");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append("  . &nbsp; </p>\r\n    </div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
