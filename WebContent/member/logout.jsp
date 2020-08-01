<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%

/* Cookie[] ar = request.getCookies();
if(ar!=null){
	for(int i=0; i<ar.length; i++){
		if(ar[i].getName().equals("memname")){
			ar[i].setMaxAge(0);//쿠키 삭제
			response.addCookie(ar[i]);//클라이언트에게 보내기
		}
		if(ar[i].getName().equals("memid")){
			ar[i].setMaxAge(0);
			response.addCookie(ar[i]);
		}
	}
} */

session.removeAttribute("memName");
session.removeAttribute("memId");

session.invalidate();//무효화 (session모두 종료)


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>

<script type="text/javascript">
window.onload=function(){
	alert("로그아웃");
	location.href='../main/index.jsp';
}
</script>
</html>