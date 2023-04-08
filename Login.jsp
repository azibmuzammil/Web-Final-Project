
<html>

<head>
        <title>Login</title>

        <style>
                html {
                        background-color: rgb(212, 223, 219);
                        ;
                }

                header {
                        text-align: center;
                        justify-content: center;
                }

                input {
                        border: 2px solid black;
                }
                .center{
                        text-align: center;
                }
        </style>
        <script language="JavaScript" type="text/javaScript">

        // function validate()
        // {       var a=document.Login.Username.value;
        //         if(a=="")
        //         {
        //                 alert("Username is Empty")
        //                 return false;
        //         }
        //         var b=document.Login.Password.value;
        //         if(b=="")
        //         {
        //                 alert("Password is Empty")
        //                 return false;
        //         }
               
        //         return true;
        // }

</script>
</head>
<!-- onSubmit="validate()" -->
<body>
        <header>
                <h1>MyPharma</h1>
        </header>
        <div class="center">
                <form name="Login"  action="Login" method="POST">

                        Username:  &nbsp;<input type="text" name="Username"><br><br>

                        Password: &nbsp;&nbsp;<input type="text" name="Password"><br><br>

                        <input type="submit" value="Login" name="Login">

                </form>
        </div>
</body>

</html>