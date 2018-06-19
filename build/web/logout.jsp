<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
        <script>
            function redirect(){
                window.location="index.jsp";
                setTimeout('redirect()',1000);
            }
            
        </script>
    </head>
    <body onload="redirect()">
        <%
session.removeAttribute("bothId");
session.removeAttribute("voterName");
session.removeAttribute("voterid");
%>
    </body>
</html>
