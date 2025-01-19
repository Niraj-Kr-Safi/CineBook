<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="auth-container">
        <h1>Booking Confirmation</h1>
        <p><c:out value="${message}" /></p>
        <p>Username: <c:out value="${username}" /></p>
        <p>Movie Name: <c:out value="${movieName}" /></p>
        <p>Show Time: <c:out value="${showTime}" /></p>
        <p>Show ID: <c:out value="${showId}" /></p>
        <p>User ID: <c:out value="${userId}" /></p>
        <p>Seats Booked: <c:out value="${seatsBooked}" /></p>
        <p>Price per Seat: ₹<c:out value="${pricePerSeat}" /></p>
        <p>Total Amount: ₹<c:out value="${totalAmount}" /></p>
        <p>Payment Method: <c:out value="${paymentMethod}" /></p>

        <a href="movies.jsp" class="btn">Back to Movies</a>
    </div>
</body>
</html>
