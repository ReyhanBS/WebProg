<%@ include file="connect.jsp" %>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Integer userOn=0;
	
	if(username == null || password == null)
	{
		response.sendRedirect("homepage.jsp");
	}
	
	else
	{
		ResultSet rs = st.executeQuery("SELECT * FROM MsUser WHERE Username = '"+username+"' AND Password = '"+password+"' ");
			
		if(rs.next())
		{
			{
				Cookie cookie = new Cookie("login", "user#" + username);
				cookie.setMaxAge(60*60*24);
				response.addCookie(cookie);
				
				cookie = new Cookie("data_login", username + "#" + password);
				cookie.setMaxAge(60*60*24);
				response.addCookie(cookie);
				
				//mengecek apakah yg login admin atau member
				if(username.equals("admin") && password.equals("adminadmin"))
			{
			con.close();
			response.sendRedirect("homeadmin.jsp");
			}
			else
			{
				con.close();
				response.sendRedirect("homemember.jsp");
			}
			}
			
			session.setAttribute("login",username);
			
			
			if(application.getAttribute("userOn") == null)
			{
				userOn=0;
			}
			else
			{
				userOn= (Integer) application.getAttribute("userOn");
			}
			
			userOn= userOn+1;
			application.setAttribute("userOn", userOn);
					
		
		}
		else
		{
			response.sendRedirect("homeguest.jsp");
		}
		
	}

%>