
<html>

<head>
        <title>Signup</title>
        <style>
                html {
                        background-color: rgb(212, 223, 219);
                }

                header {
                        text-align: center;
                        justify-content: center;
                }

                input {
                        border: 2px solid black;
                }

                .Center {
                        text-align: center;
                }
              
        </style>
        <script language="JavaScript" type="text/javaScript">

        // function validate()
        // {       var a=document.Signup.Username.value;
        //         if(a=="")
        //         {
        //                 alert("Username is Empty");
        //                 return false;
        //         }
        //         var b=document.Signup.Password.value;
        //         if(b=="")
        //         {
        //                 alert("Password is Empty");
        //                 return false;
        //         }
        //         var e=document.Signup.ConfirmPassword.value;
        //         if(e=="")
        //         {
        //                 alert("Enter Confirm Password");
        //                 return false;
        //         }
        //         if(b!=e)
        //         {
        //                 alert("Password and Confirm Password are not same");
        //                 return false;  
        //         }
        //         var c=document.Signup.PhoneNo.value;
        //         if(c=="")
        //         {
        //                 alert("Phone Number is Empty");
        //                 return false;
        //         }
        //         var d=document.Signup.Identity.value;
        //         if(d=="")
        //         {
        //                 alert("Enter your identity");
        //                 return false;
        //         }
                
        //         return true;
        // }
</script>
</head>
<!-- onsubmit="return validate()"  -->
<body>
        <header>
                <h1>MyPharma</h1>
        </header>
        <div class="Center">
                <form name="Signup" action="Signup" method="POST">
                        <div class="input">
                                Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="Username"><br><br>

                                Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Password"><br><br>

                                ConfirmPassword: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="ConfirmPassword"><br><br>

                                Phone Number: &nbsp;<input type="text" name="PhoneNo"><br><br>


                                <p>Enter 1 if you are signing up as an admin or Enter 2 if your are signing up as a user</p>


                                Identity : &nbsp;<input type="text" name="Identity"><br><br>

                
                                <input type="submit" value="Signup" name="Signup">
                        </div>
                        <p>Do you have already an account?<a href="Login.jsp">Login</a></p>

                </form>
        </div>
</body>

</html>