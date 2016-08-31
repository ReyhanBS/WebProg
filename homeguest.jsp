<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Homepage - Simply Burger 2015</title>
<style type="text/css">
body{
background: url('image/background.jpg') no-repeat scroll;
background-size: 100% 100%;
min-height: 700px; 
}
.style6 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-style: italic;
}
</style>

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
</head>
<%-- header dan menu bar dari halaman ini --%>
<body>
<p><img src="image/header.jpg" width="100%" height="356"/></p>
<table width="100%" border="0">
  <tr>
   <th height="58" scope="col">
   <ul id="MenuBar1" class="MenuBarHorizontal">
     <li>
       <div align="center"><a href="homeguest.jsp">Home</a></div>
     </li>
     <li>
       <div align="center"><a href="registerguest.jsp">Register</a></div>
     </li>
     <li>
       <div align="center"><a href="productguest.jsp">Our Product</a></div>
     </li>
     <li>
       <div align="center"><a href="contactguest.jsp">Our Contact</a></div>
     </li>
   </ul>   </th>
    <!--<th width="30%" scope="col"><a href="homepage.jsp" class="style6">Home</a></th>
    <th width="30%" scope="col"><a href="regispage.jsp" class="style6">Register</a></th>
    <th width="30%" scope="col"><a href="prodhome.jsp" class="style6">Our Product</a></th>
    <th width="30%" scope="col"><a href="kontek.jsp" class="style6">Our Contact</a></th>
    -->
  </tr>
</table>
<br />
<%-- memunculkan tanggal dan hari --%>
<table width="208" border="0" align="right">
  <tr bgcolor="#CCCCCC">
    <td><strong><p align="center"><script src="jam.js"></script></p></strong></td>
  </tr>
</table>
<br /> 
 <br /><br />
<br /><br /><br />
<%-- memunculkan table login form nya --%>
<table width="30%" height="145" border="1" align="center" bgcolor="#CCCCCC">
  <tr bgcolor="#009933">
    <td height="23" align="center" bgcolor="#009966">Login</td>
  </tr>
    <tr>
    <td height="114">
    <form action="doLogin.jsp" method="post">
    <table width="316" align="center" border="0">
	<tr>
	<td width="145">Username</td>
    <td width="145"><input type="text" name="username" placeholder="Username"></td>
	</tr>
    <tr>
    <td>Password</td>
    <td><input type="password" name="password" placeholder="Password"></td>
   	</tr>
    <tr>
    <td colspan="2" align="center">
    <input id="rememberme" name="rememberme" value="remember" type="checkbox" />Remember me</td>
    </tr>
    <tr>
    <td colspan="2" align="center"	>
    <input type="submit" value="Login">
    </td>
    </tr>
    </table>
    </form>
    </td>
  </tr>
</table>
<br /><br />
<%-- footer dari halaman ini --%>
<table width="100%" border="0" align="center" bgcolor="#F0F0F0">
  <tr>
    <td height="40" align="center"><em>Copyright Simply Burger 2015</em></td>
  </tr>
</table>         
               


<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>
</body>
</html>
