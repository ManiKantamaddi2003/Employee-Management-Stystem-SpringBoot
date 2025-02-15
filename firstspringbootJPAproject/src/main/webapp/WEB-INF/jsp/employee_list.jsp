<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            text-align: center;
            overflow-x: hidden;
            scroll-behavior: smooth;
        }

        .container {
            margin-top: 50px;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            padding: 20px;
            color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .btn {
            font-weight: bold;
        }
    </style>
    <script>
        function checkAdmin() {
            let password = prompt("Enter Admin Password:");
            if (password !== "admin123") {
                alert("Please contact admin.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
       

        <h1 class="text-center text-warning"><i class="fas fa-users"></i> Employee List</h1>
        <table class="table table-bordered table-hover mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Designation</th>
                    <th>Experience</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="employee" items="${employees}">
                    <tr>
                        <td>${employee.id}</td>
                        <td>${employee.name}</td>
                        <td>${employee.department}</td>
                        <td>${employee.designation}</td>
                        <td>${employee.exp} years</td>
                        <td>
                            <a href="/employee/${employee.id}" class="btn btn-info btn-sm"><i class="fas fa-eye"></i> View</a>
                            <a href="/employee/${employee.id}" class="btn btn-warning btn-sm" onclick="return checkAdmin()"><i class="fas fa-edit"></i> Update</a>
                            <form action="/employee/delete" method="post" style="display:inline;" onsubmit="return checkAdmin()">
                                <input type="hidden" name="id" value="${employee.id}">
                                <button type="submit" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="/" class="btn btn-primary"><i class="fas fa-home"></i> Back to Home</a>
    </div>
</body>
</html>
