<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InstaGrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
        <h1>InstaGrim</h1>
        <h2>Your world in Black and White.</h2>
        </header>
        <nav>
            <form action="/Instagrim"> <input type="submit" value="Home" /> </form>
        </nav>
       
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <p><i>Note</i>:Once redirected to the home page, you can login with your new credentials.</p>
                <input type="submit" value="Register"> 
            </form>

        </article>
        <footer>
            <ul>
                <!--<li class="footer"><a href="/Instagrim">Home</a></li>-->
            </ul>
        </footer>
    </body>
</html>
