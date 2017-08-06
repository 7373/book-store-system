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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>查看订单</title>
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
<%
	request.setCharacterEncoding("gb2312");
%>

<div id="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.htm"><img src="images/logo.gif" alt="" title=""
				border="0" /></a>
		</div>
		<div id="menu">
			<ul>
				<li class="selected"><a href="Login.jsp">首页</a></li>
				<li class="selected"><a href="admin.jsp">管理员</a></li>
				<li class="selected"><a href="Register.jsp">注册</a></li>
				<li class="selected"><a href="book.jsp">图书浏览</a></li>
			</ul>
		</div>
	</div>

	<p>&nbsp;</p>
	<%
		if (ActionContext.getContext().getSession().get("result2") != null) {
	%>
	<h1 align=center>
		<%=ActionContext.getContext().getSession()
						.get("result2")%>
	</h1>
	<%
		}
	%><br>
	<TABLE cellSpacing=0 cellPadding=0 width=676 align=center border=0>
		<TBODY>
			<TR>
				<TD width=763 bgColor=#55808f>
					<TABLE cellSpacing=1 cellPadding=1 border=0>
						<TBODY>
							<TR>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>订单编号</FONT>
								</B></TD>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>订单用户</FONT>
								</B></TD>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>图书书名</FONT>
								</B></TD>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>订购数量</FONT>
								</B></TD>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>收货姓名</FONT></B></TD>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>收货地址</FONT></B></TD>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>联系电话</FONT></B></TD>
								<TD align=center width=80><B> <FONT class=p9
										color=#ffffff>是否发货</FONT></B></TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD width=763 bgColor=#c0d0c5>
					<TABLE cellSpacing=1 cellPadding=1 border=0>
						<TBODY>
							<%
								List<Orders> ems = (List<Orders>) ActionContext.getContext()
										.getSession().get("cart");
							%>
							<%
								if(ems!=null)for (Orders em : ems) {
							%>


							<TR>
								<TD align=center width=80><%=em.getId()%></FONT></TD>
								<TD class=p9 align=center width=80><%=em.getUsername()%></TD>
								<TD class=p9 align=center width=80><%=em.getBookname()%></TD>
								<TD class=p9 align=center width=80><%=em.getCount()%></TD>
								<TD class=p9 align=center width=80><%=em.getBuyer()%></TD>
								<TD class=p9 align=center width=80><%=em.getAddress()%></TD>
								<TD class=p9 align=right width=80><%=em.getPhone()%></TD>
								<TD class=p9 align=right width=80><%=em.getState()%></TD>


								<TD align=center width=80>&nbsp;</TD>
							</TR>

							<%
								}
							%>



						</TBODY>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD height=7 width="763"></TD>
			</TR>
			<TR>
				<TD width=763>
					<TABLE width=763 align=right>
						<TBODY>
							
							<TR>
								<TD class=p9 align=middle><FONT class=p2>您可以联系管理员，来修改发货信息</B>
								</FONT></TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD height=7 width="763"></TD>
			</TR>
			<TR>
				<TD height=7 width="763"></TD>
			</TR>
			<TR>
				<TD vAlign=bottom align=middle width=763><A href="customer.jsp"><U><FONT
							class=normal color=blue>返回主页面 </FONT></U></A></TD>
			</TR>
			</FORM>
		</TBODY>
	</TABLE>
	<TABLE width=763 align=center border=0>
		<TBODY>
			<TR>
				<TD>
					<HR width="90%" SIZE=1>
				</TD>
			</TR>
			<TR>
				<TD>
					<p align="center">
				</TD>
			</TR>
		</TBODY>
	</TABLE>


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
