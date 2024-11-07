<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pending Requests</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #495057;
            font-size: 2em;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .btn-primary {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .btn-primary:hover {
            background-color: #004494;
            border-color: #004494;
        }
        .btn-success, .btn-danger {
            font-weight: 500;
            padding: 5px 12px;
            border-radius: 4px;
            margin: 0 2px;
        }
        .btn-success:hover {
            background-color: #28a745;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
    </style>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Pending Access Requests</h1>
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Request ID</th>
                    <th>User ID</th>
                    <th>Software ID</th>
                    <th>Access Type</th>
                    <th>Reason</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
    <%
        try {
            try (Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/uam_db", "postgres", "123456789");
                 PreparedStatement ps = con.prepareStatement("SELECT * FROM requests WHERE status='Pending'");
                 ResultSet rs = ps.executeQuery()) {

                if (rs.isBeforeFirst()) {
                    while (rs.next()) {
    %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getInt("user_id") %></td>
                <td><%= rs.getInt("software_id") %></td>
                <td><%= rs.getString("access_type") %></td>
                <td><%= rs.getString("reason") %></td>
                <td><%= rs.getString("status") %></td>
                <td>
                    <form action="approveRequest" method="post" style="display: inline;">
                        <input type="hidden" name="requestId" value="<%= rs.getInt("id") %>">
                        <button type="submit" class="btn btn-success" name="status" value="Approved">Approve</button>
                        <button type="submit" class="btn btn-danger" name="status" value="Rejected">Reject</button>
                    </form>
                </td>
            </tr>
    <%
                    }
                } else {
    %>
            <tr>
                <td colspan="7" class="text-center text-muted">No pending requests found.</td>
            </tr>
    <%
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
    %>
            <tr>
                <td colspan="7" class="text-center text-danger">Error fetching pending requests: <%= e.getMessage() %></td>
            </tr>
    <%
        }
    %>
            </tbody>
        </table>
        <div class="text-center">
            <a href="login.jsp" class="btn btn-primary mt-4">Back To Login</a>
        </div>
    </div>
</body>
</html>
