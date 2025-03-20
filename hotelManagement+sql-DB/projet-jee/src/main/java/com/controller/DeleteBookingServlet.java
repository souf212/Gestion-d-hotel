package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement; 

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.util.DatabaseConnection; 
public class DeleteBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the booking ID from the URL
        String id = request.getParameter("id");

        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "DELETE FROM bookings WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, Integer.parseInt(id));

            int rowsDeleted = preparedStatement.executeUpdate();
            if (rowsDeleted > 0) {
                System.out.println("Booking deleted successfully.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect back to the booking list
        response.sendRedirect("listBookings.jsp");
    }
}
