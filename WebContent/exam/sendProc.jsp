<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
request.setAttribute("apple","사과");
//request 영역 안에 데이터 넣음

response.sendRedirect("sendResult.jsp");
%>
