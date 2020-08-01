<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.dao.MemberDAO, 
    							java.util.ArrayList,
    							member.bean.ZipcodeDTO"%>

<%
request.setCharacterEncoding("UTF-8");

String sido = request.getParameter("sido");
String sigungu = request.getParameter("sigungu");
String roadname = request.getParameter("roadname");

System.out.println(sido+","+sigungu+","+roadname);
//첫번 째 널일 때 값을 안 불러옴
ArrayList<ZipcodeDTO> list = new ArrayList<ZipcodeDTO>();
MemberDAO memberDAO = MemberDAO.getInstance();

if(sido!=null && roadname!=null){
	if(sido!="" && roadname!=null){
		list = memberDAO.getZipcodeList(sido,sigungu,roadname);
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소검색</title>
<link rel="stylesheet" href="../css/member.css"></link>
</head>
<body>
<form name = "checkPost" method="get"  action="checkPost.jsp">
<table border="1" cellpadding="5" cellspacing="0" width="100%">
 <tr>
	<td align="center">시도</td>
	<td><select name="sido">
		<option value=>시도선택</option>
		<option value="서울">서울</option>
		<option value="인천">인천</option>
		<option value="대전">대전</option>
		<option value="대구">대구</option>
		<option value="울산">울산</option>
		<option value="세종">세종</option>
		<option value="광주">광주</option>
		<option value="경기">경기</option>
		<option value="강원">강원</option>
		<option value="전남">전남</option>
		<option value="전북">전북</option>
		<option value="경남">경남</option>
		<option value="경북">경북</option>
		<option value="충남">충남</option>
		<option value="충북">충북</option>
		<option value="부산">부산</option>
		<option value="제주">제주</option>
	</select>
	</td>
	<td>시군구</td>
	<td><input type="text" width="10" name="sigungu"></td>

 </tr>
 	<td align="center">도로명</td>
 	<td colspan="3">
 	<input type="text" name = "roadname">
 	<input type="submit" value="검색">
 	</td>
 <tr>
	<td align="center">우편번호</td>
	<td colspan="3">주소</td>

 </tr>

</table>
<%if(list!=null){ %>
 <table border="3" cellpadding="5" cellspacing="0" width="100%">

 
 <%for(ZipcodeDTO ar : list){ 
 String address = ar.getSido()+" " 
 				+ar.getSigungu()+" "
 				+ar.getYubmyumdong()+" "
 				+ar.getRi()+" "
 				+ar.getRoadname()+" "
 				+ar.getBuildingname();%>
<tr>
<td align = "center"><%=ar.getZipcode() %></td>
<td colspan="3">
<a href="#" class='addressA' onclick="checkPostClose('<%=ar.getZipcode()%>','<%=address%>')">
<%=address%>
 </a>
 </td>
 </tr>
 <%}//for %>
 
 </table>
 
 <%} %>
 

</form>
</body>
 <script src="../js/member.js">

</script>
</html>