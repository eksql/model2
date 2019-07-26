<%@ page import = "java.sql.Connection" %>
<%@ page import = "javax.sql.DataSource" %>
<%@ page import = "javax.naming.InitialContext" %>
<%@ page import = "javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP test</title>
</head>
<body>
	<h1>DBCP Test</h1>
	<%
	Context initContext = new InitialContext();
	Context envContext  = (Context)initContext.lookup("java:/comp/env");
	DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	Connection conn = ds.getConnection();
	//etc.
	 out.print("양단비 DBCP 연동 성공!!!!!!!!!!!!!!!!!!!!!");
	%>
</body>
</html>