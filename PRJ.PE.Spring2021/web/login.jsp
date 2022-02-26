<%-- 
    Document   : login
    Created on : Feb 26, 2022, 6:43:05 PM
    Author     : tuan anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="login" method="post">

            <table>
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="Login" /></td>
                    </tr>
                </tbody>

            </table>
            <h2 style="color: red;">${alert}</h2>
            <h5>Login page</h5>
        </form>

    </body>
</html>
