<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/e-leave","root","");
	Statement st=cn.createStatement();
	String mail="", passw="", role1="";
	mail=request.getParameter("email");
	passw=request.getParameter("password");
	role1=request.getParameter("role");
	String searchQuery="select email,pass,role from signup_table where email='"+mail+"'AND pass='"+passw+"' AND role='"+role1+"'";
	//out.println(role1);	
	
	ResultSet rs=st.executeQuery(searchQuery);
	//out.print(searchQuery);
	if(rs.next()){
		cn.close();
	
		if(role1.equalsIgnoreCase("admin"))
		{
			response.sendRedirect("admin.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	}
	
	else{
		response.sendRedirect("login.html");
		}
}
catch(Exception e){
	out.print(e);
}//response.sendRedirect("index.html");

%>