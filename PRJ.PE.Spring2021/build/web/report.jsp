<%-- 
    Document   : report
    Created on : Feb 26, 2022, 10:08:42 PM
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

        <table>
            <c:forEach items="${listE2}" var="e2" >
                <tbody>
                    <tr>
                        <td>+${e2.content}</td>
                    </tr>
                    <c:forEach items="${e2.list}" var="lr" >
                        <tr>
                            <td>-${lr.content}</td>
                        </tr>
                    </c:forEach>
                <form action="add" method="post">
                    <tr>
                        <td>new record for event ${e2.id}</td>
                        <td><input type="text" name="${e2.id}" /> <input type="submit" value="Submit" /></td>
                    </tr>
                </form>
            </tbody>
        </c:forEach>
    </table>


    <h5>Report page</h5>

</body>
</html>
