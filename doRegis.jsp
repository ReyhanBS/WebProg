<%@ include file="connect.jsp" %>
<%-- include file jsp nya --%>
<%
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 String email = request.getParameter("email");
 String gender = "";
 
 
 try
 {
	 if(username.length()<5 || username.length()>10)
	 {
		response.sendRedirect("regispage.jsp?err=Username must between 5 and 10 chars");
	 }
	 
	 if(password.length()<5 )
	 {
		response.sendRedirect("regispage.jsp?err=Password must be more than 5 char and alphanumeric"); 
	 }
	 
	
	for(int i=0; i<email.length()-1; i++)
	{
		if(email.charAt(i) == '.' && email.charAt(i+1) == '@')
		{
			break;
		}
		
		
	}
	 
	 if(gender!=null)
	 {
		 if(request.getParameter("gendermale").equals("male")) 
		 {
			 gender="male";
		 }
		 else if(request.getParameter("genderfemale").equals("female"))
		 {
			 gender="female";
		 }
		 else
		 {			 
			 response.sendRedirect("regispage.jsp?err=Choose male of female");
		 }
	 }
	 
	 
	
	 String query = "INSERT INTO MsUser(Username,Password,Gender,Email) VALUES('"+username+"','"+password+"','"+gender+"','"+email+"')";
	 
	 st.executeUpdate(query);
	 st.close();
	 con.close();
	 
	 //untuk redirect ke halaman register page
	 response.sendRedirect("regispage.jsp");
	 }
 catch(Exception e)
 {
}
%>