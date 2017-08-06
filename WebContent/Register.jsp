<%@ page pageEncoding="UTF-8" language="java" import="java.sql.*"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

<title>用户注册</title>
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
					<li class="selected"><a href="Register.jsp">注册</a></li>
					<li class="selected"><a href="book.jsp">图书浏览</a></li>
				</ul>
			</div>
		</div>

		<p>&nbsp;</p>
		<s:form action="RegisterAction" namespace="/bookshop" method="post">


			<table border="0" cellPadding="1" cellSpacing="1" width="763"
				align="center" height="343">
				<tr>
					<td align=center width="759" height="28"><br> <font
						class="heading2" COLOR="#336699" size=3 face="宋体"><b>网上书店用户注册页面</b></font></td>
				</tr>
				<tr>
					<td width="759" height="108">
						<table border="1" width="100%" bordercolor="#b0d8d8">
							<tr>
								<td width=100%>
									<table border="0" width="100%" bgcolor="#f1f8f8">
										<tr bgcolor="#b0d8d8" width=100%>
											<td align="left" colspan=4><b> <font
													color=midnightblue class="large" face="宋体" size="3">
														您的信息</font></b></td>
										</tr>
										<TR>
											<TD width=20% align="right"><strong> <font
													size="2" face="宋体" class="small" color="black">姓 名</font> <font
													color="firebrick" face="宋体" class="small" size="2">*</font></strong></TD>
											<TD width="25%"><font size="2" face="宋体" class="small">
													<input name="user.realname" id="realname" size="15"
													maxlength="32">
											</font></td>
										</TR>



										<TR>
											<TD align="right"><strong> <font color="black"
													size="2" face="宋体" class="small">地 址 </font> <font
													color="firebrick" size="2" face="宋体" class="small">*</font></strong></TD>
											<TD colspan=3><font size="2" face="宋体" class="small">
													<input name="user.address" id="address" size=45
													maxlength="64">
											</font></TD>
										</TR>

										<tr>
											<td align="right"><strong> <font color="black"
													size="2" face="宋体" class="small">Email</font> <font
													color="firebrick" size=2 face="宋体" class="small">*</font></strong></td>
											<td><font size="2" face="宋体" class="small"> <input
													name="user.email" id="email" size=22 maxlength="80"></font></td>
											<td align="right"><strong> <font color="black"
													size="2" face="宋体" class="small">电 话 </font> <font
													color="firebrick" size="2">*</font></strong></td>
											<td><font size="2" face="宋体" class="small"> <input
													size=18 maxLength="72" name="user.telephone" id="telephone"></font></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr>
					<td width="759" align="center" height="72">
						<table border="1" width="100%" bordercolor="#b0d8d8">
							<tr>
								<td width="100%" bgColor="#f1f8f8">
									<table border="0" width="100%">
										<tr bgcolor=#b0d8d8 width=100%>
											<td colspan=2 width=100%><b> <font
													color="midnightblue" size="3" face="宋体" class="large">
														请输入您的用户名和密码</font></b>
										</tr>
										<tr>
											<td align=right><strong> <font color="black"
													size="2" face="宋体" class="small">用户名</font></strong> <font
												color="firebrick" size="2" face="宋体" class="small">*</font></td>
											<td align=left><font size="2" face="宋体" class="small">
													<input id="username" maxLength="20" size=20
													name="user.username">
											</font> <font size="1" color="firebrick" face="宋体" class="small">(2-10个汉字或4-20个字母数字)</font></td>
										</tr>
										<tr>
											<td align=right><strong> <font color="black"
													size="2" face="宋体" class="small">密 码 </font></strong> <font
												color="firebrick" size="2" face="宋体" class="small">*</font></td>
											<td><font size="2"> <input type="password"
													name="user.password" id="password" size=20 maxlength="20"></font>
												<font size="1" color="firebrick" face="宋体" class="small">(2-10个汉字或4-20个字母数字)</font></td>
										</tr>

									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>


				<tr>
					<td align=center width="759" height="20"><font size="3"
						face="宋体" class="large"> <input type="submit" value="注 册"></font>
						&nbsp;&nbsp;&nbsp; <font size="3" face="宋体" class="large">
							<input type="reset" value="清 除">
					</font></td>
				</tr>

			</table>
		</s:form>

		<table width="763" border="0" align="center">
			<tr>
				<td>
					<hr size=1 width=90%>
				</td>
			</tr>
			<tr>
				<td height="20">
					<div align="center"></div>
				</td>
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