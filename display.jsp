<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registered students</title>
    <style>
    body {
background-image:url("https://cdn.pixabay.com/photo/2021/02/12/10/56/background-6008188_1280.png");
background-size:100%;
background-repeat:no-repeat;
background-position:cover;
font-size:15pt;
color:darkblack;

}
}</style>
</head>
<body>
    <h2 align="center"> Data</h2>
    <table border="1" align="center">
        <tr>
            <th>name</th>
            <th>email</th>
            <th>phone</th>
            <th>college</th>
            <th>course</th>
        </tr>
        <%
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Connection parameters
                String jdbcUrl = "jdbc:mysql://localhost:3306/course";
                String user = "root";
                String password = "Archana@123";

                // Establish the database connection
                java.sql.Connection conn = java.sql.DriverManager.getConnection(jdbcUrl, user, password);

                // Create a statement
                java.sql.Statement stmt = conn.createStatement();
// Execute the query
                String sqlQuery = "SELECT * FROM course";
                java.sql.ResultSet rs = stmt.executeQuery(sqlQuery);

                // Display the data
                while (rs.next()) {
                    
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    String college = rs.getString("college");
                    String course = rs.getString("course");
                    
        %>
        <tr>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%= phone %></td>
            <td><%= college %></td>
            <td><%= course %></td>
        </tr>
        <%
                }
                // Clean up resources
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                out.println("An error occurred: " + e.getMessage());
            }
        %>
    </table>
</body>
</html>