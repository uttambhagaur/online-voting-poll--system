<div class="navbar navbar-inverse">
<div class="container">	
    <div class="navbar-header">	
        <a href="index.jsp" class="navbar-brand">Vote For Soul</a>	
        <button type="button" class="navbar-toggle" datatoggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>	   
            <span class="icon-bar"></span>	 
            <span class="icon-bar"></span>	 
            <span class="icon-bar"></span>	 
        </button>	
        
                    	                </div>	 
    <div class="collapse navbar-collapse">	 
        <ul class="nav navbar-nav">	         
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="CheckVoteId.jsp">Check Voter Id</a></li>	           
            <li><a href="checkvote.jsp">Check Votes</a></li>
            <li><a href="Parties.jsp">Parties</a></li>
        </ul>	                    	         
   
        <ul class="nav navbar-nav navbar-right">
            <% if(session.getAttribute("voterid")==null){ %>
            <li id="login"><a  href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li>
            <% } else { %>
            <li id="login"><a  href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Log out</a></li>
            <% } %>
    </ul>
     </div>
</div>	            	     
</div>	        