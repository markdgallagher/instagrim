<%-- 
    Document   : homeaftlogin
    Created on : 19-Oct-2016, 16:36:43
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    
    <head>
        <title>InstaGrim</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="Styles.css">
        
    </head>
    <body>
        <header>
            <h1>InstaGrim</h1>
            <h2>Your world in Black and White.</h2>
        </header>
    <center><img src="casablancaending.jpg" align="middle" alt="Louis, I think this is the beginning of a beautiful friendship." style="width:328px;height:240px;"></center>
        <nav>
            <center><p>"Louis, I think this is the beginning of a beautiful friendship." (Humphrey Bogart, Casablanca)</p></center>
            <!--<form action="/Instagrim"> <input type="submit" value="Home" /> </form>-->
            <form action="upload.jsp"> <input type="submit" value="Upload" /> </form>
            <!--<form action="register.jsp"> <input type="submit" value="Register" /> </form>-->
            <!--<form action="login.jsp"> <input type="submit" value="Login" /> </form>-->
            <form action="index.jsp"> <input type="submit" value="Logout" /> </form>
            <ul>
                
               <!--<li class="footer"><a href="/Instagrim">Home</a></li>-->
                <!--<li><a href="upload.jsp">Upload</a></li>-->
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getloggedin()) {
                    %>
                    <li><a href="/Instagrim/Images/<%=lg.getUsername()%>"><%=lg.getUsername()%>'s Images</a></li>
                    <%}
                            }else{
                                %>
                 <!--<li><a href="register.jsp">Register</a></li>-->
                <!--<li><a href="login.jsp">Login</a></li>-->
                <%
                                        
                            
                    }%>
            </ul>
        </nav>
        <footer>
            <ul>
                <li>&COPY; Andy Cobley</li>
                <li> Edited by Mark Gallagher </li>
            </ul>
        </footer>
    </body>
</html>
