<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <body>
    <h2><center>添加课程</center></h2>
    <center>
    <a href='index.jsp'>返回主页</a>
    <s:form action="addCategory" namespace="/" method="post">
    <s:textfield name="id" label="ISBN"></s:textfield>
    <s:textfield name="c.name" label="课程名称"></s:textfield>
    <s:textfield name="c.author" label="教师姓名"></s:textfield>
    <s:textfield name="c.arname" label="答疑地点"></s:textfield>
    <s:textfield name="c.arage" label="答疑时间月"></s:textfield>
    <s:textfield name="c.arcountry" label="答疑时间日"></s:textfield>
    <s:textfield name="c.Publisher" label="答疑时间时"></s:textfield>
    <s:textfield name="c.PublishDate" label="答疑时间分钟"></s:textfield>
    <s:textfield name="c.price" label="答疑人数"></s:textfield>
    <s:submit value="确定"></s:submit>
    </s:form>
    </center>
  </body>
</html>
