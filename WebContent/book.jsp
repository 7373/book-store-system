<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*,java.util.*,com.bookshop.entity.*,com.opensymphony.xwork2.ActionContext,com.bookshop.action.*,com.bookshop.DAO.*,com.bookshop.DAOservice.*,javax.servlet.*,javax.servlet.http.*"
	errorPage=""%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>图书浏览</title>
<link rel="stylesheet" type="text/css" href="style.css" />



<style type="text/css">
<!--
.STYLE2 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 24px;
	color: #000000;
}

.STYLE3 {
	color: #999999
}

.STYLE4 {
	font-size: 36px
}
-->
</style>
</head>


<div id="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.htm"><img src="images/logo.gif" alt="" title=""
				border="0" /></a>
		</div>
		<div id="menu">
			<ul>
				<li class="selected"><a href="Login.jsp">首页</a></li>
				<li class="selected"><a href="Register.jsp">注册</a></li>
				<li class="selected"><a href="book.jsp">图书浏览</a></li>
				<li class="selected"><a href="Login.jsp">亲爱的用户<%=session.getAttribute("username")%>,欢迎登陆网上书店
				</a></li>
			</ul>
		</div>
	</div>
	<%
		List<Book> ems = (List<Book>) ActionContext.getContext()
				.getSession().get("book");
	%>
	<%
		if (ems != null)
			for (Book em : ems) {
	%>
	<table width="596" height="215" border="0" align="center"
		bordercolor="#000000">
		<tr>
			<td colspan="2" rowspan="4"><img
				src="images/<%=em.getImage()%>.jpg" width="140" height="200"
				align="top" /></td>
			<td height="60" colspan="4"><div align="center">
					<span class="STYLE2"><%=em.getName()%></span>
				</div></td>
		</tr>
		<tr>
			<td width="66" height="50"><div align="center" class="STYLE3">作
					者：</div></td>
			<td width="131"><div align="center"><%=em.getWriter()%></div></td>
			<td width="95"><div align="center" class="STYLE3">ISBN号</div></td>
			<td width="130"><div align="center"><%=em.getIsbn()%></div></td>
		</tr>
		<tr>
			<td height="43"><div align="center" class="STYLE3">出版社：</div></td>
			<td><div align="center"><%=em.getPublish()%></div></td>
			<td><div align="center" class="STYLE3">出版日期：</div></td>
			<td><div align="center"><%=em.getPubdate()%></div></td>
		</tr>
		<tr>
			<td height="46"><div align="center" class="STYLE3">价 格：</div></td>
			<td><div align="center"><%=em.getPrice()%>元
				</div></td>

		</tr>
	</table>
	<p>&nbsp;</p>
	<%
		}
	%>
	<s:form namespace="/bookshop" action="order_addcart" method="post"
		align="center">
选择图书：<select name="bookname" id="bookname">
			<option value="好吗好的">好吗好的</option>
			<option value="数据库原理与应用">数据库原理与应用</option>
			<option value="我的人生哲学">我的人生哲学</option>
			<option value="我只想一个人住在我心里">我只想一个人住在我心里</option>
			<option value="成功没有偶然">成功没有偶然</option>
			<option value="愿你的青春不负梦想">愿你的青春不负梦想</option>
		</select>

		<!--<input type="text" name="bookname" id="bookname" size="10">/-->
			购买数量：<input type="text" name="counts" id="counts" size="10">
		<input type="submit" value="加入购物车">
	</s:form>
	<div>
		<div align="center">
			<table>
				<TR>
					<TD align=center><a href="javascript:history.go(-1)"><font
							size=5>返回 </a></font></TD>
				</TR>
			</table>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<div class="clear"></div>
		<!--end of center content-->
		<div class="footer">
			<div class="left_footer">
				<br />
			</div>
			<div class="right_footer">
				<a href="#">Copyright (C) 网上书店 2004-2017, All Rights Reserved</a> <a
					href="#">联系我们</a> <a href="#">人才招聘</a> <a href="#">合作协议</a>
			</div>
			<span class="left_footer"><img src="images/footer_logo.gif"
				alt="" title="" /></span>
		</div>
	</div>

	</body>
</html>
