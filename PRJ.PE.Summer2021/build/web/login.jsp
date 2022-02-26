<%-- 
    Document   : login
    Created on : Jan 16, 2022, 4:00:54 AM
    Author     : tuan anh
--%>

<%@page import="jdbc.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="login" method="post">
            <table >
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="uname" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="pass" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
        ${mess}
    </body>
</html>
