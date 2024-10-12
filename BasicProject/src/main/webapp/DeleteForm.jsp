<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
             background-image: url(https://t3.ftcdn.net/jpg/06/30/18/80/360_F_630188009_imkknmuaOXUpXExgCbqhOqKbd4hqmKCY.jpg);
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            margin: 80px auto;
            width: 40%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label, input {
            width: 100%;
            max-width: 400px;
            margin-bottom: 15px;
        }
        input[type="text"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #f49e13;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 200px;
        }
        input[type="submit"]:hover {
            background-color: #efbf73;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Delete User</h2>
    <form action="DeleteData.jsp" method="post">
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId" required>

        <input type="submit" value="Delete User">
    </form>
</div>

</body>
</html>
