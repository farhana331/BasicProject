<%@page import="java.sql.Connection,java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission</title>
    <style>
     
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


body {
    font-family: 'Arial', sans-serif;
             background-image: url(https://t3.ftcdn.net/jpg/06/30/18/80/360_F_630188009_imkknmuaOXUpXExgCbqhOqKbd4hqmKCY.jpg);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}


.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
}


.content-box {
    background-color: white;
    border-radius: 15px;
    padding: 40px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 400px;
}

.content-box h2 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
}

.success {
    color: #28a745;
}

.error {
    color: #dc3545;
}

.link {
    text-decoration: none;
    color: #f49e13;
}

.link:hover {
    text-decoration: underline;
}


h2, p {
    transition: all 0.3s ease-in-out;
}
      
    </style>
</head>
<body>
    <div class="container">
        <div class="content-box">
            <%
                String userId = request.getParameter("userId");
                String name = request.getParameter("name");
                String email= request.getParameter("email");
                String phoneNumber= request.getParameter("phoneNumber");

                Connection conn = null; 
                PreparedStatement pstmt = null;
                String dbURL = "jdbc:oracle:thin:@localhost:1521:xe"; 
                String dbUser = "UMMEY_TOUHIDI"; 
                String dbPass = "ora123"; 

                try {
            
                    Class.forName("oracle.jdbc.driver.OracleDriver");

                    conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

                    String sql = "INSERT INTO RegisteredUser (userId, name, email, phoneNumber) VALUES (?, ?, ?, ?)"; 

                    pstmt = conn.prepareStatement(sql); 
                    pstmt.setString(1, userId); 
                    pstmt.setString(2, name); 
                    pstmt.setString(3, email); 
                    pstmt.setString(4, phoneNumber); 
                    
             
                    int rows = pstmt.executeUpdate();
                    if (rows > 0) {
                        out.println("<h2 class='success'>Data successfully inserted!</h2>");
                    } else {
                        out.println("<h2 class='error'>Failed to insert data!</h2>");
                    }
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    out.println("<h2 class='error'>Error loading database driver!</h2>");
                } catch (SQLException e) {
                    e.printStackTrace();
                    out.println("<h2 class='error'>Database error occurred: " + e.getMessage() + "</h2>");
                } finally {
                    try {
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
            <p>If you want to see the data table, <a href="data_showing.jsp" class="link">click here.</a></p>
        </div>
    </div>
</body>
</html>
