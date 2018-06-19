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
        <script type="text/javascript">
            function logout(){
                document.getElementById("login").innerHTML="<a href='logout.jsp'><span class='glyphicon glyphicon-log-out'></span> Log Out</a>";
            }
            function voted(){
                confirm(" Your Vote is Submitted");
            }
        </script>
    </head>
    <body onload="logout()">
        <%@include file="header.jsp" %>
        <% if((String)session.getAttribute("voterid")==null){
        response.sendRedirect("index.jsp");
        }         
        %>
        <% String id = (String)session.getAttribute("voterid"); %>
        <div class="container">
    <div class="row">
        <div class="col-md-4">
         
            <div id="sidebar" class="well sidebar-nav">
                <h5><i class="glyphicon glyphicon-user"></i>
                    <small><b>Voter</b></small>
                </h5>
                <ul class="nav nav-pills nav-stacked">
                    <li><%= id %></li>
                    
                </ul>
            </div>
        </div>
        
        <div class="col-sm-8" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><%= id %></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-6 col-lg-6 " align="center">
                    <img class="img-circle img-responsive" src="images/Z.jpg"/><br/>
                    <img class="img-circle img-responsive" src="images/a2.jpeg"/><br/>
                    <img class="img-circle img-responsive" src="images/c1.jpeg"/><br/>
                    <img class="img-circle img-responsive" src="images/a3.jpeg"/><br/>
                    <img class="img-circle img-responsive" src="images/a4.jpeg"/><br/>
                    <img class="img-circle img-responsive" src="images/otherslogo.png"/>
                </div>
                
                
                <div class=" col-md-6 col-lg-6 "> 
                    <form action="voted.jsp" method="post">
                    <table class="table table-user-information">
                    <tbody>
                       
                      <tr>
                        <td>Bahujan Samaj Party</td>
                        <td><input type="radio" name="vote" value="BSP" checked></td>
                      </tr>
                      
                      <tr>
                        <td>Bhartiya Janta Party</td>
                        <td><input type="radio" name="vote" value="BJP" ></td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>Indian National Congress</td>
                        <td><input type="radio" name="vote" value="Congress"></td>
                      </tr>
                        <tr>
                        <td>Aam Aadmi Party</td>
                        <td><input type="radio" name="vote" value="AAP"></td>
                      </tr>
                      <tr>
                        <td>Samajvadi Party</td>
                       <td><input type="radio" name="vote" value="SP" ></td>
                      </tr>
                      <tr>
                        <td>Nirdaliya (Other)</td>
                        <td><input type="radio" name="vote" value="Nirdaliya"></td>
                           
                      </tr>
                      <tr>
                          <td><input class="btn btn-success btn-block" type="submit" value="Vote" onclick="voted()"></td>
                      </tr>
                    </tbody>
                    
                  </table>
                    </form>
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
