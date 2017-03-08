<%-- 
    Document   : Registration
    Created on : Mar 7, 2017, 10:27:34 PM
    Author     : ACE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Registration</title>

        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        
        <section>				
            <div id="container_demo" >

                
                <div id="wrapper">
                    
                    
                    <div class="animate form">
                        <form  action="Registration" autocomplete="on" method="post"> 
                            <h1> Sign up </h1> 
                            <p> 
                                <label>Your username</label>
                                <input  name="usernamesignup" type="text" placeholder="eg. mysuperusername690" />
                            </p>
                            <p> 
                                <label>Your password </label>
                                <input  name="passwordsignup"  type="password" placeholder="eg. X8df!90EO"/>
                            </p>
                            <p> 
                                <label>Your City</label>
                                <input  name="usercitysignup"  type="text" placeholder="eg. Khulna" />
                            </p>
                            <p> 
                                <label>Your Contact Number</label>
                                <input name="userphnsignup"  type="text" placeholder="eg. 01712..."/> 
                            </p>
                       
                            <p class="signin button"> 
                                <input type="submit" value="Sign up"/> 
                            </p>
                            <p class="change_link">  
                                Already a member ?
                                <a href="Login.jsp"> Go and log in </a>
                            </p>
                        </form>
                    </div>

                </div>
            </div>  
        </section>
    </body>
</html>
