<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <!-- Custom Bootstrap 5.0 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .signup-container {
            max-width: 420px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #28a745;
            border-color: #218838;
        }
        .btn-custom:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }
        .form-floating input {
            background-color: #e9f7ef;
        }
        .form-floating label {
            color: #555;
        }
        .form-floating input:focus {
            background-color: #ffffff;
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }
        a {
            color: #007bff;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2 class="text-center text-success mb-4">Create Your Account</h2>
        <form action="index" method="post">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="username" name="username" required placeholder="Enter your username">
                <label for="username">Username</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="password" name="password" required placeholder="Enter your password">
                <label for="password">Password</label>
            </div>
            <button type="submit" class="btn btn-custom w-100">Sign Up</button>
        </form>
        <div class="text-center mt-3">
            <a href="login.jsp" class="text-decoration-none">Already have an account? Login</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
</body>
</html>
