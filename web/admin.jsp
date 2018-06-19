<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
        <script type="text/javascript">
            
        </script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%! Connection conn = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
                String adminName=null;
        %>
        <% 
        Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = "jdbc:mysql://localhost:3306/onlinevote";
			String connectionUser = "root";
			String connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			String sqlStmt = "SELECT * FROM admin where adminid=? and adminpass= ?";
			prepStmt = conn.prepareStatement(sqlStmt);
                        String ID= request.getParameter("adminId");
                        String Pass=request.getParameter("adminPass");
			prepStmt.setString(1, ID);
			prepStmt.setString(2, Pass);
			rs = prepStmt.executeQuery();
                        if(rs.next()){
			  String id = rs.getString("adminId");
                                 String apass=rs.getString("adminpass");
				 adminName = rs.getString("adminName");
                                 session.setAttribute("bothId", id);
                                     }
                        else
                        {   response.sendRedirect("Login.jsp");   }
		
                        
        %>
        
        <div class="container">
    <div class="row">
        <div class="col-md-4">
         
            <div id="sidebar" class="well sidebar-nav">
                <h5><i class="glyphicon glyphicon-home"></i>
                    <small><b>Admin</b></small>
                </h5>
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="signup.jsp">Add</a></li>
                   
                </ul>
                <h5><i class="glyphicon glyphicon-user"></i>
                    <small><b>Voters</b></small>
                </h5>
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="list.jsp">List</a></li>
                    
                </ul>
            </div>
        </div>
        
        <div class="col-sm-8" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><%= adminName %></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>
                
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Position:</td>
                        <td>Admin</td>
                      </tr>
                      <tr>
                        <td>Hire date:</td>
                        <td>06/23/2013</td>
                      </tr>
                      <tr>
                        <td>Date of Birth</td>
                        <td>01/24/1988</td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>Gender</td>
                        <td>Male</td>
                      </tr>
                        <tr>
                        <td>Home Address</td>
                        <td>Agra,uttar-pradesh</td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:uttambhagaur@gmail.com">uttambhagaur@gmail.com</a></td>
                      </tr>
                        <td>Phone Number</td>
                        <td>+918171076817
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        
                    </div>
    </div>
</div>
    </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="bootstrap.min.js"></script>
        
    </body>
</html>
