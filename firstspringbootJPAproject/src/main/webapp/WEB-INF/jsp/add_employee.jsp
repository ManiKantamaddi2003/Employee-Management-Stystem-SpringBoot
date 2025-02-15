<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
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
        <h2 class="text-center text-warning"><i class="fas fa-user-plus"></i> Add Employee</h2>
        <form action="/add_employee" method="post" class="p-4 shadow rounded form-container" onsubmit="return checkAdmin()">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Department</label>
                <input type="text" name="department" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Designation</label>
                <input type="text" name="designation" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Experience (Years)</label>
                <input type="number" name="exp" class="form-control" required min="0">
            </div>
            <button type="submit" class="btn btn-primary w-100"><i class="fas fa-plus"></i> Add Employee</button>
        </form>
    </div>
</body>
</html>