<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Bookings</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>All Bookings</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Arrival</th>
                <th>Departure</th>
                <th>Full Name</th>
                <th>Chambre Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_jee", "root", "zxcvbnm");
                    statement = connection.createStatement();
                    String query = "SELECT * FROM bookings";
                    resultSet = statement.executeQuery(query);
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String arrival = resultSet.getString("arrival_date");
                        String departure = resultSet.getString("departure_date");
                        String fullName = resultSet.getString("full_name");
                        String chambreName = resultSet.getString("chambre_name");
            %>
            <tr>
                <td><%= id %></td>
                <td><%= arrival %></td>
                <td><%= departure %></td>
                <td><%= fullName %></td>
                <td><%= chambreName %></td>
                <td>
                    <a href="editBooking.jsp?id=<%= id %>">Edit</a>
               <a href="DeleteBookingServlet?id=<%= id %>" onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
 </td>
 
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (resultSet != null) resultSet.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                }
            %>
        </tbody>
  </table>
    <form action="admin.jsp" method="get" style="display: inline;">
        <button type="submit">Return</button>
    </form>
</body>
</html>
