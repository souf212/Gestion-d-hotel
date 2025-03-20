package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement; 

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.util.DatabaseConnection;

public class AddBookingServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String arrival = request.getParameter("arrival");
        String departure = request.getParameter("departure");
        String fullName = request.getParameter("fullName");
        String chambreName = request.getParameter("chambreName");

        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "INSERT INTO bookings (arrival_date, departure_date, full_name, chambre_name) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, arrival);
            preparedStatement.setString(2, departure);
            preparedStatement.setString(3, fullName);
            preparedStatement.setString(4, chambreName);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("listBookings.jsp");
    }
}
