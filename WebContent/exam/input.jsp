<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>input</title>
 </head>
 <body>
 <form name="input" method="get" action="sum.jsp">
  <table border = "1">
   <tr>
    <td width= "50" align="center"> x </td>

    <td><input type ="text" name="x" size="7"></td>
   </tr>
   <tr>
    <td width= "50" align="center"> y </td>

    <td><input type ="text" name="y" size = "7"></td>
   </tr>
   <tr>
	<td colspan = "2" align = "center">
	 <input type = "submit" value = "합구하기">
	 <input type = "reset" value = "취소">
	</td>
   </tr>
 
  </table>
  </form>
 </body>
</html>