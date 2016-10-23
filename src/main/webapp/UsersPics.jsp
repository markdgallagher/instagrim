<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InstaGrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/picscss.css" />
    </head>
    <body>
        <header>
        
        <h1>InstaGrim</h1>
        <h2>Your world in Black and White.</h2>
        </header>
        
        <nav>
            <form action="/Instagrim/homeaftlogin.jsp"> <input type="submit" value="Home" /> </form>
            <form action="/Instagrim/upload.jsp"> <input type="submit" value="Upload" /> </form>   
            <form action="/Instagrim"> <input type="submit" value="Logout" /> </form>
        </nav>
 
        <article>
            <h1>Your Pics</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>Aw snap! No images :( Get uploading!</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();
                
        %>
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><%       
        
            }
            }
        %>
        </article>
        <footer>
            <ul>
                <!--<li class="footer"><a href="/Instagrim">Home</a></li>-->
            </ul>
        </footer>
    </body>
</html>