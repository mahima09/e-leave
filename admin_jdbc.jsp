<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/e-leave","root","");
    Statement st=cn.createStatement();
   
    String message,approved;
    message=request.getParameter("ta-message");
    approved=request.getParameter("r-requested");
    
	String InsertQuery ="insert INTO admin_table values('"+message+"','"+approved+"')";
	//out.println(InsertQuery);
    
    st.executeUpdate(InsertQuery);
    cn.close();
    }
	catch(Exception e)
    {
    out.print(e);
    }
   response.sendRedirect("admin.jsp");
    
    %>
	
    
    