<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="java.sql.*" errorPage=""%>
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
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />


<title>添加图书</title>
<link rel="stylesheet" type="text/css" href="style.css" />


<style type="text/css">
<!--
.STYLE11 {
	font-family: "新宋体";
	font-size: 36px;
	font-weight: bold;
	color: #FF9900;
}

.STYLE16 {
	font-size: 16px;
	color: #999999;
}
-->
</style>
</head>

<body>
<div id="wrap">
  <div  class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li class="selected"><a href="Login.jsp">首页</a></li>
        <li class="selected"><a href="admin.jsp">管理员</a></li>
        <li class="selected"><a href="Register.jsp">注册</a></li>
		<li class="selected"><a href="book.jsp">图书浏览</a></li>
      </ul>
    </div>
  </div>

  <div align="center">
    <p class="STYLE5">&nbsp;</p>
    <s:form action="book_add" namespace="/bookshop" method="post">
    <table width="400" height="367" border="1" class="button">
      <tr>
        <td colspan="2"><div align="center"> <span class="STYLE11">添加图书</span></div></td>
      </tr>
      <tr>
        <td width="126"><span class="STYLE16">封面路径：</span></td>
        <td width="258"><input type="text" name="image" id="image" height=20></td>
      </tr>
      <tr>
        <td><span class="STYLE16">书名：</span></td>
        <td><input type="text" name="name" id="name" height=20></td>
      </tr>
      <tr>
        <td><span class="STYLE16">作者：</span></td>
        <td><input type="text" name="writer" id="writer" height=20></td>
      </tr>
      <tr>
        <td><span class="STYLE16">出版社：</span></td>
        <td><input type="text" name="publish" id="publish" height=20></td>
      </tr>
      <tr>
        <td><span class="STYLE16">出版时间：</span></td>
        <td><input type="text" name="pubdate" id="pubdate" height=20></td>
      </tr>
      <tr>
        <td><span class="STYLE16">ISBN号：</span></td>
        <td><input type="text" name="isbn" id="isbn" height=20></td>
      </tr>
      <tr>
        <td><span class="STYLE16">单价：</span></td>
        <td><input type="text" name="price" id="price" height=20></td>
      </tr>
      <tr>
        <td height="53"><span class="STYLE16">简介：</span></td>
        <td><input type="text" name="contents" id="contents" height=40 /></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input type="submit" value="提交信息">
          &nbsp;&nbsp;&nbsp;
           <input type="reset" value="重置信息">
        </div></td>
        </tr>
      </table>
    </s:form>
  </div>
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