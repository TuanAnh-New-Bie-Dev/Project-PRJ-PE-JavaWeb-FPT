<%-- 
    Document   : index
    Created on : Jan 18, 2022, 5:16:17 PM
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
        
        <table border="1" style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th>Event ID</th>
                    <th>Content</th>
                    <th>Occur</th>
                    <th>is Enable</th>
                    <th>Owner</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="e" items="${listE}" >
                <tr>
                    <td>${e.getId()}</td>
                    <td>${e.content}</td>
                    <td>${e.getDateFormat()}</td>
                    <td>
                        <input type="checkbox" ${e.isEnable?"checked":""} />
                    </td>
                    <td>${e.createdBy}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>
