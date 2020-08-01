<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
</head>
<body>
<form name="" method="post" enctype="multipart/form-data" action="fileUpload.jsp">
<table>
	<tr>
		<th>제목</th>
	
		<td><input name="subject" type="text" size="30" placeholder="제목 입력"> </td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><textarea name="content" rows="30" cols="50" placeholder="내용입력"></textarea></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<input type="file" name="upload1" size="50">
		</td>
		
	</tr>
	<tr>
		<td colspan="2">
		<input type="file" name="upload2" size="50">
		</td>
	</tr>
	
	<tr>
		<td align="center" colspan="2">
			<input type="submit" value="파일업로드">
			<input type="button" value="취소">
		</td>
	</tr>


</table>
</form>
</body>
</html>

