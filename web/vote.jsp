<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
        
    </head>
    <body>
        <%@include file="header.jsp" %>
       
        <%! Connection conn = null;
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
			String sqlStmt = "SELECT * FROM voter where id=? and pass= ?";
			prepStmt = conn.prepareStatement(sqlStmt);
                        String ID= request.getParameter("voterId");
                        String Pass=request.getParameter("voterPass");
			prepStmt.setString(1, ID);
			prepStmt.setString(2, Pass);
			rs = prepStmt.executeQuery();
			if (rs.next()) {
				 id = rs.getString("Id");
                                 session.setAttribute("voterid", id);
                                 voterName = rs.getString("Name");
                                 session.setAttribute("voterName", voterName);
                                 email= rs.getString("email");
                                 gender=rs.getString("gender");
                                 address=rs.getString("address");
                                 dob=rs.getString("dob");
                                 pno=rs.getString("pno");
			}
                        else
                        {
                            response.sendRedirect("Login.jsp");
                        }
                        
        %>
        
        <div class="container">
    <div class="row">
        <div class="col-md-4">
         
            <div id="sidebar" class="well sidebar-nav">
                <h5><i class="glyphicon glyphicon-user"></i>
                    <small><b>Voter</b></small>
                </h5>
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="castvote.jsp">Vote</a></li>
                    
                </ul>
            </div>
        </div>
        
        <div class="col-sm-8" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><%= voterName %></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>
                
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Position:</td>
                        <td>Voter</td>
                      </tr>
                      <tr>
                        <td>Date of Birth</td>
                        <td><%= dob %></td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>Gender</td>
                        <td><%= gender %></td>
                      </tr>
                        <tr>
                        <td>Home Address</td>
                        <td><%= address %></td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:uttambhagaur@gmail.com"><%= email %></a></td>
                      </tr>
                        <td>Phone Number</td>
                        <td><%= pno %>
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
        <% if((String)session.getAttribute("voterid")==null){
        response.sendRedirect("Login.jsp");
        }  %>
    </body>
</html>
