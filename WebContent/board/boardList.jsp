<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.bean.BoardDTO,
    							 java.util.ArrayList,
    							 board.bean.BoardPaging"%>
<jsp:useBean id="boardDAO" class="board.dao.BoardDAO"/>
    
<%
int pg = Integer.parseInt(request.getParameter("pg"));
int endPg=pg*5;
int startPg=endPg-4;

ArrayList<BoardDTO> list = boardDAO.boardList(startPg, endPg);

int totalA = boardDAO.getTotal();
int totalP = (totalA-1)/5+1;

BoardPaging boardPaging = new BoardPaging();
boardPaging.setCurrentPage(pg);
boardPaging.setPageBlock(3);
boardPaging.setPageSize(5);
boardPaging.setTotalA(totalA);

boardPaging.makePagingHTML();

String name=null;
name = (String)session.getAttribute("memName");
session.setAttribute("memPg", request.getParameter("pg")); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
<style type="text/css">
#subjectA:link { color:black; text-decoration:none;}
#subjectA:visited{color:black;text-decoration:none;}
#subjectA:hover{color:red; text-decoration:underline;}
#subjectA:active{text-decoration:none;}
#paging{
	color : black;
	text-decoration:none;
}
#currentPaging{
	color:red;
	text-decoration:underline;
}


</style>
</head>
<body>
<form name = "boardWriteForm" action="">
<table width="500" border="1" cellpadding="3" frame="hsides" rules="rows">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>

<%if(list!=null){ %>
	<%for(BoardDTO dto : list){%>
		<tr>
			<td align="center"><%=dto.getSeq() %></td>
			<td align="center">
				<a href="javascript:void(0)" id="subjectA"  style="cursor: pointer;"  onclick="isLogin('<%=name%>',<%=dto.getSeq()%>)"><%=dto.getSubject()%></a>
			</td>
			<td align="center"><%=dto.getId() %></td>
			<td align="center"><%=dto.getLogtime() %></td>
			<td align="center"><%=dto.getHit() %></td>
		</tr>
	<%}%>
<%}%>
</table>

<br>
<div style="float: left; width:50px;">

<img src="../image/images.jpeg" width="50" height="50" 
onclick="location.href='../main/index.jsp'" style="cursor: pointer;">
</div>
<div style="float : left; text-align:center; width:650px;">
<%=boardPaging.getPagingHTML() %>
</div><br>
</form>

</body>
<script type="text/javascript">
function isLogin(name,seq){
	
	if(name == 'null'){
		alert("먼저 로그인 하세요");
	}else {
		location.href="boardView.jsp?seq="+seq;
	}
}
</script>
</html>
