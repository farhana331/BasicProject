<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Destination</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.card-container {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin: 20px;
}

.card {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    width: 250px;
    margin: 10px;
    transition: transform 0.3s ease;
}

.card:hover {
    transform: scale(1.05);
}

.card-image {
    width: 100%;
    height: 150px;
    object-fit: cover;
}

.card-content {
    padding: 15px;
    text-align: center;
}

.card h3 {
    margin-bottom: 10px;
    font-size: 1.2em;
}

.card p {
    color: #555;
    margin-bottom: 15px;
}

.view-more {
    background-color: #f49e13;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1em;
    transition: background-color 0.3s ease;
}

.view-more:hover {
    background-color: #efbf73;
}


</style>
</head>
<body>

<div class="card-container">
    <div class="card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq1VLkIFqGkDaUZdGpjdqQNelObTdbLzAtFQ&s" alt="Paris" class="card-image">
        <div class="card-content">
            <h3>Paris</h3>
            <p>France</p>
            
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="https://theportablewife.com/wp-content/uploads/kyoto-2-day-itinerary-kiyomizustairs.jpg" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Kyoto</h3>
            <p>Japan</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="https://www.planetware.com/photos-large/GR/greece-santorini-fira-view-out-to-sea.jpg" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Santorini</h3>
            <p>Greece</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="https://b40network.org/wp-content/uploads/2021/11/shutterstock_1867081099-1.jpg" class="card-image">
        <div class="card-content">
            <h3>Istanbul</h3>
            <p>Turkey</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    <div class="card">
        <img src="https://i.pinimg.com/736x/b9/6c/5d/b96c5df07518af03f4fe87193b036ebb.jpg" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Venice</h3>
            <p>Italy</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="	https://ichef.bbci.co.uk/images/ic/480xn/p0gp95cq.jpg.webp" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Sydney</h3>
            <p>Australia</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="	https://cdn.properties.emaar.com/wp-content/uploads/2024/08/Burj-Khalifa-1.jpg" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Dubai</h3>
            <p>UAE</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="	https://t3.ftcdn.net/jpg/06/20/94/74/360_F_620947478_o3NZPkUaw19AxK1MMQgb2gLmcARyMYeO.jpg
" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Reykjavik</h3>
            <p>Iceland</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="https://img1.10bestmedia.com/Images/Photos/378847/GettyImages-1085317916_55_660x440.jpg" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Barcelona</h3>
            <p>Spain</p>
            <button class="view-more">View More</button>
        </div>
    </div>
    
    <div class="card">
        <img src="	https://www.britishairways.com/badp/static/external/MV-MLE-6667000/11_MV-MLE-6667000-H2007.jpeg" alt="Randsfjorden" class="card-image">
        <div class="card-content">
            <h3>Baa Atoll</h3>
            <p>Maldives</p>
            <button class="view-more">View More</button>
        </div>
    </div>

</div>


</body>
</html>