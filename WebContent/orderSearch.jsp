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
<title>用户购物车</title>
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
				<li class="selected"><a href="customer.jsp">用户</a></li>
				<li class="selected"><a href="Register.jsp">注册</a></li>
				<li class="selected"><a href="book.jsp">图书浏览</a></li>
				<li class="selected"><a href="Login.jsp">亲爱的用户<%=session.getAttribute("username")%>,欢迎登陆网上书店
				</a></li>
			</ul>
		</div>
	</div>

	<TABLE cellSpacing=0 cellPadding=0 width=676 align=center border=0>
		<TBODY>
			<TR>
				<TD width=763 bgColor=#55808f>
					<TABLE cellSpacing=1 cellPadding=1 border=0>
						<h1 align=center>购物车</h1>
						<TBODY>
							<TR>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>宝贝编号</FONT>
								</B></TD>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>图书书名</FONT>
								</B></TD>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>订购数量</FONT>
								</B></TD>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>书本单价</FONT></B></TD>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>订单总价</FONT></B></TD>
								<TD align=center width=100><B> <FONT class=p9
										color=#ffffff>购买用户</FONT></B></TD>
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
								List<Shoppingcart> iter = (List<Shoppingcart>) ActionContext
										.getContext().getSession().get("iter");
							%>
							<%
								for (Shoppingcart book : iter) {
									//Shoppingcart book=(Shoppingcart)iter.next();
							%>



							<TR>

								<TD align=center width=100><%=book.getShoppingcartid()%></FONT></TD>
								<TD class=p9 align=center width=100><%=book.getBookname()%></TD>
								<TD class=p9 align=center width=100><%=book.getCount()%></TD>
								<TD class=p9 align=center width=100><%=book.getPrice()%></TD>
								<TD class=p9 align=center width=100><%=book.getCount() * (Integer.parseInt(book.getPrice()))%>元</TD>
								<TD class=p9 align=center width=100><%=book.getUsername()%></TD>

								<!-- <TD align=center width=80>
		  <A href="delOrder.do?orderId=1"><FONT class=p9 
            color=blue><U>取消订单</U></FONT></A> </TD>
          <TD align=center width=80>&nbsp; </TD>-->
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
							<s:form namesapce="/bookshop" action="order_cardpay">
								<tr>
									<td>收货人姓名：<input type="text" name="buyer" size="5">收货地址：<input
										type="text" name="address">联系方式：<input type="text"
										name="counts"><input type="submit" value="确认购买"></td>
								</tr>
							</s:form>
							<s:form namesapce="/bookshop" action="order_carddelete">
								<tr>
									<td>宝贝编号：<input name="id" size="5"><input
										type="submit" value="删除宝贝"></td>
								</tr>
							</s:form>
							<TR>
								<TD class=p9 align=middle><FONT class=p2>如您不再需要该宝贝，输入编号删除即可。</B>
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
				<TD vAlign=bottom align=middle width=763><A href="customer.jsp"><U><FONT
							class=normal color=blue>返回购书 </FONT></U></A></TD>
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

<body>&nbsp;
</body>
</html>
