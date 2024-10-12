
<%@ page language="java" contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8"%> 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID and Name Form</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    height: 100vh;
    margin: 0;
}


.background-container {
    background-image: url('https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0');
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background: rgba(255, 255, 255, 0.8);
    border-radius: 20px;
    padding: 40px;
    width: 400px;
    box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);
}

.header h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    font-size: 14px;
    margin-bottom: 8px;
    color: #333;
}

input[type="text"],
input[type="email"] {
    padding: 12px;
    margin-bottom: 20px;
    border-radius: 10px;
    border: 1px solid #ddd;
    font-size: 16px;
}

input[type="submit"] {
    padding: 12px;
    border: none;
    background-color: #f49e13;
    color: white;
    font-size: 16px;
    border-radius: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #efbf73;
}


.footer {
    text-align: center;
    margin-top: 20px;
}

.footer a {
    color: #f49e13;
    text-decoration: none;
    font-weight: bold;
}

.footer a:hover {
    text-decoration: underline;
}


</style>
</head>

<body>
 <div class="background-container">
        <div class="form-container">
            <div class="header">
                <h2>Add User</h2>
            </div>
            <form action="SubmitForm.jsp" method="post">
                <label for="userId">User ID:</label>
                <input type="text" id="userId" name="userId" required>

                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phoneNumber">Phone Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" required>

                <input type="submit" value="Submit">
            </form>
            <div class="footer">
                <p>If you want to see the data table, <a href="data_showing.jsp">click here.</a></p>
            </div>
        </div>
    </div>
</body>
</html>