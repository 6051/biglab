<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <center>
    <h2>答疑信息</h2>
    <h5>点击课程以查看和修改详细信息</h5>
    <a href='add.jsp'>添加课程</a>
    <a href='search.jsp'>查询课程</a> 
    <table border="1">
    <tr bgcolor="#33CCFF">
    <td align="center">教师ID</td>
    <td align="center">课程名称</td>
    <td align="center">教师</td>
    <td align="center">删除课程信息</td>
    </tr>
    <s:iterator value="categoryList">
    <tr>
    <td align="center"><s:property value="id" /></td>
    <td align="center"><a href='<s:url action="getCategory" namespace="/">
    <s:param name="id" value="id"></s:param>
    </s:url>'><s:property value="name" /></a></td>
    <td align="center"><s:property value="author" /></td>
     <td align="center"><a href='<s:url action="delCategory" namespace="/">
    <s:param name="id" value="id"></s:param>
    </s:url>'>删除</a></td>
    </tr>
    </s:iterator>
    <tr><td colspan="5" align="center">
    <a href='<s:url action="categoryList" namespace="/">
    <s:param name="p" value="1"></s:param>
    </s:url>'>首页</a>
    
    <a href='<s:url action="categoryList" namespace="/">
    <s:param name="p" value="%{p-1}"></s:param>
    </s:url>'>上一页</a>
    
    <a href='<s:url action="categoryList" namespace="/">
    <s:param name="p" value="%{p+1}"></s:param>
    </s:url>'>下一页</a>
    
    <a href='<s:url action="categoryList" namespace="/">
    <s:param name="p" value="lastPage"></s:param>
    </s:url>'>尾页</a>
    </td></tr>
    </table>
    </center>
  </body>
</html>

