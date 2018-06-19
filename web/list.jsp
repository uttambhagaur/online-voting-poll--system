<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of voters</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="login.css"/>
  
    </head>
    <body>
     <jsp:include page="header.jsp" />
     <% if((String)session.getAttribute("bothId")==null){
         response.sendRedirect("Login.jsp");
     }%>
     <sql:setDataSource
         var="myDb"
         driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/onlinevote"
         user="root" password=""
         />
     <sql:query var="list_voters" dataSource="${myDb}">
         select * from voter;
     </sql:query>
         
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
        
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
          
            <div class="col-sm-8 mobile-pull">
              <article role="login">
                <h3 class="text-center"><i class="fa fa-lock"></i> Voter Details List</h3>
                <div class="row">
                <table>
                    <tr>
                    <div class="col-sm-3"><b>Voter Id</b></div>
                    <div class="col-sm-3"><b>Voter Name</b></div>
                    <div class="col-sm-3"><b>Voter Phone</b></div>
                    <div class="col-sm-3"><b>Voter Address</b></div>
                    </tr>
                    <c:forEach var="user" items="${list_voters.rows}">
                        <tr>
                        <div class="col-sm-3"><c:out value="${user.id}"/></div>
                        <div class="col-sm-3"><c:out value="${user.name}"/></div>
                        <div class="col-sm-3"><c:out value="${user.pno}"/></div>
                        <div class="col-sm-3"><c:out value="${user.address}"/></div>
                        </tr>
         </c:forEach>
                </table>
                </div>
              </article>
            </div>

            

          <!-- end of row -->
        </div>
        <!-- end of home -->
      </div>
  </div>
  </div>

 <jsp:include page="footer.jsp" />
    </body>
</html>
