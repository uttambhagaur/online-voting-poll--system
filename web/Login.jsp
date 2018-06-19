<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
     
<div class="container">
    <div class="login-signup">
      <div class="row">
        <div class="col-sm-6 nav-tab-holder">
        <ul class="nav nav-tabs row" role="tablist">
          <li role="presentation" class="active col-sm-6"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Admin</a></li>
          <li role="presentation" class="col-sm-6"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Voter</a></li>
        </ul>
      </div>

      </div>


      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
          <div class="row">

            <div class="col-sm-6 mobile-pull">
              <article role="login">
                <h3 class="text-center"><i class="fa fa-lock"></i> Admin</h3>
                <form class="signup" action="admin.jsp" method="post">
                  <div class="form-group">
                      <input type="text" class="form-control" name="adminId" placeholder="Admin Id" required="required">
                  </div>
                  
                  <div class="form-group">
                      <input type="password" class="form-control" name="adminPass" placeholder="Password" required="required">
                  </div>
                  
                  <div class="form-group">
                    <input type="submit" class="btn btn-success btn-block"  value="SUBMIT">
                  </div>
                </form>

                <footer role="signup" class="text-center">
                  <ul>
                    <li>
                      <a href="#">Terms of Use</a>
                    </li>
                    <li>
                      <a href="#">Privacy Statement</a>
                    </li>
                  </ul>
                </footer>

              </article>
            </div>

            <div class="col-sm-6">
              <article role="manufacturer"  class="text-center">
                <header>
                  ADMIN
                </header>
                
                <ul class="text-left">
                  <li><i class="fa fa-check"></i>  Register New Account</li>
                  <li><i class="fa fa-check"></i>  Check All Accounts</li>
                  <li><i class="fa fa-check"></i>  Remove Account </li>
                  
                </ul>
                <a href="#" class="btn btn-success">Login  For Admin</a>
              </article>
            </div>

          </div>
          <!-- end of row -->
        </div>
        <!-- end of home -->

      <div role="tabpanel" class="tab-pane" id="profile">
        <div class="row">

          <div class="col-sm-6 mobile-pull">
            <article role="login">
              <h3 class="text-center"><i class="fa fa-lock"></i> Login Voter Account</h3>
              <form class="signup" action="vote.jsp" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="voterId" placeholder="Voter Id" required="required">
                </div>
                         
                <div class="form-group">
                    <input type="password" class="form-control" name="voterPass" placeholder="Password" required="required">
                </div>
                
                <div class="form-group">
                  <input type="submit" class="btn btn-success btn-block"  value="SUBMIT">
                </div>
              </form>
              <footer role="signup" class="text-center">
                <ul>
                  <li>
                    <a href="#">Terms of Use</a>
                  </li>
                  <li>
                    <a href="#">Privacy Statement</a>
                  </li>
                </ul>
              </footer>

            </article>
          </div>

          <div class="col-sm-6">
            <article role="manufacturer"  class="text-center">
              <header>
                Voter
              </header>
              
              <ul class="text-left">
                <li><i class="fa fa-check"></i>  Vote</li>
                <li><i class="fa fa-check"></i>   Check Parties List</li>
                
              </ul>

              <a href="#" class="btn btn-success">Login  For User</a>
            </article>
          </div>
        </div>
      </div>
  </div>
  </div>
</div>
   
 <jsp:include page="footer.jsp" />
 
    </body>
</html>
