<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>Admin Dashboard</h1>
    <form action="listBookings.jsp" method="get" style="display: inline;">
        <button type="submit">Manage Bookings</button>
    </form>
    <form action="addBooking.jsp" method="get" style="display: inline;">
        <button type="submit">Add New Booking</button>
    </form>
    <form action="roomAvailability.jsp" method="get" style="display: inline;">
        <button type="submit">Room Availbility</button>
    </form>
      <form action="addRoom.jsp" method="get" style="display: inline;">
        <button type="submit">Add Room Availbility</button>
    </form>
</body>
</html>
