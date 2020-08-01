<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
String x =request.getParameter("x");
String y =request.getParameter("y");
int result = Integer.parseInt(x)*Integer.parseInt(y);
--%>

<jsp:useBean id="dataDTO" class="exam.bean.DataDTO" scope="session"/>
<%--//page 현재 페이지에서만 사용 --%>
<%-- session 다른 페이지에서도 사용 가능--%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곱구하기</title>
</head>
<body>


<jsp:getProperty property="x" name="dataDTO"/> *
<jsp:getProperty property="y" name="dataDTO"/> =
<%=dataDTO.getX()*dataDTO.getY() %><br>
</body>
<script type="text/javascript">

</script>
</html>