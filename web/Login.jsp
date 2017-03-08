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
        <title>Log In</title>

        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <section>				
            <div id="container_demo" >

            
                <div id="wrapper">
                    <div id="Login" class="animate form">
                        <form  action="Login" autocomplete="on" method="post"> 
                            <h1>Log in</h1>
                                     
                            <p>${param.message}</p>
                            <p> 
                                <label for="username" class="uname" > Your email or username </label>
                                <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                            </p>
                            <p> 
                                <label for="password" class="youpasswd"> Your password </label>
                                <input id="password" name="userpassword" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                            </p>
                            <p class="keeplogin"> 
                                <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
                                <label for="loginkeeping">Keep me logged in</label>
                            </p>
                            <p class="login button"> 
                                <input type="submit" value="Login" /> 
                            </p>
                            <p class="change_link">
                                Not a member yet ?
                                <a href="Registration.jsp">Join us</a>
                            </p>
                        </form>
                    </div>

                  

                </div>
            </div>  
        </section>
    </body>
</html>
