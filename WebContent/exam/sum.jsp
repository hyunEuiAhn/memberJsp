<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 
String x =request.getParameter("x");
String y =request.getParameter("y");
int result = Integer.parseInt(x)+Integer.parseInt(y);
--%>

<%-- DataDTO datadto = new DataDTO(); 
dataDTO.setX();

--%>


<jsp:useBean id="dataDTO" class="exam.bean.DataDTO" scope="session"/>
<jsp:setProperty name="dataDTO" property="x"/>
<jsp:setProperty name="dataDTO" property="y"/>

<!--  /jsp:useBean 마지막에 /붙이면 닫는 역할-->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합구하기</title>
</head>
<body>
<form name = "sum" action="mul.jsp">

<jsp:getProperty property="x" name="dataDTO"/> +
<jsp:getProperty property="y" name="dataDTO"/> =
<%= dataDTO.getX()+dataDTO.getY() %><br><br>
<br>
<input type="submit" value="곱구하기">
</form>
</body>
</html>