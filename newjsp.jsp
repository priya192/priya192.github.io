<%-- 
    Document   : newjsp
    Created on : Aug 3, 2017, 2:40:14 PM
    Author     : ok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! function getNotification(){
  $.post('http://server/notification/', {userid:userid, password:password}, function(raw){
    var data = $.parseJSON(raw);
	if(data.hasNotification){
	  sendBroserNotification(data.message);
	}
	settimeout(5000, getNotification);
  });
}%>
        
    </body>
</html>
