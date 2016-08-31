<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact - Simply Burger 2015</title>
<style type="text/css">
body{
background: url('image/background.jpg') no-repeat scroll;
background-size: 100% 100%;
min-height: 700px; 
}
</style>

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal2.css" rel="stylesheet" type="text/css" />
</head>

<body>
<p><img src="image/header.jpg" width="100%" height="356"/></p>
<table width="100%" border="0">
  <tr>
    <th scope="col"><div align="left">
      <ul id="MenuBar1" class="MenuBarHorizontal">
            <li>
              <div align="center"><a href="homemember.jsp">Home</a> </div>
            </li>
            <li>
              <div align="center"><a href="profilemember.jsp">Profile</a></div>
            </li>
          <li>
            <div align="center"><a href="productmember.jsp">Product</a></div>
          </li>
          <li>
            <div align="center"><a href="cartmember.jsp">Cart</a> </div>
          </li>
          <li>
            <div align="center"><a href="contactmember.jsp">Contact</a></div>
          </li>
      </ul>
      </div></th>
  </tr>
</table>
<br />
<br />
<table width="258" border="0.5" align="right" bgcolor="#009966">
  <tr bgcolor="#CCCCCC">
    <td><strong><p align="center"><script src="jam.js"></script></p></strong></td>
  </tr>
  <tr>
  <td>
  <table border="0" align="center">
  <tr>
  <td width="216"><em>Welcome,
  <%-- out.print(user); --%> | <a href="doLogout.jsp">Logout</a></em></td>
  </tr>
  <tr>
  <td><em>Online now :
      <%
		Integer curr = (Integer)application.getAttribute("userOn");
		out.print(curr);
  %> 
      User(s)
  </em></td>
  </tr>
  </table>
  </td>
  </tr>
</table>
<br /> <br /><br /><br /><br /><br />

<%-- isi halaman --%>
<table width="30%" height="139" border="1" align="center" bgcolor="#CCCCCC">
  <tr>
    <td height="15" align="center" bgcolor="#009966">Contact Simply Burger </td>
  </tr>
  <tr>
  <td height="108">
  	<table width="318" border="0" align="center">
    <tr>
    <td width="245" align="center"><div align="left">Phone Number : 021-555 331</div></td>
    </tr>
    <tr>
    <td align="center"><div align="left">Email : simplyburger@gmail.com</div></td>
    </tr>
    <tr>
    <td align="center"><div align="left">Website : simplyburger.id</div></td>
    </tr>
    <tr>
    <td align="center"><div align="left">Thank You ^^</div></td>
    </tr>
    </table>
    </td>
  </tr>
</table>
<br /><br />

<%-- Footer halaman --%>
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
