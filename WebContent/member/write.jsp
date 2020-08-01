<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.dao.MemberDAO, member.bean.MemberDTO"%>
    
<%
request.setCharacterEncoding("UTF-8");
%>
<%--
String name = request.getParameter("name");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String gender = request.getParameter("gender");
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");
String tel1 = request.getParameter("tel1");
String tel2 = request.getParameter("tel2");
String tel3 = request.getParameter("tel3");
String zipcode = request.getParameter("zipcode");
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");--%>

<%--MemberDTO memberDTO = new MemberDTO();
memberDTO.setName(name);
memberDTO.setId(id);
memberDTO.setPwd(pwd);
memberDTO.setGender(gender);
memberDTO.setEmail1(email1);
memberDTO.setEmail2(email2);
memberDTO.setTel1(tel1);
memberDTO.setTel2(tel2);
memberDTO.setTel3(tel3);
memberDTO.setZipcode(zipcode);
memberDTO.setAddr1(addr1);
memberDTO.setAddr2(addr2);
--%>

<jsp:useBean id="memberDTO" class="member.bean.MemberDTO" scope="session"/>
<jsp:useBean id="memberDAO" class="member.dao.MemberDAO"/>
<jsp:setProperty name="memberDTO" property="*"/>
<!-- scope 생략 가능 -->
<%
//MemberDAO memberDAO = MemberDAO.getInstance();
int su = memberDAO.write(memberDTO);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
<%if(su==0) {%>
이미 존재하는 아이디입니다.
<%}else{ %>
가입 성공
<%} %>
<a href='http://localhost:8080/memberjsp/member/loginForm.jsp'>로그인</a>
</body>
</html>