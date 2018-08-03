

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import="java.sql.*"%>
	<body style="background-color:#07adad;color:black;padding:100px;height:100px;">
	<table>
   <%
   try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/e-leave","root","");
    Statement st=cn.createStatement();
    String email1="";
    String subject;
/*     String seachQuery="select s.email,in.subject from signup_table s JOIN index_table in USING (subject)";
 */    
  String seachQuery="SELECT * FROM index_table";
 	out.print(seachQuery);
    ResultSet rs=st.executeQuery(seachQuery);
	while(rs.next())
    {
    %>
    <%-- <tr>
    <td>email</td>
    <td>subject</td>
    </tr>
    <tr>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(1) %></td>
    </tr> --%>
    <tr >

	<td><%=rs.getString("subject") %></td>
	<td><%=rs.getString("reason") %></td>
	<td><%=rs.getString("date_from") %></td>
	<td><%=rs.getString("date_to") %></td>
	<td><%=rs.getString("leave_request") %></td>
	
	</tr>
    <%
    }
    }
    catch(Exception e)
    {
    out.print(""+e.getMessage());
    }
    %>
</table>
</body> 

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   