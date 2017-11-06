<%-- 
    Document   : AdminMenu
    Created on : 25 Jan, 2017, 2:19:20 PM
    Author     : Dear Kallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="icon" type="image/jpg" href="image/a.jpg" >
        <script type="text/javascript" src="image/jquery-1.8.3.min.js">
            
        </script>
        <script type="text/javascript">
            $(document).ready(function (){
                $("#main ul").hide();
                $("#main li a").mouseenter(function (){
                    $(this).next().slideToggle();
                });  
            }); 
        </script>

        <style>
            ul li {
                
                list-style-type: none;
                
               
            }
            a{
                padding-top:0px;
                padding-bottom: 0px;
                padding-left: 5px;
                padding-right: 5px;
                margin: 0;
                 border:1px solid #ccc;
               margin-bottom:30px;
               
                
            }
            a:hover
            {
            background-color:#5E9DC9;
            }
            
        </style>
        
        <jsp:useBean id="objlogout" class="models.LogoutModel"/>
    </head>
    <body bgcolor="cyan">
        
        <div id="maind" style=" position: absolute; background-color: greenyellow; 
             background-image: url(image/background.gif); background-size: 100% 200px;
             background-repeat: repeat-x; 
             width: 100%; height: 200px; ">
            <label style=" position: inherit; float: right; right:25px;"><%= objlogout.getLogoutButton(session, response, "LogoutController") %></label>
            <p style="font-size: 40px; font-family: fantasy; 
               color: yellow;
               " align="center">Admin page</p>
            
            </div>
        
                
                   
                
             
            
           
        
        <div id="below" style="position: relative; top: 200px; margin-left: 30px; margin-right: 30px;background-color: white; ">
            <div id="below2" style="width: 100%;  overflow: hidden;" >
                <a href="index.jsp" style="margin-top: 0px; overflow:  ">Home</a>|
               
                
            <ul id="main" style=" margin-top: -20px;margin-left: 10px;  font-size: 1.1em;
                       list-style-type: none; " >
                <li><a href="">  Master | </a>
                            <ul>
                                <li><a>Register User</a>
                                    <ul>
                                        <li><a href="admin/CreateUser1.jsp" target="frame2">Create</a></li>
                                    </ul>
                                </li>
                                <li ><a>Theater</a>
                                    <ul>
                                        <li><a href="admin/CreateTheater.jsp" target="frame2">Create</a></li>
                                        
                                           
                                    </ul>
                                </li>
                                
                                <li><a >Hall</a>
                                    <ul>
                                        <li><a href="admin/CreateHall.jsp" target="frame2">Create</a></li>
                                        
                                        
                                    </ul>
                                </li>
                                <li><a>Seat</a>
                                    <ul>
                                        <li><a href="admin/CreateSeat.jsp" target="frame2">Create</a></li>
                                        
                                        
                                    </ul>
                                    
                                </li>
                                <li><a>LayoutPlan</a>
                                    <ul>
                                        <li><a href="admin/CreateLayoutPlan1.jsp" target="frame2">Create</a></li>
                                    </ul>
                                    
                                </li>
                                <li><a>Movie</a>
                                    <ul>
                                        <li><a href="admin/MovieCreateForm1.jsp" target="frame2">Create</a></li>
                                    </ul>
                                    
                                </li>
                                <li><a>Snack</a>
                                    <ul>
                                        <li><a href="admin/SnackCreateForm1.jsp" target="frame2">Create</a></li>
                                    </ul>
                                    
                                </li>
                                <li><a>Change Password</a>
                                    <ul>
                                        <li><a href="admin/ChangePassword.jsp" >Change</a></li>
                                    </ul>
                                    
                                </li>
                                <li><a>View Log By User</a>
                                    <ul>
                                        <li><a href="admin/ViewLogByUser.jsp" target="frame2" >Show</a></li>
                                        <li><a href="LoggerDeleteController">Delete</a></li>
                                    </ul>
                                    
                                </li>
                            </ul>
                        </li>
                    </ul>
                 
                </div>
           
         <iframe name="frame2"   width="100%" height="500" 
                 style="background-color: cyan;" frameborder="0"  > 
                
            </iframe>
        </div>
        
        
    </body>
</html>
