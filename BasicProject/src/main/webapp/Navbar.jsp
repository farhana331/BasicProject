<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar Example</title>
    <style type="text/css">
    *{
    padding: 0;
    margin: 0;
    font-family: 'josefin Sans', sans-serif;
    box-sizing: border-box;

}
.demo{
    height: 100vh;
    width: 100%;
    background-image: url(https://www.bsr.org/images/heroes/bsr-travel-hero..jpg);
    background-size: cover;
    background-position: center;
}
nav{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-top: 45px;
    padding-left: 8%;
    padding-right: 8%;
}
.demo1{
    color: white;
    font-size: 35px;
    letter-spacing: 1px;
    cursor: pointer;
}
span{
    color: rgb(194, 249, 162);
}
nav ul li{
    list-style-type: none;
    display: inline-block;
    padding: 10px 25px;
}
nav ul li a{
    color: black;
    text-decoration: none;
    font-weight: bold;
    text-transform: capitalize;
}
nav ul li a:hover{
    color: yellowgreen;
    transition: .4s;
}

.sub{
    background-color: rgb(194, 249, 162);
    color: white;
    text-decoration: none;
    border: 2px solid transparent;
    font-weight: bold;
    padding: 10px 25px;
    border-radius: 30px;
    transition: transform .4s;
}
.sub:hover{
    transform: scale(1.2);
}
.content{
    position: absolute;
    top: 50%;
    left: 8%;
    transform: translateY(-50%);
}
h2{
    color: white;
    margin: 20px 0px 20px;
    font-size: 60px;

}
h3{
    color: white;
    font-size: 25px;
    margin-bottom: 50px;
}
h1{
    color: #fcfc;
    letter-spacing: 2px;
    font-size: 50px;
}
.newslatter form{
    width: 380px;
    max-width: 100%;
    position: relative;
}
.newslatter form input:first-child{
    display: inline-block;
    width: 100%;
    padding: 14px 130px 14px 15px;
    border: 2px solid greenyellow;
    outline: none;
    border-radius: 30px;
}
.newslatter form input:last-child{
    position: absolute;
    display: inline-block;
    outline: none;
    border: none;
    padding: 10px 30px;
    border-radius: 30px;
    background-color:  rgb(194, 249, 162);
    color: white;
    box-shadow: 0px 0px 5px #000, 0px 0px 15px #858585;
    top: 6px;
    right: 6px;
}

    
    </style>

</head>
<body>

 <div class="demo">
        <nav>
        <h2 class="demo1">EXPLORE<span>WORLD</span></h2>
      
        <ul>
            <li><a href="Destination.jsp">Destination</a></li>
            <li><a href="AboutUs.jsp">About Us</a></li>
            <li><a href="Index.jsp">Dashboard</a></li>
            
           
           
            
        </ul>
      
    </nav>
     <div class="content">
        <h1>Say yes</h1>
        <h2>TO YOUR <span>VACATION</span></h2>
        <h3>Traveling is not just a journey,<br>
        It's a way of life. Just explore your<br>
        next destination with us.</h3>
        

    </div>
    </div>
    
    
    

</body>
</html>