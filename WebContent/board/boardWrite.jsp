<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="board.dao.BoardDAO, board.bean.BoardDTO, java.util.*"%>
    
<jsp:useBean id="boardDAO" class="board.dao.BoardDAO"/>
 
    
<%
request.setCharacterEncoding("UTF-8");

String subject = request.getParameter("subject");
String content = request.getParameter("content");

String name=null;
String id=null;
String email=null;
name = (String)session.getAttribute("memName");
id = (String)session.getAttribute("memId"); 
email = (String)session.getAttribute("memEmail");

//Map<key, Value> map = new HashMap<>();
Map<String, String> map = new HashMap<String, String>();
map.put("id",id);
map.put("name",name);
map.put("email",email);
map.put("subject",subject);
map.put("content",content);

boardDAO.write(map); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성 성공</title>
</head>
<body>
<a href="../main/index.jsp">메인화면</a>
</body>
<script type="text/javascript">
window.onload=function(){
	alert("글작성 완료");
}
</script>
</html>