<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
String pg = request.getParameter("pg");
String seq = request.getParameter("seq");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
</head>
<body>
<form name="boardUpdate" action="boardModify.jsp">
<table>
	<tr>
		<th>제목</th>
		<td><input type="text" name="subject" value="<%=subject %>"></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><textarea rows="" cols="" name="content"><%=content %></textarea></td>
	</tr>
	
	<tr>
		<td align="center" colspan="2">
			<input type="submit" value="글수정" >
			<input type="reset" value="다시작성">
			<input name = "seq" type="hidden" value=<%=seq%>>
		</td>
	</tr>
</table>
</form>
</body>

<script type="text/javascript">

</script>
</html>