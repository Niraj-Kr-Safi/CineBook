<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Listings</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .movie-card {
            transition: transform 0.3s;
            height: 100%;
            border: 1px solid #ddd;
            margin-bottom: 20px;
        }
        .movie-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }
        .filter-section {
            background-color: #f8f9fa;
            padding: 20px;
            margin-bottom: 30px;
            border-radius: 8px;
        }
       
        /* Background Image and Overlay */
        body {
            background-image: url('https://st2.depositphotos.com/1017986/6424/i/950/depositphotos_64246341-stock-photo-happy-friends-watching-movie-in.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #f5f5f5;
            font-family: 'Arial', sans-serif;
            position: relative;
            height: 100vh;
        }
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6); /* Darker overlay */
            z-index: 0;
            backdrop-filter: blur(8px); /* Smoother blur effect */
        }

        /* Navbar Styling */
        .navbar {
            background: linear-gradient(45deg, #e50914, #ff6f00);
            padding: 10px;
            border-bottom: 2px solid #ff4500;
        }
        .navbar-brand img {
            height: 50px;
        }

        /* Main Container */
        .container {
            margin-top: 30px;
            z-index: 1;
            position: relative;
        }

        /* Filter Section */
        .filter-section {
            background: rgba(255, 255, 255, 0.9); /* Slight transparency */
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 30px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease;
        }
        .filter-section:hover {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4); /* Subtle hover shadow */
        }
        .filter-section label {
            color: #333;
            font-weight: bold;
        }
        .filter-section .btn-primary {
            background: linear-gradient(45deg, #ff4500, #e50914);
            border: none;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            transition: background 0.3s;
        }
        .filter-section .btn-primary:hover {
            background: linear-gradient(45deg, #e50914, #ff4500);
        }

        /* Movie Card Styling */
        .movie-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Soft shadow */
            transition: all 0.3s ease;
            overflow: hidden;
            transform: scale(1);
            margin-bottom: 30px;
        }
        .movie-card:hover {
            transform: scale(1.05); /* Slight zoom on hover */
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3); /* Deep shadow on hover */
        }
        .card-img-top {
            height: 300px;
            object-fit: cover;
            border-radius: 15px 15px 0 0;
            transition: all 0.3s ease-in-out;
        }
        .movie-card:hover .card-img-top {
            transform: scale(1.1); /* Slight zoom effect on the image */
        }
        .card-body {
            padding: 20px;
            background-color: #fff;
        }
        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
            text-transform: capitalize;
        }
        .rating {
            color: #ff9800;
        }

        /* Buttons */
        .btn-success {
            background: linear-gradient(45deg, #4caf50, #2e7d32);
            border: none;
            font-weight: bold;
            padding: 12px 18px;
            width: 100%;
            transition: background 0.3s;
        }
        .btn-success:hover {
            background: linear-gradient(45deg, #2e7d32, #4caf50);
        }

        /* Footer Styling */
        footer {
            background: linear-gradient(45deg, #141414, #333);
            padding: 20px 0;
            text-align: center;
            color: #f5f5f5;
            margin-top: 50px;
        }

        /* Responsive Styles */
        @media (max-width: 767px) {
            .filter-section {
                padding: 20px;
            }
            .section-title {
                font-size: 1.6rem;
            }
            .navbar {
                padding: 8px;
            }
            .movie-card {
                margin-bottom: 15px;
            }
            .card-img-top {
                height: 250px;
            }
        }

        @media (max-width: 576px) {
            .filter-section {
                padding: 15px;
            }
            .movie-card {
                margin-bottom: 10px;
            }
            .card-img-top {
                height: 180px;
            }
            .btn-primary, .btn-success {
                width: 100%;
            }
        }
    </style>
    
</head>
<body>

<div class="container py-5">
    <!-- Filter Section -->
    <div class="filter-section">
        <form method="GET" action="${pageContext.request.contextPath}/movies" class="row g-3">
            <div class="col-md-3">
                <label class="form-label">Genre</label>
                <select name="genre" class="form-select">
                    <option value="">All Genres</option>
                    <c:forEach var="genre" items="${genres}">
                        <option value="<c:out value='${genre}'/>" <c:if test="${selectedGenre == genre}">selected</c:if>>
                            <c:out value="${genre}"/>
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-md-3">
                <label class="form-label">Language</label>
                <select name="language" class="form-select">
                    <option value="">All Languages</option>
                    <c:forEach var="language" items="${languages}">
                        <option value="<c:out value='${language}'/>" <c:if test="${selectedLanguage == language}">selected</c:if>>
                            <c:out value="${language}"/>
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-md-3 d-flex align-items-end">
                <button type="submit" class="btn btn-primary">Apply Filters</button>
            </div>
        </form>
    </div>

    <!-- Movies Grid -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <c:forEach var="movie" items="${movies}">
            <div class="col">
                <div class="card movie-card">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${movie.title}"/></h5>
                        <p class="card-text">
                            <strong>Genre:</strong> <c:out value="${movie.genre}"/><br>
                            <strong>Duration:</strong> <c:out value="${movie.duration}"/> minutes<br>
                            <strong>Language:</strong> <c:out value="${movie.language}"/>
                        </p>
                        <button type="button" 
                                class="btn btn-success" 
                                onclick="bookMovie(${movie.movieId}, '${movie.title}')">
                            Book Now
                        </button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
function bookMovie(movieId, movieTitle) {
    window.location.href = "${pageContext.request.contextPath}/shows?movieId=" + movieId;
}
</script>

</body>
</html>
