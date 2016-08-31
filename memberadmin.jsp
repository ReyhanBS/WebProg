<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Member - Simply Burger 2015</title>
<style type="text/css">
body{
background: url('image/background.jpg') no-repeat scroll;
background-size: 100% 100%;
min-height: 700px; 
}
</style>
<%@include file="connect.jsp"%>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<p><img src="image/header.jpg" width="100%" height="365"/></p>

<%-- header sekaligus menu bar pada halaman ini --%>
<table width="100%" border="0">
  <tr>
    <th scope="col"><ul id="MenuBar1" class="MenuBarHorizontal">
          <li><a href="homeadmin.jsp">Home</a>              </li>
        <li><a href="profileadmin.jsp">Profile</a></li>
        <li><a href="memberadmin.jsp">Member</a>          </li>
        <li><a href="#">Transaction</a></li>
        <li><a href="productadmin.jsp">Product</a></li>
        <li><a href="#">Staff</a></li>
        <li><a href="#">Delivery Order</a></li>
        <li><a href="contactadmin.jsp">Contact Us</a></li>
    </ul>
    </th>
  </tr>
</table>

<br /><br />
<% String user=(String) session.getAttribute("login");  %>
<table width="258" border="0.5" align="right" bgcolor="#009966">
  <tr bgcolor="#CCCCCC">
    <td><strong><p align="center"><script src="jam.js"></script></p></strong></td>
  </tr>
  <tr>
  <td>
  <table border="0" align="center">
  <tr>
  <td width="216"><em>Welcome,
  <% out.print(user); %> | <a href="doLogout.jsp">Logout</a></em></td>
  </tr>
  <tr>
  <td><em>Online now :
  <%
		Integer curr = (Integer)application.getAttribute("userOn");
		out.print(curr);
  %> User(s)
  </em></td>
  </tr>
  </table>
  </td>
  </tr>
</table>

<br /> <br /><br /><br /><br /><br /> <br /> <br />

<%-- isi pada halaman ini --%>
<table width="312" border="1" align="center" bordercolor="#CCCCCC" bgcolor="#CCCCCC" class="table">
<thead>
					<tr bordercolor="#009966" bgcolor="#009966"><th>ID</th>
					<th>Username</th>
					<th>Email</th>
                    <th>Role</th>
                    <th>Update</th>
                    <th>Delete</th>
				<tbody>
                
                <%
				String q="SELECT * FROM MsUser";
				ResultSet rs = st.executeQuery(q);
				
				for(int i=1;rs.next();i++){
				%>
                
				<tr bgcolor="#CCCCCC">
                	<td><%=rs.getString("ID")%></td>
                  <td><%=rs.getString("Username")%></td>
                  <td><%=rs.getString("Email")%></td>
                  <td><%=rs.getString("Role")%></td>
                  <td align="center"><a href="updatemember.jsp">
                  <input name="update" type="button" value="Update"/> </a></td>	
           		  <td align="center"><a href="deletemember.jsp">
       		      <input name="delete" type="button" value="Delete"/> </a></td>    
				</tr>
                <%
				}
				 
				%>
				</tbody>
			</table>

<br /><br />

<%-- footer pada halaman ini --%>
<table width="100%" border="0">
  <tr>
   <td align="center" bgcolor="#CCCCCC"><strong><em>Copyright Simply Burger 2015</em></strong></td>
  </tr>
</table>        
               


<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>
</body>
</html>
