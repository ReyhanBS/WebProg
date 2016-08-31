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
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
</head>

<body>
<p><img src="image/header.jpg" width="100%" height="356"/></p>

<%-- header dan menu bar pada halaman ini --%>
<table width="100%" border="0">
  <tr>
    <th scope="col"><div align="left">
      <ul id="MenuBar1" class="MenuBarHorizontal">
            <li>
              <div align="center"><a href="homeguest.jsp">Home </a> </div>
          </li>
          <li>
            <div align="center"><a href="registerguest.jsp">Register</a></div>
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
<br />
<%-- menampilkan waktu didalam halaman --%>

<table width="200" border="0" align="right">
  <tr bgcolor="#CCCCCC">
    <td><strong><p align="center"><script src="jam.js"></script></p></strong></td>
  </tr>
</table>


<br /> <br /><br /><br /><br /><br />

<%-- ini pada halaman ini --%>
<table border="1" align="center" bgcolor="#CCCCCC">
  <tr>
    <td align="center" bgcolor="#009966">Our Burger :</td>
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
            <tr>
            <td align="center"><img src="image/<%= rs.getString(5)%>" width="100" height="100"/></td>    
            </tr>
              <td align="center">Menu : <%=rs.getString(2)%> <br /> Prices :  <%=rs.getString(3)%><br /> Calories : <%=rs.getString(4)%>
              </td>
              <tr>
</tr>
                   
           
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
					<a href="productguest.jsp?Page=<%=i+1%>"><%=i+1%></a>
			<%
				}
				else{
					%>
					<a href="productguest.jsp?Page=<%=i+1%>&search=<%=request.getParameter("search")%>"><%=i+1%></a>
								
					<%
				}
				
			}
			con.close();
			%>
            </td>
            </tr>

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
