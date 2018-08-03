<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/e-leave","root","");
    Statement st=cn.createStatement();
   
    String sub,reason,from,to,l_request;
    sub=request.getParameter("t-subject");
    reason=request.getParameter("ta-reason");
   	from=request.getParameter("t-from");
    to=request.getParameter("t-to");
    l_request=request.getParameter("r-requested");
    
	String InsertQuery ="insert INTO index_table values('"+sub+"','"+reason+"','"+from+"','"+to+"','"+l_request+"')";
	//out.println(InsertQuery);
    
    st.executeUpdate(InsertQuery);
    cn.close();
    }
	catch(Exception e)
    {
    out.print(e);
    }
    response.sendRedirect("index.jsp");
    
    %>
	
    
    