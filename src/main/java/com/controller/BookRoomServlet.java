package com.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.util.DatabaseConnection;

import jakarta.servlet.ServletException; 
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class BookRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String arrival = request.getParameter("arrival");
        String departure = request.getParameter("departure");
        String fullName = request.getParameter("fullName");
        String chambreName = request.getParameter("chambreName");

        // Database insert query
        String insertQuery = "INSERT INTO bookings (arrival_date, departure_date, full_name, chambre_name) VALUES (?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {

            // Set parameters
            preparedStatement.setString(1, arrival);
            preparedStatement.setString(2, departure);
            preparedStatement.setString(3, fullName);
            preparedStatement.setString(4, chambreName);

            // Execute update
            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
                // Redirect to index.jsp after successful booking
                response.sendRedirect("index.jsp");
            } else {
                // Redirect to error.jsp on failure
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
