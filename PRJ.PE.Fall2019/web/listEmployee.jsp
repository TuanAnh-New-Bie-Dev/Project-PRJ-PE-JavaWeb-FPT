<%-- 
    Document   : listEmployee
    Created on : Feb 27, 2022, 4:32:21 PM
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
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>DOB</th>
                    <th>Department</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listE}" var="e" >
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.name}</td>
                        <td><img src="image/${e.gender?"Male-icon":"Female-icon"}.png" /></td>
                        <td>${e.getDateFormat()}</td>
                        <td>${e.nameDepart()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


        <h5>List of Employees</h5>
    </body>
</html>
