<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*,java.util.*,com.opensymphony.xwork2.ActionContext,com.bookshop.entity.*,com.bookshop.action.*,javax.servlet.*,javax.servlet.http.*"%>


<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>普通搜索</title>
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

.STYLE5 {
	color: #000000
}

.STYLE6 {
	color: #FF9933
}
-->
</style>
</head>

<body>
	<div id="wrap">
		<div class="header">
			<div class="logo">
				<a href="login.jsp"><img src="images/logo.gif" alt="" title=""
					border="0" /></a>
			</div>
			<div id="menu">
				<ul>
					<li class="selected"><a href="Login.jsp">首页</a></li>
					<li class="selected"><a href="Register.jsp">注册</a></li>
					<li class="selected"><a href="book.jsp">图书浏览</a></li>
				</ul>
			</div>
		</div>

		<%
			Book book = (Book) ActionContext.getContext().getSession()
					.get("book");
			if (book != null) {
		%><br> <br>
		<table width="596" height="259" border="0" align="center"
			bordercolor="#000000">
			<tr>
				<td colspan="2" rowspan="4"><img
					src="images/<%=book.getImage()%>.jpg" width="140" height="200"
					align="top" /></td>
				<td height="60" colspan="4"><div align="center">
						<span class="STYLE2"><%=book.getName()%></span>
					</div></td>
			</tr>
			<tr>
				<td width="66" height="57"><div align="center" class="STYLE3">作
						者：</div></td>
				<td width="131"><div align="center"><%=book.getWriter()%></div></td>
				<td width="95"><div align="center" class="STYLE3">ISBN号</div></td>
				<td width="130"><div align="center"><%=book.getIsbn()%></div></td>
			</tr>
			<tr>
				<td height="69"><div align="center" class="STYLE3">出版社：</div></td>
				<td><div align="center"><%=book.getPublish()%></div></td>
				<td><div align="center" class="STYLE3">出版日期：</div></td>
				<td><div align="center"><%=book.getPubdate()%></div></td>
			</tr>
			<tr>
				<td height="63"><div align="center" class="STYLE3">价 格：</div></td>
				<td><div align="center"><%=book.getPrice()%>元
					</div></td>
				<td height="63" colspan=2></td>
			</tr>
		</table>
		<div align="center">
			<table width="593" border="0" class="button">
				<tr>
					<td height="29"><div align="center" class="STYLE6">简介</div></td>
				</tr>
				<tr>
					<td width="537" height="78">
						<p>
							&nbsp;&nbsp;<span class="STYLE5"><%=book.getContents()%></span>
						</p>
					</td>
				</tr>
			</table>
			<%
				}
			%>
		</div>
		<p>&nbsp;</p>

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
