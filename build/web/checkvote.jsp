<%@ page errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Vote</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <%! Connection conn = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null; int count=0,countsp=0;
                int countc=0,countbjp=0,countaap=0,countn=0;
                String voterName=null,id=null,pno=null,email=null,gender=null,address=null,dob=null;
        %>
        <% 
        Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = "jdbc:mysql://localhost:3306/onlinevote";
			String connectionUser = "root";
			String connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			String sqlStmt = "SELECT COUNT(vote) AS count FROM voter where vote='BSP'";
			prepStmt = conn.prepareStatement(sqlStmt);
                        rs = prepStmt.executeQuery();
			while(rs.next()){
                            count = rs.getInt("count");
                        }
                        sqlStmt = "SELECT COUNT(vote) AS count FROM voter where vote='SP'";
			prepStmt = conn.prepareStatement(sqlStmt);
                        rs = prepStmt.executeQuery();
			while(rs.next()){
                            countsp = rs.getInt("count");
                        }
                        sqlStmt = "SELECT COUNT(vote) AS count FROM voter where vote='Nirdaliya'";
			prepStmt = conn.prepareStatement(sqlStmt);
                        rs = prepStmt.executeQuery();
			while(rs.next()){
                            countn = rs.getInt("count");
                        }
                        sqlStmt = "SELECT COUNT(vote) AS count FROM voter where vote='AAP'";
			prepStmt = conn.prepareStatement(sqlStmt);
                        rs = prepStmt.executeQuery();
			while(rs.next()){
                            countaap = rs.getInt("count");
                        }
                        sqlStmt = "SELECT COUNT(vote) AS count FROM voter where vote='BJP'";
			prepStmt = conn.prepareStatement(sqlStmt);
                        rs = prepStmt.executeQuery();
			while(rs.next()){
                            countbjp = rs.getInt("count");
                        }
                        sqlStmt = "SELECT COUNT(vote) AS count FROM voter where vote='Congress'";
			prepStmt = conn.prepareStatement(sqlStmt);
                        rs = prepStmt.executeQuery();
			while(rs.next()){
                            countc = rs.getInt("count");
                        }
        %>
        <div class="container">
            <div class="row">
                
                <div class="col-sm-6">
                    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="70"
  aria-valuemin="0" aria-valuemax="100" style="width:<%= count %>0%;">
      
   BSP &nbsp; <%= count %>
  </div>
</div>
                </div>
        </div>
  <div class="row">
                
                <div class="col-sm-6">
                    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="70"
  aria-valuemin="0" aria-valuemax="100" style="width:<%= countbjp %>0%;">
      
   BJP &nbsp; <%= countbjp %>
  </div>
</div>
                </div>
        </div>
  <div class="row">
                
                <div class="col-sm-6">
                    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="70"
  aria-valuemin="0" aria-valuemax="100" style="width:<%= countc %>0%;">
      
   Congress &nbsp; <%= countc %>
  </div>
</div>
                </div>
        </div>
  <div class="row">
                
                <div class="col-sm-6">
                    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="70"
  aria-valuemin="0" aria-valuemax="100" style="width:<%= countaap %>0%;">
      
   AAP &nbsp; <%= countaap %>
  </div>
</div>
                </div>
        </div>
  <div class="row">
                
                <div class="col-sm-6">
                    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="70"
  aria-valuemin="0" aria-valuemax="100" style="width:<%= countsp %>0%;">
      
   SP &nbsp; <%= countsp %>
  </div>
</div>
                </div>
        </div>
  <div class="row">
                
                <div class="col-sm-6">
                    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="70"
  aria-valuemin="0" aria-valuemax="100" style="width:<%= countn %>0%;">
      
   Nirdaliya &nbsp; <%= countn %>
  </div>
</div>
                </div>
        </div>
        </div>
        <jsp:include page="footer.jsp" /> 
    </body>
</html>
