<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="connect.db.ConnectMySQL"%>
<%@ page import="org.json.simple.*"%>

<%
	ConnectMySQL connect = ConnectMySQL.getInstance();
	request.setCharacterEncoding("UTF-8");
	String DATESTAMP = request.getParameter("DATESTAMP");

	System.out.println(DATESTAMP);

	String returns = connect.readDiary(DATESTAMP);

	String test = returns;

	System.out.println(test);

	out.clear();
	out.print(returns);
	out.flush();
%>