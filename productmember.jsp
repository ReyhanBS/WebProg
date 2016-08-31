<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product - Simply Burger 2015</title>
<style type="text/css">
body{
background: url('image/background.jpg') no-repeat scroll;
background-size: 100% 100%;
min-height: 700px; 
}
</style>
<%@include file="connect.jsp"%>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal2.css" rel="stylesheet" type="text/css" />
</head>

<body>
<p><img src="image/header.jpg" width="100%" height="365"/></p>

<%-- header sekaligus menu bar pada halaman ini --%>
<table width="100%" border="0">
  <tr>
    <th scope="col"><ul id="MenuBar1" class="MenuBarHorizontal">
          <li><a href="homemember.jsp">Home</a> </li>
          <li><a href="profilemember.jsp">Profile</a></li>
          <li><a href="productmember.jsp">Product</a></li>
          <li><a href="cartmember.jsp">Cart</a></li>
        <li><a href="contactmember.jsp">Contact Us</a></li>
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
  %> 
      User(s)
  </em></td>
  </tr>
  </table>
  </td>
  </tr>
</table>

<br /> <br /><br /><br /><br /><br />

<%-- isi pada halaman ini --%>
<table border="1" align="center" bordercolor="#CCCCCC" bgcolor="#CCCCCC">
  <tr bgcolor="#009966">
    <td align="center"> LIST MENU</td>
  </tr>
    <tr>
    <td>
        <table border="0" align="center">
        <tr>
        <td> <form action="#">Search : <input type="text"  name="search"/>
			 <input type="submit" value="go" />
			 </form>
             
             <%
				String query;
				if(request.getParameter("search")==null){
						query="SELECT * FROM MsProduct";
				}else{
					query="SELECT * FROM MsProduct WHERE Name like '%"+request.getParameter("search")+"%' ";
				}
				
				
				ResultSet rs=st.executeQuery(query);
				int totalDataPerPage=2;
				int currPage=0;
				
				if(request.getParameter("Page")==null){
					currPage=1;
				}
				else if(request.getParameter("Page")!=null){
					currPage=Integer.parseInt(request.getParameter("Page"));
				}
				
				for(int a=0;a<(currPage-1)*totalDataPerPage;a++){
					rs.next();
				}
				
				for(int i=0;i<totalDataPerPage;i++)		
				{
					
					if(rs.next()){		
			%>
            
            
            
            <tr>
            <td align="center"><img src="image/<%= rs.getString("gambar")%>" width="100" height="100"/></td>
            </tr>            
            <td align="center">Menu : <%=rs.getString(2)%> <br /> Prices :  <%=rs.getString("price")%><br /> Calories : <%=rs.getString(4)%></td>
            <tr>
            <td align="center"><a href="cartmember.jsp"><input name="cart" type="button" value="Add To Cart"/> 	
            </td>
            </tr>
           
       		
             
<%
			}
			else{
				break;
				}
			}
			
			rs.last();
		
			int totalData=rs.getRow();
			
			int totalPage=totalData/totalDataPerPage;
			if(totalData%totalDataPerPage!=0){
				totalPage++;
			}	
			%>
            <tr>
            <td>
            <%
			for(int i=0;i<totalPage;i++)
			{
				if(request.getParameter("search")==null)
				{
			%>
					<a href="productmember.jsp?Page=<%=i+1%>"><%=i+1%></a>
			<%
				}
				else{
					%>
					<a href="productmember.jsp?Page=<%=i+1%>&search=<%=request.getParameter("search")%>"><%=i+1%></a>
								
					<%
				}
				
			}
			con.close();
			%>
            </td>
            </tr>
        </table>
    </td>
    </tr>
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
