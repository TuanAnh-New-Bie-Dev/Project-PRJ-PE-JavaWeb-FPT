<%-- 
    Document   : index
    Created on : Jan 16, 2022, 2:12:26 AM
    Author     : tuan anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            .cover {
                border: 1px solid #cccccc;
                width: 20%;
            }
        </style>

    </head>
    <body>

        <div class="cover">
            <form action="employees" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="name" /></td>
                        </tr>
                        <tr>
                            <td>Sex</td>
                            <td>
                                <input type="radio" name="gender" value="Male" checked />Male 
                                <input type="radio" name="gender" value="Female" />Female
                            </td>
                        </tr>
                        <tr>
                            <td><br>
                                <input type="submit" value="Submit" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>

            <br><br>
            ${alert}
            
            ${alert2}
            <c:forEach items="${sessionScope.listS}" var="o" >
                
                ${o.name} - ${o.gender} <br>
                
            </c:forEach>
            
        </div>

    </body>
</html>
