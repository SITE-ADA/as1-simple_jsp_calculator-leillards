<%@ page errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .container{
        margin-top: 100px;
        display: flex;
        justify-content: center;
    }

    .design{
        width: 60px;
        height: 60px;
        display: flex;
        justify-content: center;
        border-radius: 1px;
        align-items: center;
        border: 1px solid black;
        font-size: 30px;
        font-weight: 550;
        color: #000;
        background-color: greenyellow;
    }
    .design + .design{ 
        margin-left: 25px;
    }
    .header{
        text-align: center;
    }
    a{
        background-color: gold;
        border: 1px solid greenyellow;
        border-radius: 5px;
        padding: 15px 20px;
        text-decoration: none;
        color: red;
        font-weight: bold;
        transition: 0.3s;
    }
    a:hover{
        background-color: red;
        color: gold;
        border-color: transparent;
    }
</style>
<body>
    <% String  op = request.getParameter("op"); %>
    <% String  p1 = request.getParameter("p1"); %>
    <% String  p2 = request.getParameter("p2"); %>

    <% 

    int result;
    int num1 = Integer.parseInt(p1);
    int num2= Integer.parseInt(p2);
    
    
    if (!op.equals("div") && !op.equals("add") && !op.equals("sub") && !op.equals("mul"))
    {
        throw new Exception("Op code not valid");
    }
    else {
        if(op.equals("div")){
            op = "/";
            result = num1/num2;
    }
    else if(op.equals("add")){
            op="+";
            result=num1+num2;
    }
        else if (op.equals("mul")){
            op="*";
            result=num1*num2;
        }
        else {
            op="-";
            result=num1-num2;
        }
    }
    

    %>

    <h1 class="header">Welcome to my calculator</h1>


         <div class="container">
            <div class="design">
                <%=p1 %>
             </div>
             <div class="design" style="background-color: #fff;border: none;">
                <%=op %>
             </div>
             <div class="design">
                <%=p2 %>
             </div>
             <div class="design" style="background-color: #fff;border: none;">
                    =
            </div>
             <div class="design">
                <%=result %>
             </div>

         </div>
         <br>
         <br>
         <a href="/hw1/browser.jsp">Browser information</a>

    
</body>
</html>