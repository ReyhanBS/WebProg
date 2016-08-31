 <%@ page import="java.sql.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");



Connection con = DriverManager.getConnection("jdbc:odbc:driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ="+application.getRealPath("dburger.accdb"));

Statement st = con.createStatement(1004, 1008);
// 1008 untuk bisa di edit, kalau 1007 itu cuma read only

%>