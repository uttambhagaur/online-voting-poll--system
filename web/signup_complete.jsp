<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp Complete</title>
        <script>
            function redirect(){
                window.location="signup.jsp";
                setTimeout('redirect()',1000);
            }
        </script>
    </head>
    <body onload="redirect()">
        <% if(request.getParameter("voterId")==null){
         response.sendRedirect("signup.jsp");
        }%>
     <%! Connection conn = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
                
        %>
        <% 
        Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = "jdbc:mysql://localhost:3306/onlinevote";
			String connectionUser = "root";
			String connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			String sqlStmt = "INSERT INTO voter VALUES(?,?,?,?,?,?,?,?,?)";
			prepStmt = conn.prepareStatement(sqlStmt);
                        String ID= request.getParameter("voterId");
                        String Pass=request.getParameter("voterPass");
                        String voterName=request.getParameter("voterName");
                        String email=request.getParameter("voterEmail");
                        String gender=request.getParameter("gender");
                        String dob=request.getParameter("voterDob");
                        String address=request.getParameter("voterAddress");
                        String pno=request.getParameter("voterPno");
			prepStmt.setString(1, ID);
			prepStmt.setString(2, voterName);
                        prepStmt.setString(3, email);
                        prepStmt.setString(4, Pass);
                        prepStmt.setString(5, gender);
                        prepStmt.setString(6,dob);
                        prepStmt.setString(7, address);
                        prepStmt.setString(8,pno);
                        prepStmt.setString(9,null);
			prepStmt.executeUpdate();
                        %>
                        <%= "<h2 style='color:green'>Account is Created</h2> " %>  
                       
    </body>
</html>
