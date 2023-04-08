<%@ page session="false"%>
<% HttpSession session = request.getSession(false);

		if(session==null)
		{
			response.sendRedirect("Login.jsp");
		}
		else if(session!=null)
		{
                        String Identity = (String) session.getAttribute("Identity");
                        
                        if(!Identity.equals("1"))
                        {
                                response.sendRedirect("Login.jsp");
                        }
			
		}
%>

<html>

<head>
        <title>Admin</title>

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
        {       var a=document.Add.Medicine_Name.value;
                if(a=="")
                {
                        alert("Medicine name is Empty");
                        return false;
                }
                var b=document.Add.Price.value;
                if(document.Add.Price.value=="")
                {
                        alert("Price is Empty");
                        return false;
                }
               
                return true;
        }

        function validate2()
        {       var a=document.Search.Medicine_Name.value;
                if(a=="")
                {
                        alert("Medicine name is Empty");
                        return false;
                }
               
                return true;
        }

        function validate3()
        {       var a=document.Update.Medicine_Name.value;
                if(a=="")
                {
                        alert("Medicine name is Empty");
                        return false;
                }
               
                return true;
        }

        function validate4()
        {       var a=document.Delete.Medicine_Name.value;
                if(a=="")
                {
                        alert("Medicine name is Empty");
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
                <form name="Add" onsubmit="return validate1()" action="Add" method="POST">
                        <h1>Add Medicine</h1>

                        Medicine name:  &nbsp;<input type="text" name="Medicine_Name"><br><br>
                        Price:  &nbsp;<input type="text" name="Price"><br><br>

                        <input type="submit" value="Add" name="Add">
                    </form>
                    <form name="Search" onsubmit="return validate2()" action="Search" method="POST">
                        <h1>Search Medicine</h1>

                        Medicine name:  &nbsp;<input type="text" name="Medicine_Name"><br><br>

                        <input type="submit" value="Search" name="Search">
                    </form>

                    <form name="Update" onsubmit="return validate3()" action="Update" method="POST">
                        <h1>Update Medicine</h1>
                        Medicine_Name:  &nbsp;<input type="text" name="Medicine_Name"><br><br>

                        new Price:  &nbsp;<input type="text" name="Price"><br><br>

                        <input type="submit" value="Update" name="Update">
                    </form>

                    <form name="Delete" onsubmit="return validate4()" action="Delete" method="POST">
                        <h1>Delete Medicine</h1>

                        Medicine name:  &nbsp;<input type="text" name="Medicine_Name"><br><br>

                        <input type="submit" value="Delete" name="Delete">
                    </form>

                    <form name="Logout" action="Logout" method="get">
                        <input type="submit" value="Logout" name="Logout" >
                    </form>

                
        </div>
</body>

</html>