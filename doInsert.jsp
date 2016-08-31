<%@include file = "connect.jsp"%>

<%
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String calories = request.getParameter("calories");
	String stock = request.getParameter("stock");
	//String gambar = request.getParameter("gambar");
	//String file_image = "image/";
    //String upload_dir = "image/";  
	
		String query = "INSERT INTO MsProduct (Name,Price,Calories,Stock) VALUES('"+ name +"','"+ price +"',"+calories+","+stock+")";
		st.execute(query);
		con.close();
		response.sendRedirect("productadmin.jsp");
	
	
%>