<%
//untuk logout dari sebuah sesi dan mengurangi jumlah user online sebanyak 1 user
	session.removeAttribute("login");
	
	Integer userOn = 
	(Integer)application.getAttribute("userOn");
	
	userOn = userOn-1;
	application.setAttribute("userOn", userOn);
	// redirect ke halaman homepage 
	response.sendRedirect("homeguest.jsp");
%>