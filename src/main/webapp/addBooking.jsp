<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Booking</title>
    <link rel="stylesheet" type="text/css" href="css/styless.css">
    <style>
body, h1, form, label, input, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f8e6e6; /* Light red background */
    color: #800000; /* Dark red text */
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background-color: #fff;
    border: 2px solid #800000; /* Dark red border */
    border-radius: 10px;
    padding: 20px;
    width: 300px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #800000;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #800000;
}

input {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #800000;
    border-radius: 5px;
    background-color: #f8e6e6; /*  red input background */
    color: #800000;
}


input:focus {
    outline: none;
    border-color: #ff0000; /* Brighter red on focus */
    box-shadow: 0 0 4px rgba(255, 0, 0, 0.5);
}

button {
    width: 100%;
    padding: 10px;
    background-color: #800000; /* Dark red background */
    color: #fff; /* White text */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s;
}

/* Button Hover */
button:hover {
    background-color: #ff0000; /* Bright red on hover */
}

@media (max-width: 400px) {
    form {
        width: 90%;
    }
}
  </style>
</head>
<body>

    <h1>Add New Booking</h1>
    <form method="post" action="AddBookingServlet">
        <label>Arrival Date:</label>
        <input type="date" name="arrival" required><br>
        <label>Departure Date:</label>
        <input type="date" name="departure" required><br>
        <label>Full Name:</label>
        <input type="text" name="fullName" required><br>
        <label>Chambre Name:</label>
        <input type="text" name="chambreName" required><br>
        <button type="submit">Add Booking</button>
    </form>
</body>
</html>
  