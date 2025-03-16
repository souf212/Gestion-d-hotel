package com.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.util.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
public class UpdateRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int roomId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        String description = request.getParameter("description");

        String updateQuery = "UPDATE rooms SET name = ?, status = ?, description = ? WHERE id = ?";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {

            // Set parameters for the prepared statement
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, status);
            preparedStatement.setString(3, description);
            preparedStatement.setInt(4, roomId);

            // Execute the update query
            int rowsUpdated = preparedStatement.executeUpdate();

            if (rowsUpdated > 0) {
                // Redirect back to the room availability page
                response.sendRedirect("roomAvailability.jsp");
            } else {
                // Redirect to an error page if update fails
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
