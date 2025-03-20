<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.DatabaseConnection" %>
<%
    int roomId = Integer.parseInt(request.getParameter("id"));
    String name = "", status = "", description = "";

    try (Connection connection = DatabaseConnection.getConnection();
         PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM rooms WHERE id = ?")) {
        preparedStatement.setInt(1, roomId);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            name = resultSet.getString("name");
            status = resultSet.getString("status");
            description = resultSet.getString("description");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Room</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>Edit Room</h1>
    <form action="UpdateRoomServlet" method="post">
        <input type="hidden" name="id" value="<%= roomId %>">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= name %>" required><br>
        <label for="status">Status:</label>
        <input type="text" id="status" name="status" value="<%= status %>" required><br>
        <label for="description">Description:</label>
        <input type="text" id="description" name="description" value="<%= description %>" required><br>
        <button type="submit">Update</button>
    </form>
</body>
</html>
