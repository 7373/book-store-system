<%@ page contentType="text/html; charset=UTF-8" language="java"
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
  <div  class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li class="selected"><a href="Login.jsp">首页</a></li>
        <li class="selected"><a href="admin.jsp">管理员</a></li>
		<li class="selected"><a href="book.jsp">图书浏览</a></li>
      </ul>
    </div>
  </div><s:form namespace="/bookshop" method="post" action="book_delete">
    <label>
      <span class="STYLE2" >请输入要删除的图书的名字：</span>  
      <input type="text" name="book.name" id="name" height="30"/>
    </label>
    <label>
    <input name="Submit" type="submit" class="STYLE2" value="删除" />
    </label>
  </s:form><%
  	if (ActionContext.getContext().getSession().get("result") != null) {
  %>
  <h1 align="center"><%=ActionContext.getContext().getSession().get("result")%></h1>
  
<%
  	List<Book> ems = (List<Book>) ActionContext.getContext()
  				.getSession().get("book");
  %><%
  	if (ems != null)
  			for (Book em : ems) {
  %>
<table width="596" height="215" border="0" align="center" bordercolor="#000000">
  <tr>
    <td colspan="2" rowspan="4"><img src="images/<%=em.getImage()%>.jpg" width="140" height="200" align="top" /></td>
    <td height="60" colspan="4"><div align="center"><span class="STYLE2"><%=em.getName()%></span> </div></td>
  </tr>
  <tr>
    <td width="66" height="50"><div align="center" class="STYLE3">作 者：</div></td>
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
    <td><div align="center"><%=em.getPrice()%></div></td>
     
  
  </tr>
</table><p>&nbsp;</p>
<%
	}
%> <%
 	}
 %>

<div >
    <div align="center">
      <table>
        <TR>
          <TD align=center>
            <a href="javascript:history.go(-1)" ><font size=5>返回 </a></font>          </TD>
     </TR>
       </table>
    </div>
<p>&nbsp;</p>
<p>&nbsp;</p>
 <div class="clear">
</div>
  <!--end of center content-->
<div class="footer">
  <div class="left_footer"><br />
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
