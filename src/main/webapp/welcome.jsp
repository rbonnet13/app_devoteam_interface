<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
        <title>Bienvenu</title>
    </head>
    <body>
    <div id="container">
     	<div class="img-devo">
        	<img src="<c:url value="/static/resources/gfx/devoteam.jpg"/>" height="250" width="550"/>
    	</div>
        <table>
            <tr>
                <td>Bienvenu sur l'App devoteam</td>
            </tr>
            <tr>
                <td><a href = <c:url value = "/views/index.jsp"/>>Home</a>
                </td>
            </tr>
        </table>
     </div>
    </body>
    </html>