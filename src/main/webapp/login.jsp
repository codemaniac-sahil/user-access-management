<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Custom Bootstrap 5.0 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7f6;
        }
        .login-container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #007bff;
            border-color: #0069d9;
        }
        .btn-custom:hover {
            background-color: #0069d9;
            border-color: #0056b3;
        }
        .form-floating input {
            background-color: #e0f7fa;
        }
        .form-floating label {
            color: #555;
        }
        .form-floating input:focus {
            background-color: #ffffff;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        a {
            color: #28a745;
        }
        a:hover {
            color: #218838;
        }
        .alert-danger {
            background-color: #f8d7da;
            border-color: #f5c6cb;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2 class="text-center text-primary mb-4">Login to Your Account</h2>
        <form action="login" method="post">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="username" name="username" required placeholder="Enter your username">
                <label for="username">Username</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="password" name="password" required placeholder="Enter your password">
                <label for="password">Password</label>
            </div>
            <button type="submit" class="btn btn-custom w-100">Login</button>
        </form>
        <div class="text-center mt-3">
            <a href="index.jsp" class="text-decoration-none">Don't have an account? Sign Up</a>
        </div>

        <%
            String error = request.getParameter("error");
            if (error != null) {
        %>
        <div class="alert alert-danger mt-3" role="alert">
            <%= error %>
        </div>
        <%
            }
        %>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
</body>
</html>
