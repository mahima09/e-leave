<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/e-leave","root","");
    Statement st=cn.createStatement();
   
    String name,mobile,dob,email,pass,dept,role;
    name=request.getParameter("name");
    mobile=request.getParameter("phone-no");
    dob=request.getParameter("dob");
    email=request.getParameter("email");
    pass=request.getParameter("password");
   	dept=request.getParameter("dept");
    role=request.getParameter("role");
	String InsertQuery ="insert INTO signup_table values('"+name+"','"+mobile+"','"+dob+"','"+email+"','"+pass+"','"+dept+"','"+role+"')";
	//out.println(InsertQuery);
    
    st.executeUpdate(InsertQuery);
    cn.close();
    }
	catch(Exception e)
    {
    out.print(e);
    }
   response.sendRedirect("index.html");
    
    %>
	
    
    