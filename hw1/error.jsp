<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error page</title>
</head>
<style>
    p{
        font-size: 22px;
    }
    span{
        font-weight: bold;
        color: red;
        text-decoration: underline;
    }
</style>
<body>

        <h1 style="text-align: center;">Error happens</h1>
        <p>
            You have an <span>${pageContext.exception}</span> error
        </p>
    
</body>
</html>