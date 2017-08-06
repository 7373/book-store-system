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
	session.setAttribute("username", ActionContext.getContext()
			.getSession().get("username"));
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>用户页面</title>
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

<body>

	<div id="wrap">
		<div class="header">
			<div class="logo">
				<a href="index.htm"><img src="images/logo.gif" alt="" title=""
					border="0" /></a>
			</div>
			<div id="menu">
				<ul>
					<li class="selected"><a href="Login.jsp">首页</a></li>
					<li class="selected"><a href="customer.jsp">用户</a></li>
					<li class="selected"><a href="Register.jsp">注册</a></li>
					<li class="selected"><a href="book.jsp">图书浏览</a></li>
					<li class="selected"><a href="Login.jsp">亲爱的用户<%=session.getAttribute("username")%>,欢迎登陆网上书店
					</a></li>
				</ul>
			</div>
		</div>

		<p>&nbsp;</p>
		<table width="897" height="313" border="0">
			<tr>
				<td width="437" height="160"><s:form namespace="/bookshop"
						method="post" action="book_list">
						<label>
							<div align="center">
								<s:hidden name="username" />
								<input name="Submit" type="submit" class="button" value="查看购买图书" />
							</div>
						</label>
					</s:form></td>
				<td width="444"><div align="center">
						<s:form namespace="/bookshop" method="post"
							action="order_cardlist">

							<input name="Submit2" type="submit" class="button"
								value="查看您的购物车" />
						</s:form>
					</div></td>
				<td width="444"><div align="center">
						<s:form namespace="/bookshop" method="post"
							action="order_orderlist">

							<input name="Submit2" type="submit" class="button"
								value="查看您的订单信息" />
						</s:form>
					</div></td>



			</tr>
			<tr>
				<s:form namespace="/bookshop" method="post" action="book_search">
					<td align="center">请输入您要搜索的书名：<br> <input type="text"
						class="SearchBar" name="searchname" /></td>
					<td height="145" colspan="2">
						<div align="center">
							<input name="Submit3" type="submit" class="button"
								value="搜索查看图书信息" />

						</div>
					</td>
				</s:form>
			</tr>
		</table>
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
<body>