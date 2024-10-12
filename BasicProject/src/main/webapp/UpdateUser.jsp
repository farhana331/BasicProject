<%@page import="java.sql.Connection,java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Result</title>
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
            margin: 160px auto;
            width: 50%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2, h3 {
            color: #333;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            background-color: #f49e13;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #efbf73;
        }
    </style>
</head>
<body>

<div class="container">
<%
    String userId = request.getParameter("userId");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phoneNumber = request.getParameter("phoneNumber");

    if ((name == null || name.trim().isEmpty()) &&
        (email == null || email.trim().isEmpty()) &&
        (phoneNumber == null || phoneNumber.trim().isEmpty())) {
        out.println("<h2>Please provide at least one field to update.</h2>");
        return;
    }

    Connection conn = null;
    PreparedStatement pstmt = null;
    String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbUser = "UMMEY_TOUHIDI"; 
    String dbPass = "ora123";
    
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");

        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

        StringBuilder sql = new StringBuilder("UPDATE RegisteredUser SET ");
        boolean isFirst = true;

        if (name != null && !name.trim().isEmpty()) {
            sql.append("name = ?");
            isFirst = false;
        }

        if (email != null && !email.trim().isEmpty()) {
            if (!isFirst) sql.append(", ");
            sql.append("email = ?");
            isFirst = false;
        }

        if (phoneNumber != null && !phoneNumber.trim().isEmpty()) {
            if (!isFirst) sql.append(", ");
            sql.append("phoneNumber = ?");
        }

        sql.append(" WHERE userId = ?");

       

        pstmt = conn.prepareStatement(sql.toString());

        int paramIndex = 1;
        if (name != null && !name.trim().isEmpty()) {
            pstmt.setString(paramIndex++, name);
        }
        if (email != null && !email.trim().isEmpty()) {
            pstmt.setString(paramIndex++, email);
        }
        if (phoneNumber != null && !phoneNumber.trim().isEmpty()) {
            pstmt.setString(paramIndex++, phoneNumber);
        }
        pstmt.setString(paramIndex, userId); 

        int rows = pstmt.executeUpdate();

        if (rows > 0) {
            out.println("<h2>Data successfully updated!</h2>");
        } else {
            out.println("<h2>Failed to update data. User ID may not exist.</h2>");
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
<a href="data_showing.jsp">see updates</a>
</div>

</body>
</html>
