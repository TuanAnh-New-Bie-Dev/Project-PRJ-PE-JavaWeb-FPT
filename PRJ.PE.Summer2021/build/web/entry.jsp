<%-- 
    Document   : entry
    Created on : Jan 18, 2022, 8:08:33 AM
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

        <table border="1">
            <thead>
                <tr>
                    <th>Entry ID</th>
                    <th>Entry Title</th>
                    <th>Go Detail</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listE}" var="e" >
                <tr>
                    <td>${e.getEntryID()}</td>
                    <td>${e.title}</td>
                    <td><a href="detail?ID=${e.getEntryID()}" >Detail</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>
