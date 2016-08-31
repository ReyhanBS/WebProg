<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register - Simply Burger 2015</title>
<style type="text/css">
body{
background: url('image/background.jpg') no-repeat scroll;
background-size: 100% 100%;
min-height: 700px; 
}
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-style: italic;
}
</style>

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
</head>
<%-- menampilkan menu bar pada halaman ini --%>

<body>
<p><img src="image/header.jpg" width="100%" height="356"/></p>
<!--bagian menu bar -->
<table width="100%" border="0">
  <tr>
<th height="56" scope="col"><div align="left">
  <ul id="MenuBar1" class="MenuBarHorizontal">
        <li>
          <div align="center"><a href="homeguest.jsp">Menu</a> </div>
        </li>
        <li>
          <div align="center"><a href="registerpage.jsp">Register</a></div>
        </li>
        <li>
          <div align="center"><a href="productguest.jsp">Our Product</a> </div>
        </li>
        <li>
          <div align="center"><a href="contactguest.jsp">Our Contact</a></div>
        </li>
  </ul>
  </div></th>
  </tr>
</table>
<br />
<table width="200" border="0" align="right">
  <tr bgcolor="#CCCCCC">
    <td><strong><p align="center"><script src="jam.js"></script></p></strong></td>
  </tr>
</table>
<br /> <br /><br /><br /><br /><br />

<%-- menampilkan registration form --%>
<table width="42%" height="181" border="1" align="center" bgcolor="#CCCCCC">
  <tr>
    <td height="15" align="center" bgcolor="#009966">Register</td>
  </tr>
    <tr>
    <td height="150">
    <form action="doRegis.jsp" method="post">
    <table width="429" align="center" border="0">
	<tr>
	<td width="208">Username</td>
    <td width="211"><input type="text" name="username" placeholder="Username">
	</tr>
    <tr>
    <td>Password</td>
    <td><input type="password" name="password" placeholder="Pass" /></td>
   	</tr>
    <tr>
    <td>Gender </td>
    <td><input type="radio" name="gendermale" value="male" />MALE
    	<input type="radio" name="genderfemale" value="female"/>FEMALE
    </td>
    </tr>
    <tr>
    <td>Email</td>
    <td><input type="text" name="email" placeholder="Email" /></td>
    </tr>
    <tr>
    <td colspan="4" align="center"	>
    <input type="submit">
    </td>
    </tr>
    </table>
    </form>
    </td>
  </tr>
</table>


<br /><br />

<%-- menampilkan footer pada halaman ini --%>

<table width="100%" border="0" bgcolor="#CCCCCC">
  <tr>
    <td align="center" bgcolor="#CCCCCC"><em><strong>Copyright Simply Burger 2015</strong></em></td>
  </tr>
</table>         
               


<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>
</body>
</html>
