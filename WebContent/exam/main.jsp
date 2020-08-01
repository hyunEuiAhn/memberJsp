<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>** include directive **</h3>

<%@ include file="today.jsp" %><%--이미 만들어 놓은 파일을 그대로 가져다 사용 
								파일을 포함 시키고 컴파일을 한다.--%>

<h3>** include JSP tag **</h3>
<jsp:include page="image.jsp"/><%--같은include지만 태그를 사용 
								파일을 각각 컴파일 한 다음에 합친다.
								따로따로 변수를 관리해서 더 많이 사용함--%>
<%--String name="홍길동"; 같은 이름이 중복돼서 error발 --%>
<%String name="홍길동"; %>
main.jsp name=<%=name %>
<br>

<h3>** 3초 뒤 페이지 이동 **</h3>
<% response.setHeader("Refresh", "3; url=input.jsp"); %>

</body>
</html>