<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<style type="text/css">
body{
background: url('image/background.jpg') no-repeat scroll; 
background-size: 100% 100%;
min-height: 700px; 
}
#burger
{
box-shadow:0px 0px 5px green;
}
</style>

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<p><img src="image/header.jpg" width="100%" height="356"/></p>

<%-- menu bar dari halaman ini --%>
<table width="100%" border="0">
  <tr>
    <th scope="col"><div align="left">
      <ul id="MenuBar1" class="MenuBarHorizontal">
            <li><a href="homeadmin.jsp">Home </a> </li>
            <li><a href="profileadmin.jsp">Profile</a></li>
            <li><a href="memberadmin.jsp">Member</a></li>
          <li><a href="#">Transaction</a></li>
          <li><a href="productadmin.jsp">Product</a></li>
          <li><a href="#">Staff</a></li>
          <li><a href="#">Delivered Order</a>            </li>
        <li><a href="contactadmin.jsp">Contact Us</a></li>
      </ul>
      </div></th>
  </tr>
</table>

<br /><br />
<% String user=(String) session.getAttribute("login");  %>
<%-- untuk memunculkan tanggal dan username yang sedang aktif di dalam sesi --%>
<table width="200" border="1" align="right">
  <tr>
    <td><p align="center"><script src="jam.js"></script></p></td>
  </tr>
  <tr>
  <td>
  <table border="0" align="center">
  <tr>
  <td>Welcome, <% out.print(user); %>  | <a href="doLogout.jsp">Logout</a></td>
  </tr>
  <tr>
  <td>Online now :
  <%
		Integer curr = (Integer)application.getAttribute("userOn");
		out.print(curr);
  %> User(s)
  </td>
  </tr>
  </table>
  </td>
  </tr>
</table>

<br /> <br /><br /><br /><br />

<%-- isi tengah dari halaman ini --%>

<table width="50%" border="1" align="center" bgcolor="#CCCCCC">
  <tr>
    <td align="center" bgcolor="#009966">Insert Menu</td>
  </tr>
  <tr>
    <td align="center">
    <div id="burger">
      <form method="post" action="doInsert.jsp">
					<table>
						<tbody>
							<tr>
								<td>Burger Name</td>
								<td><input type="text" name="name"></td>                             
							</tr>
                            <tr>
                             	<td>Burger Price</td>
								<td><input type="text" name="price"></td>
                            </tr>
                            <tr>
                            	<td>Burger Calories</td>
								<td><input type="text" name="calories"></td>
                            </tr>
                            <tr>
                            	<td>Stock</td>
								<td><input type="text" name="stock"></td>
                            </tr>
                             <!--<tr>
                            	<td>Image</td>
								<td><input type="file" name="gambar" /></td>
                            </tr>-->
						</tbody>
					</table>
					<input type="submit" value="Update">
		</form>
    </div>    </td>
  </tr>
</table>


<br /><br />

<%-- footer untuk halaman ini --%>
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
