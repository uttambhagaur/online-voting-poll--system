<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voted</title>
        <script>
            function Redirect(){
                window.location="castvote.jsp";
                setTimeout('Redirect()',10000);
            }
        </script>
    </head>
    <body onload="Redirect()">
      <%! 
      Connection conn = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
                String voterName=null,id=null,pno=null,email=null,gender=null,address=null,dob=null;
        %>
        <% 
        Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = "jdbc:mysql://localhost:3306/onlinevote";
			String connectionUser = "root";
			String connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			String sqlStmt = "SELECT * FROM voter where id=? ";
			prepStmt = conn.prepareStatement(sqlStmt);
                        String ID= (String)session.getAttribute("voterid");
			prepStmt.setString(1, ID);
			rs = prepStmt.executeQuery();
			while(rs.next()) {
                            if(rs.getString("vote")==null){
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
			connectionUrl = "jdbc:mysql://localhost:3306/onlinevote";
			connectionUser = "root";
			connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			sqlStmt = "UPDATE voter set vote=? where id=?";
			prepStmt = conn.prepareStatement(sqlStmt);
                        prepStmt.setString(2, ID);
                        String vote1=request.getParameter("vote");
			prepStmt.setString(1, vote1);
			prepStmt.executeUpdate();
			}
                        else
                        {
                            out.println("<h1 style='color:red'>Yoy can't Voted Again</h1>");
                        }
                        }
        %>
          
    </body>
</html>
