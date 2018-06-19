<%-- 
    Project   : Voting
    Created on : Jun 7, 2016, 2:04:12 PM
    Author     : UB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Cast Your Vote</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
        
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row">
                <h1 id="hslide1">Welcome</h1><h1 id="hslide2"> to Online Voting</h1><h1 id="hslide3"> <small> It's your right.</small></h1>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="pulse">
                        <h2>Vote For Change</h2>
                    </div> </div>
                <div class="col-sm-8"><p>Election day is one of the most exciting days of the year. 
                Our nation comes together to elect a leader who will represent us on the 
                global stage for the next four years. We will elect a leader that will stand for our rights as citizens,
                students, employees and employers. We will elect a leader that will hopefully keep their promises. 
                Sounds like a big decision, doesn't it? It is a big decision, and this election marks a pivotal point
                in our nation's history. Currently,   there are two very distinct paths our country will choose from
                and it is more important than ever to cast a vote in this election.</p></div>
   </div>  
            <div class="row"><h3>Why People Have To Do Vote</h3>
                <div class="col-sm-6">
                    
                </div>
                <div class="col-sm-6">
                    <ul>
                        <li>It's your right. </li>
                      <li>Your vote matters. </li>
                      <li>Shape the social agenda. </li>
                        <li>Economic policies will affect your future. </li>
                      <li>Help shape foreign policy. </li>
                      <li>Have your say on environmental issues. </li>
                   <li>You're part of an important voting bloc.</li>
                      <li>Politicians won't address student needs without student votes. </li>
                      <li>Demonstrate concern for the next generation.</li>
                       <li>Honor past sacrifices.</li>
                   
                    </ul>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="bootstrap.min.js"></script>
    </body>
</html>
