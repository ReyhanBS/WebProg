<%@include file = "connect.jsp"%>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String role = request.getParameter("role");
	
	//kalau id kosong

		String query = "UPDATE MsUser SET Username = '"+name+"',Role = "+role+" WHERE ID = "+id ;
		//out.print(q);
		//exe query
		st.execute(query);
		//close connection
		con.close();
		response.sendRedirect("memberadmin.jsp");
	
	
%>