<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String arrival = "", departure = "", fullName = "", chambreName = "";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet_jee", "root", "zxcvbnm");
        String query = "SELECT * FROM bookings WHERE id = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            arrival = resultSet.getString("arrival_date");
            departure = resultSet.getString("departure_date");
            fullName = resultSet.getString("full_name");
            chambreName = resultSet.getString("chambre_name");
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Booking</title>
    <link rel="stylesheet" type="text/css" href="css/styless.css">
</head>
<body>
    <h1>Edit Booking</h1>
    <form method="post" action="EditBookingServlet">
        <input type="hidden" name="id" value="<%= id %>">
        <label>Arrival Date:</label>
        <input type="date" name="arrival" value="<%= arrival %>" required><br>
        <label>Departure Date:</label>
        <input type="date" name="departure" value="<%= departure %>" required><br>
        <label>Full Name:</label>
        <input type="text" name="fullName" value="<%= fullName %>" required><br>
        <label>Chambre Name:</label>
        <input type="text" name="chambreName" value="<%= chambreName %>" required><br>
        <button type="submit">Update Booking</button>
    </form>
</body>
</html>