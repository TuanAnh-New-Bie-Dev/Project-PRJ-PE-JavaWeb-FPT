<%-- 
    Document   : account
    Created on : Feb 26, 2022, 7:20:06 PM
    Author     : tuan anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 style="color: greenyellow;">${alert}</h2>
        
        <h1>accountid: ${sessionScope.acc.accountid}</h1>
        
        <table border="1">
            <thead>
                <tr>
                    <th>id</th>
                    <th>content</th>
                    <th>date</th>
                    <th>create_by</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listE}" var="e" >
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.content}</td>
                        <td>${e.date}</td>
                        <td>${e.createdBy}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>
