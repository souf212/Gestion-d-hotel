package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.util.DatabaseConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        String description = request.getParameter("description");

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "INSERT INTO rooms (name, status, description) VALUES (?, ?, ?)")) {

            preparedStatement.setString(1, name);
            preparedStatement.setString(2, status);
            preparedStatement.setString(3, description);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect back to the listing page
        response.sendRedirect("RoomAvailabilityServlet");
    }
}
