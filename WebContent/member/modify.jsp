<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "member.dao.MemberDAO, member.bean.MemberDTO"%>
    
<%
request.setCharacterEncoding("UTF-8");//get방식일 땐 요청 안해줘도 되지만 post일 때는 데이터를 통해서 넘어오기 때문에 인코딩이 필요하다

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
String addr2 = request.getParameter("addr2");

MemberDTO memberDTO = new MemberDTO();
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

MemberDAO memberDAO = MemberDAO.getInstance();
boolean check = memberDAO.update(memberDTO);
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 결과</title>
</head>
<body>
<%if(check){ %>
수정성공!!
<%}else{ %>
수정 실패
<%} %>
</body>
<script type="text/javascript">
window.onload=function(){
	if(<%=check%>){
		alert("회원정보수정성공")
	}else{
		alert("회원정보수정 실패")
	}
	location.href="loginForm.jsp";
}
</script>
</html>