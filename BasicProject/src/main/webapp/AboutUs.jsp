<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

<style type="text/css">
*{
    padding: 0;
    margin: 0;
    font-family: 'josefin Sans', sans-serif;
    box-sizing: border-box;

}

.about img{
    height: auto;
    width: 430px;
}
.about img{
    height: auto;
    width: 430px;
}
.about-text{
    width: 450px;
}
.main{
    width: 1130px;
    max-width: 95%;
    margin: 0 auto;
    display: flex;
    align-items: center;
    justify-content: space-around;

}
.about-text h2{
    color: rgb(65, 45, 45);
    font-size: 75px;
    text-transform: capitalize;
    margin-bottom: 20px;
}
.about-text h5{
    color: rgb(79, 41, 6);
    letter-spacing: 2px;
    font-size: 22px;
    margin-bottom: 25px;
    text-transform: capitalize;
}
.about-text p{
    color: w;
    letter-spacing: 1px;
    line-height: 28px;
    font-size: 18px;
    margin-bottom: 45px;
}
button{
    background-color: yellowgreen;
    color: white;
    text-decoration: none;
    border: 2px solid transparent;
    font-weight: bold;
    padding: 13px 30px;
    border-radius: 30px;
    transition: .4s;
}
button:hover{
    background-color: transparent;
    border: 2px solid yellowgreen;
    cursor: pointer;
}

.service{
  background-image: url(https://www.bsr.org/images/heroes/bsr-travel-hero..jpg);
    width: 100%;
    padding: 100px 0px;

}
.title h2{
    color: white;
    font-size: 75px;
    width: 1130px;
    margin: 30px auto;
    text-align: center;
}
.box{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 400px;
}
.card{
    height: 365px;
    width: 335px;
    padding: 20px 35px;
    background:  rgb(221, 197, 138);
    border-radius: 20px;
    margin: 15px;
    position: relative;
    overflow: hidden;
    text-align: center;


}
.card i{
    font-size: 50px;
    display: block;
    text-align: center;
    margin: 25px 0px;
    color: yellowgreen;
}
h5{
    color: black;
    font-size: 15px;
    margin-bottom: 15px;
}
.pra p{
    color: rgb(65, 45, 45);
    font-size: 16px;
    line-height: 27px;
    margin-bottom: 25px;
}
.card .button{
    background-color:  rgb(107, 84, 26);
    color: white;
    text-decoration: none;
    border: 2px solid transparent;
    font-weight: bold;
    padding: 9px 22px;
    border-radius: 30px;
    transition: .4s;
}
.card .button:hover{
    background-color: transparent;
    border: 2px solid yellowgreen;
    cursor: pointer;

</style>
</head>
<body>
<section class="about">
    <div class="main">
<img  src="	https://img.freepik.com/premium-photo/travel-bag-w…ound-summer-holiday-vacation-co_1016228-10899.jpg">           
 <div class="about-text">
                <h2>About Us</h2>
                <h5>TRAVEL <span> AGENCY</span></h5>
                <p>Welcome to EXPLOREWORLD!

At EXPLOREWORLD, we believe that travel is not just
 about reaching a destination; it's about the experiences, connections,
  and stories you create along the way. Founded in [Year], our mission is
   to inspire wanderlust and empower travelers to explore the world, one
    adventure at a time.

Our team is made up of passionate travel enthusiasts who have roamed
 across continents, exploring hidden gems and iconic landmarks alike. 
 We’re here to share our knowledge, tips, and insider secrets to help 
 you make the most of your journeys, whether you’re a seasoned globetrotter or
  planning your first getaway. 
                </p>
              
            </div>
        </div>
  </section>
  
  
    <div class="service">
        <div class="title">
            <h2>Our Services</h2>
        </div>
        <div class="box">
          <div class="card">
            <i class="fas fa-bars"></i>
            <h5>Affordable Tour</h5>
            <div class="pra">
                <p>Experience the world with our affordable tours, tailored to fit 
                your budget without compromising on adventure.Embark on unforgettable 
                journeys that prioritize both excitement and value, ensuring that every
                 moment is filled with rich experiences and lasting memories, 
                </p>
                <p style="text-align: center;">
                <a class="button" href="#">Read More</a>
            </p>
            </div>
          </div>
          <div class="card">
            <i class="far fa-user"></i>
            <h5>Expert Guides</h5>
            <div class="pra">
                <p>Comprehensive travel guides to destinations around the world.
                We can provide you with a safe and secure tour, ensuring a
                 worry-free and enjoyable experience.From detailed itineraries to
                  insider tips, we are here to make your travel dreams a reality.
                </p>
                <p style="text-align: center;">
                <a class="button" href="#">Read More</a>
            </p>
            </div>
          </div>
          <div class="card">
            <i class="far fa-bell"></i>
            <h5>Community</h5>
            <div class="pra">
                <p> A space for fellow travelers to connect, share stories, 
                and inspire one another.
               Together, well build a vibrant network of explorers who celebrate
                travel and support each other’s adventures. us in forging friendships and creating lasting memories together.
                </p>
                <p style="text-align: center;">
                <a class="button" href="#">Read More</a>
            </p>
            </div>
          </div>
        </div>
    </div>

</body>
</html>