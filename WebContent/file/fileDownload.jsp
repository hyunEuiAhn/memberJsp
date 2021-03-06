<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File" %>
<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.io.BufferedInputStream" %>
<%@ page import = "java.io.FileInputStream" %>
<%@ page import = "java.io.BufferedOutputStream" %>
    
<%
String fileName = request.getParameter("fileName");
System.out.println(fileName);
String realFolder = request.getServletContext().getRealPath("/storage");

//다운로드 받을 파일 생성
File file = new File(realFolder, fileName);
System.out.println(file);

fileName = URLEncoder.encode(fileName, "UTF-8").replace("+"," ");

response.setHeader("Content-Disposition","attachment; fileName="+fileName);
response.setHeader("Content-Length", file.length()+"");
%>

<!-- getOutputStream() has already been called for this response
JSP에서는 SERVLET으로 변환될 때 내부적으로 out 객체가 자동으로 생성하기 때문에 따라out 객체를
만들면 충돌이 일어나서 저런 메시지가 뜨는 것이다.
그래서 먼저 out을 초기화하고 생성하면 된다. -->

<%
out.clear();
out = pageContext.pushBody();

BufferedInputStream bis =
new BufferedInputStream(new FileInputStream(file));
BufferedOutputStream bos =
new BufferedOutputStream(response.getOutputStream());

int size = (int)file.length();
byte[] b = new byte[size];

bis.read(b, 0, size);
bos.write(b);

bis.close();
bos.close();

/*
int data;
while((data=bis.read())!=-1){
	bos.write((char)data);
}
	*/

%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>