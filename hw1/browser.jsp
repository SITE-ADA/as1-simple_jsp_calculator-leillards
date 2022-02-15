<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browser information</title>
</head>
<style>
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
    h2 span {
        font-size: 18px;
        font-weight: 500;
    }
</style>
<body>
    
    <% String client = request.getHeader("User-Agent"); %> 
    <br>
    <a href="/hw1?op=add&p1=5&p2=8">Back to Calulator</a>
    <br>
    <br>
    <br>
    <h2>Browser info: <span><%=client%></span></h2>

</body>
</html>