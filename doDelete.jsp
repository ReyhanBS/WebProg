<%@include file = "connect.jsp"%>

<%

	String id = request.getParameter("id");
	String query = "Delete from MsUser where ID="+id+"";
	st.execute(query);
	con.close();
	response.sendRedirect("memberadmin.jsp");	
	

%>