<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parties</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="custom.css" type="text/css" rel="stylesheet">
  
    </head>
    <body>
       <jsp:include page="header.jsp" />
       <div class="container">
    
    	<div class="row">
        
            <center> <marquee><h2><b>Following Parties Are There</b></h2></marquee></center>
        </div>
          <table width="69%" border="0" align="center">              

  <tr>
      <td width="30%" align="center" valign="middle"><img src="images/Z.jpg" width="128" height="77"  alt=""/></td>
    <td width="28%" align="center" valign="middle">Bahujan Samaj Party</td>
  <input type="hidden" name="txtVote1" value="BSP" />
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="middle"><img src="images/a2.jpeg" width="128" height="77"  alt=""/></td>
    <td align="center" valign="middle">Bhartiya Janta Party</td>
     <input type="hidden" name="txtVote2" value="BJP" />
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="middle"><img src="images/c1.jpeg" width="128" height="77"  alt=""/></td>
    <td align="center" valign="middle">Indian National Congress</td>
     <input type="hidden" name="txtVote3" value="Congress" />
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="middle"><img src="images/a3.jpeg" width="128" height="77"  alt=""/></td>
    <td align="center" valign="middle">Aam Aadmi Party</td>
     <input type="hidden" name="txtVote4" value="AAP" />
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="middle"><img src="images/a4.jpeg" width="128" height="77"  alt=""/></td>
    <td align="center" valign="middle">Samajvadi Party</td>
     <input type="hidden" name="txtVote5" value="SP" />
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="middle"><img src="images/otherslogo.png" width="128" height="77"  alt=""/></td>
    <td align="center" valign="middle">Nirdaliya (Other)</td>
     <input type="hidden" name="txtVote6" value="Other" />
  </tr>  
  
             
  </table>
            </font>
        </div>
                     
         
<jsp:include page="footer.jsp" />
    </body>
</html>
