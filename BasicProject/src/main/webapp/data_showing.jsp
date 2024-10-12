<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            background-image: url(https://t3.ftcdn.net/jpg/06/30/18/80/360_F_630188009_imkknmuaOXUpXExgCbqhOqKbd4hqmKCY.jpg); 
        }
        .container {
            background-color: white;         
            padding: 20px;
            margin: 40px auto;
            margin-top:100px;
            width: 90%;
            max-width: 1200px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
         
        }
        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: Left;
        }
        th {
            background-color: #f49e13;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        a {
            color: #f49e13;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .actions {
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>User Information</h1>

    <%
        String url = "jdbc:oracle:thin:@localhost:1521:xe";  
        String user = "UMMEY_TOUHIDI";
        String password = "ora123";

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, user, password);

            String query = "SELECT userId, name, email, phoneNumber FROM RegisteredUser";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
    %>

    <table>
        <thead>
            <tr>
                <th>User Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
            </tr>
        </thead>
        <tbody>
            <%
                while (rs.next()) {
                    int userId = rs.getInt("userId");
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String phoneNumber = rs.getString("phoneNumber");
            %>
            <tr>
                <td><%= userId %></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= phoneNumber %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <%
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>

    <div class="actions">
        <p>Update data <a href="UpdateForm.jsp">click here</a></p>
        <p>Insert new data <a href="Index.jsp">click here</a></p>
        <p>Delete Data <a href="DeleteForm.jsp">click here</a></p>
    </div>
</div>

</body>
</html>
