<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
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
	
<div class="container">
    
      <div class="row">
        <div class="col-md-5">
         
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
        <div class="login-signup">
          <div class="col-sm-3"></div>
        <div class="col-sm-6 nav-tab-holder">
        <ul class="nav nav-tabs row" role="tablist">
          <li role="presentation" class="active col-sm-6"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Create Account for Voter</a></li>
        </ul>
      </div>

      </div>


      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
          <div class="row">

            <div class="col-sm-6 mobile-pull">
              <article role="login">
                <h3 class="text-center"><i class="fa fa-lock"></i> Voter Details</h3>
                <form class="signup" action="signup_complete.jsp" method="post">
                  <div class="form-group">
                      <input type="text" name="voterId" class="form-control" placeholder="Voter Id" required>
                  </div>
                    <div class="form-group">
                        <input type="text" name="voterName" class="form-control" placeholder="Voter Name" required>
                    </div>
                  <div class="form-group">
                      <input type="email" name="voterEmail" class="form-control" placeholder="Email Address" required>
                  </div>
                    <div class="form-group">
                      <input type="text" name="voterDob" class="form-control" placeholder="DD-MM-YYYY" required>
                  </div>
                  <div class="form-group">
                      <input type="text" name="voterPno" class="form-control" placeholder="Phone Number" required>
                  </div>
                    <div class="form-group">
                        <input type="text" name="voterAddress" placeholder="Address" class="form-control" required>
                    </div>
                  <div class="form-group">
                      <input type="password" name="voterPass" class="form-control" placeholder="Password" required>
                  </div>
                    <div class="form-group">
                        <label>Gender</label> &nbsp;
                        <input type="radio" name="gender"  value="Male" checked> Male &nbsp; <input type="radio" value="Female" name="gender" >Female
                    </div>
                  <div class="form-group">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Please accept the terms and conditions to proceed with your request.
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <input type="submit" class="btn btn-success btn-block"  value="SUBMIT">
                  </div>
                </form>

                <footer role="signup" class="pull-right">
                  <ul>
                    <li>
                      <a href="#">Terms of Use</a>
                    </li>
                    
                  </ul>
                </footer>

              </article>
            </div>

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
