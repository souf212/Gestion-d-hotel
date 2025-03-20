<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.controller.Room" %>
<%@ page import="com.util.DatabaseConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Availability</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>Room Availability</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Status</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Room> rooms = new ArrayList<>();
                try (Connection connection = DatabaseConnection.getConnection();
                     PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM rooms")) {
                    ResultSet resultSet = preparedStatement.executeQuery();
                    while (resultSet.next()) {
                        Room room = new Room();
                        room.setId(resultSet.getInt("id"));
                        room.setName(resultSet.getString("name"));
                        room.setStatus(resultSet.getString("status"));
                        room.setDescription(resultSet.getString("description"));
                        rooms.add(room);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

                if (!rooms.isEmpty()) {
                    for (Room room : rooms) {
            %>
            <tr>
                <td><%= room.getId() %></td>
                <td><%= room.getName() %></td>
                <td><%= room.getStatus() %></td>
                <td><%= room.getDescription() %></td>
                <td>
                    <a href="editRoom.jsp?id=<%= room.getId() %>">Edit</a>
                    <a href="DeleteRoomServlet?id=<%= room.getId() %>" 
                       onclick="return confirm('Are you sure you want to delete this room?');">Delete</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No rooms found.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <form action="admin.jsp" method="get" style="display: inline;">
        <button type="submit">Return</button>
    </form>
</body>
</html>
