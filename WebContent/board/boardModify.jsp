<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.bean.BoardDTO"%>
<jsp:useBean id="boardDAO" class="board.dao.BoardDAO"></jsp:useBean>

<%
request.setCharacterEncoding("UTF-8");

String pg = (String)session.getAttribute("memPg");
String seq = request.getParameter("seq");
String subject = request.getParameter("subject");
String content = request.getParameter("content");
System.out.println(pg);
System.out.println(seq);

System.out.println(subject);
System.out.println(content);

BoardDTO boardDTO=null;
boardDTO = boardDAO.selectList(Integer.parseInt(seq));
boardDTO.setSubject(subject);
boardDTO.setContent(content);
boardDAO.boardUpdate(boardDTO, Integer.parseInt(seq));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정완료</title>
</head>
<body>
<table>
수정완료
<input type="button" value="목록" onclick="location.href='boardList.jsp?pg=<%=pg%>'">
</table>
</body>

<script type="text/javascript">

</script>
</html>