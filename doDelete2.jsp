<%@include file = "connect.jsp"%>

<%

	String id = request.getParameter("id");
	String query = "Delete from MsProduct where ID="+id+"";
	st.execute(query);
	con.close();
	response.sendRedirect("productadmin.jsp");	
	

%>