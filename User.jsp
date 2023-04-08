<%@ page session="false"%>
	<% HttpSession session = request.getSession(false);

		if(session==null)
		{
			response.sendRedirect("Login.jsp");
		}
		else if(session!=null)
		{
                        String role = (String) session.getAttribute("Identity");
                        
                        if(!role.equals("2"))
                        {
                                response.sendRedirect("Admin.jsp");
                        }
			
		}
	%>
<html>

<head>
        <title>User</title>

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

        function validate1()
        {       var a=document.Search1.Medicine_Name.value;
                if(a=="")
                {
                        alert("Medicine_Name is Empty")
                        return false;
                }
                return true;
        }

        function validate2()
        {       var a=document.Select.Medicine_Name.value;
                if(a=="")
                {
                        alert("Medicine_Name is Empty")
                        return false;
                }
                return true;
        }
</script>
</head>

<body>
        <header>
                <h1>MyPharma</h1>
        </header>
        <div class="center">
                <form name="Search1" onsubmit="return validate1()" action="Search1" method="POST">
                        <h1>Search Medicine</h1>

                        Medicine name:  &nbsp;<input type="text" name="Medicine_Name"><br><br>

                        <input type="submit" value="Search" name="Search">

                </form>

                <form name="Select" onsubmit="return validate2()" action="Select" method="POST">
                    <h1>Select Medicine</h1>

                        Medicine name:  &nbsp;<input type="text" name="Medicine_Name"><br><br>


                        <input type="submit" value="Select" name="Select">
                </form>
                <form name="Delete" action="Logout" method="get">
                        <input type="submit" value="Logout" name="Logout" >
                    </form>
        </div>
</body>

</html>