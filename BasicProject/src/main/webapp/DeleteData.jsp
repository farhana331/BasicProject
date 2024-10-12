<%@page import="java.sql.Connection,java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://t3.ftcdn.net/jpg/06/30/18/80/360_F_630188009_imkknmuaOXUpXExgCbqhOqKbd4hqmKCY.jpg);
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            margin: 150px auto;
            width: 50%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: black;
        }
        .link {
            text-decoration: none;
            color: #f49e13;
}

         .link:hover {
            text-decoration: underline;
}
    </style>
</head>
<body>

<div class="container">
<%
    String userId = request.getParameter("userId");

    Connection conn = null;
    PreparedStatement pstmt = null;
    String dbURL = "jdbc:oracle:thin:@localhost:1521:xe"; 
    String dbUser = "UMMEY_TOUHIDI";
    String dbPass = "ora123"; 

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");

        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

        String sql = "DELETE FROM RegisteredUser WHERE userId = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId); 

        int rows = pstmt.executeUpdate();

        if (rows > 0) {
            out.println("<h2>User with ID " + userId + " successfully deleted!</h2>");
        } else {
            out.println("<h2>User ID not found. No data deleted.</h2>");
        }

    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        out.println("<h2>Error loading database driver!</h2>");
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<h2>Database error occurred: " + e.getMessage() + "</h2>");
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<p>If you want to show the data table <a href="data_showing.jsp" class="link">click here.</a></p>
</div>

</body>
</html>
