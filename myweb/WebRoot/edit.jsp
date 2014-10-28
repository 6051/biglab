<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <body>
    <h2><center>课程详细信息</center></h2>
    <center>
    <a href='categoryList.action'>返回主页</a>
    <s:form action="editCategory" namespace="/" method="post">
    <s:textfield name="c.name" label="课程名称"></s:textfield>
    <s:textfield name="c.author" label="教师名称"></s:textfield>
    <s:textfield name="c.arname" label="答疑地点"></s:textfield>
    <s:textfield name="c.arage" label="答疑时间月"></s:textfield>
    <s:textfield name="c.arcountry" label="答疑时间日"></s:textfield>
    <s:textfield name="c.Publisher" label="答疑时间时"></s:textfield>
    <s:textfield name="c.PublishDate" label="答疑时间分钟"></s:textfield>
    <s:textfield name="c.price" label="答疑人数"></s:textfield>
    <s:hidden name="c.id"></s:hidden>
    <s:submit value="确定修改"></s:submit>
    </s:form>
    </center>
  </body>
</html>
