<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Your Voter Id card</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
        <link href="login.css" rel="stylesheet" type="text/css">
    </head>
    <body>
     <jsp:include page="header.jsp" />
     <%! Connection conn = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
              String voterName=null,id=null,pno=null,email=null,gender=null,address=null,dob=null;
        %>
        <% if(request.getParameter("checkid")!=null) {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = "jdbc:mysql://localhost:3306/onlinevote";
			String connectionUser = "root";
			String connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			String sqlStmt = "SELECT * FROM voter where id=?";
			prepStmt = conn.prepareStatement(sqlStmt);
                        String ID= request.getParameter("checkid");
                        prepStmt.setString(1, ID);
			rs = prepStmt.executeQuery();
                        if(rs.next()){
			  
                                 id = rs.getString("Id");
                                 voterName = rs.getString("Name");
                                 email= rs.getString("email");
                                 gender=rs.getString("gender");
                                 address=rs.getString("address");
                                 
                                 pno=rs.getString("pno");
                                     }
                        else
                        {   response.sendRedirect("CheckVoteId.jsp");   }
                        
        }
                    else {
                        out.println("");
                    }       
        %>
        
          <div class="container">
              
    	<div class="row">
        
            <div class="col-sm-4">
                <article role="login">
                    <h3 class="text-center" style="color: red"><i class="fa fa-lock"></i> Please Enter Voter Id</h3>
                <form action="CheckVoteId.jsp" >
                    <div class="form-group">
                        <input type="text" name="checkid" placeholder="Enter Voter Id" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Check" class="btn btn-success btn-block" >
                    </div>
                </form>
                </article>
            </div>

        
            <div class="col-sm-8" style="margin-top: 4%;">
              <article role="manufacturer"  class="text-center">
                <header>
                  Voter Details
                </header>
                
                <ul class="text-left">
                    <li><i class="fa fa-check"></i>Id : &nbsp; <%= id %> </li>
                    <li><i class="fa fa-check"></i>Name : &nbsp; <%= voterName %> </li>
                    <li><i class="fa fa-check"></i>Email : &nbsp; <%= email %> </li>
                    <li><i class="fa fa-check"></i>Phone : &nbsp; <%= pno %> </li>
                    <li><i class="fa fa-check"></i>Gender : &nbsp; <%= gender %> </li>
                    <li><i class="fa fa-check"></i>Address : &nbsp; <%= address %> </li>
                  
                </ul>
                    <a href="Login.jsp" class="btn btn-success">Login  For Vote</a>
                    
              </article>
                    
            </div>
          
    </div> <!-- end of content -->
    </div>
                    
      
 <jsp:include page="footer.jsp" />
 
    </body>
</html>
