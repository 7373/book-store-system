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

<base href="<%=basePath%>" />
<script language="JavaScript" type="text/javascript">
	function custCheck() {

		var custName = document.getElementById("userName");
		var pass = document.getElementById("password");

		if (custName.value == "" || pass.value == "") {
			alert("输入的账号和密码均不能为空!");
			return false;
		}

	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>先锋书店-主页</title>
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
				<li class="selected"><a href="books.jsp">图书浏览</a></li>
			</ul>
		</div>
	</div>
	<body>
		<div align="center">
			<hr width="80%" color="white"></hr>
			<p align="center"></p>
		</div>
		<center>

			<table width="763" border="0" align="center" height="80%">


				<tr>
					<td width="30%" style="border-right:1px solid black" align="center"
						valign="top"><s:form onSubmit="return custCheck()"
							action="loginAction" namespace="/bookshop" method="post">
          用户类型：
            <select name="usertype">
								<option value="" selected="selected">----选 择 用 户----</option>
								<option value="customer">注 册 用 户</option>
								<option value="manager">管理员用户</option>
							</select>
							<br> 账号：<input name="username" type="text" size="15"
								id="userName">
							<br> 密码：<input name="password" type="password" id="password"
								size="15">
							<br>
							<input type="submit" value="登 录">
							<input type="reset" value="取 消">
							<br>
							<a href="Register.jsp">还没注册</a>
						</s:form> <br> <br> <s:form action="book_search"
							namespace="/bookshop" method="post">
							<img src="images\ti2.gif">
							<br>
							<input type="text" name="searchname" size="15" class="SearchBar">
							<input type="submit" value="搜索">
						</s:form></td>


					<td width="70%" valign="top" align=center>
						<table cellspacing="10" border="0" valign="top">
							<tr>
								<td><font face="隶书" size="+2" color="red"> <a
										href="books.jsp">更多图书>></font></td>
							</tr>
							<tr>
								<td>
									<TABLE cellSpacing="0" cellPadding="10" width="760" border="0"
										align=centervalign="top">
										<TR>
											<TD>
												<table border="0">
													<tr>
														<td><img src="images/1.jpg" width=150 height="200""></td>
													</tr>
													<tr>
														<td><font face=微软细黑 size=4 color=blue>成功没有偶然-李嘉诚</font></td>
													</tr>
													<tr>
														<td></td>
													</tr>
												</table>
											</TD>
											<br>
											<TD>
												<table>
													<tr>
														<td><img src="images/2.jpg" width=150 height="200"></td>
													</tr>
													<tr>
														<td><font face=微软细黑 size=4 color=blue>
																好吗？好的-大冰</font></td>
													</tr>
													<tr>
														<td></td>
													</tr>
												</table>
											</TD>
											<br>
											<TD>
												<table>
													<tr>
														<td><img src="images/3.jpg" width=150 height="200"></td>
													</tr>
													<tr>
														<td><font face=微软细黑 size=4 color=blue>愿你的青春不负梦想-俞洪敏</font></td>
													</tr>
													<tr>
														<td></td>
													</tr>
												</table>
											</TD>
											<br>
										</TR>
										<TR>
											<TD>
												<table>
													<tr>
														<td><img src="images/4.jpg" width=150 height="200"></td>
													</tr>
													<tr>
														<td><font face=微软细黑 size=4 color=blue>我只想一个人住在你心里-孟瑞</font></td>
													</tr>
													<tr>
														<td></td>
													</tr>
												</table>
											</TD>
											<TD>
												<table>
													<tr>
														<td><img src="images/5.jpg" width=150 height="200"></td>
													</tr>
													<tr>
														<td><font face=微软细黑 size=4 color=blue>数据库原理与应用-黄德才</font></td>
													</tr>
													<tr>
														<td></td>
													</tr>
												</table>
											</TD>
											<TD>
												<table>
													<tr>
														<td><img src="images/6.jpg" width=150 height="200"></td>
													</tr>
													<tr>
														<td><font face=微软细黑 size=4 color=blue>我的人生哲学-马云</font></td>
													</tr>
													<tr>
														<td></td>
													</tr>
												</table>
											</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			</form>

			<div align="center">
				<hr width="80%" color="blue"></hr>
				<p align="center"></p>
			</div>

		</center>
		<%
			//String id = "1";
			//session.setAttribute("custname", id);
		%>
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
