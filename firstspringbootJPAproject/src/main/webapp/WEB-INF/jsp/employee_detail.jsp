<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
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

        .card {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card h2, .card h3 {
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <!-- Employee Details Section -->
            <div class="col-md-5">
                <div class="card shadow p-4">
                    <h2 class="text-center text-warning"><i class="fas fa-id-badge"></i> Employee Details</h2>
                    <div class="mt-3">
                        <p><strong>ID:</strong> ${employee.id}</p>
                        <p><strong>Name:</strong> ${employee.name}</p>
                        <p><strong>Department:</strong> ${employee.department}</p>
                        <p><strong>Designation:</strong> ${employee.designation}</p>
                        <p><strong>Experience:</strong> ${employee.exp} years</p>
                    </div>
                    <div class="text-center mt-3">
                        <a href="/employee_list" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back to Employee List</a>
                    </div>
                </div>
            </div>

            <!-- Update Employee Section -->
            <div class="col-md-7">
                <div class="card shadow p-4">
                    <h3 class="text-center text-success"><i class="fas fa-edit"></i> Update Employee</h3>
                    <form action="/employee/update" method="post" onsubmit="return checkAdmin()">
                        <input type="hidden" name="id" value="${employee.id}" />

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="name" class="form-control" value="${employee.name}" required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Department</label>
                            <input type="text" name="department" class="form-control" value="${employee.department}" required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Designation</label>
                            <input type="text" name="designation" class="form-control" value="${employee.designation}" required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Experience (Years)</label>
                            <input type="number" name="exp" class="form-control" value="${employee.exp}" required min="0" />
                        </div>

                        <div class="text-center">
                            <input type="submit" value="Update" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript for Admin Authentication -->
    <script>
        function checkAdmin() {
            let password = prompt("Enter Admin Password:");
            if (password !== "admin123") {
                alert("Incorrect password. Update action canceled.");
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</body>
</html>
