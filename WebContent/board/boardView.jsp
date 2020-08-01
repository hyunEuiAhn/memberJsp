<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.bean.BoardDTO"%>
<jsp:useBean id="boardDAO" class="board.dao.BoardDAO"/>

<% 
int seq = Integer.parseInt(request.getParameter("seq"));
String id = (String)session.getAttribute("memId");
String pg = (String)session.getAttribute("memPg");

BoardDTO boardDTO = boardDAO.selectList(seq);
boardDAO.hitUpdate(boardDTO, seq);
String writeId = boardDTO.getId();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내용</title>
</head>
<body>
<form name="boardForm" action="boardModifyForm.jsp?seq=<%=seq%>">
<table border="1" width="300" frame="hsides" rules="rows">
	<tr>
		<th>제목</th>
		<td align="center" colspan="6"><input type="text" name="subject" value="<%=boardDTO.getSubject() %>" readonly="readonly"></td>
	</tr>
	<tr>
		<th>글번호</th>
		<td><%=boardDTO.getSeq() %></td>
		<th>작성자</th>
		<td><%=boardDTO.getId() %></td>
		<th>조회수</th>
		<td><%=boardDTO.getHit() %></td>
	</tr>
	<tr>
		<th>내용</th>
		<td align="center" colspan="6"><textArea name = "content" readonly="readonly"><%=boardDTO.getContent()%></textArea></td>
	</tr>
	<tr>
		<td align="center" colspan="6">
		<input type="button" value="목록" onclick="backList('<%=pg%>')">
<%if(id.equals(writeId)){ %>
		<input type="submit" value="글수정">
		<input type="button" value="글삭제">
		<input name = "pg" type="hidden" value=<%=pg %>>
		<input name="seq" type="hidden" value=<%=seq %>>
<%}%>
		</td>
	</tr>
</table>
</form>
</body>
<script type="text/javascript">
function backList(pg){
	location.href="boardList.jsp?pg="+pg;
}
</script>
</html>