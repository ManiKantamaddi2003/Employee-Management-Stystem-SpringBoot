<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Employee Management</title>
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

        .hero {
            padding: 100px 20px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        }

        .typing {
            font-size: 1.3rem;
            white-space: nowrap;
            overflow: hidden;
            border-right: 3px solid white;
            width: 0;
            animation: typing 4s steps(40, end) forwards, blink 0.8s infinite;
        }

        .btn-custom {
            margin: 15px;
            padding: 12px 25px;
            font-size: 1.2rem;
            border-radius: 30px;
            transition: all 0.3s ease-in-out;
            text-transform: uppercase;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.3);
        }

        .btn-custom:hover {
            transform: scale(1.1);
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.8);
        }

        .section {
            margin-top: 60px;
            padding: 50px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            animation: slideUp 1.5s ease-in-out;
        }

        .tech-card {
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 15px;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .tech-card:hover {
            transform: scale(1.1);
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.5);
        }

        .icon {
            font-size: 60px;
            margin: 10px;
        }

        .icon:hover {
            transform: rotate(15deg) scale(1.1);
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideUp {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 100%; }
        }

        @keyframes blink {
            50% { border-color: transparent; }
        }
    </style>
</head>
<body>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to the Employee Management System!</h1>
        <p class="typing">A complete solution to manage employees efficiently.</p>
        <a href="/employee_list" class="btn btn-success btn-custom">View Employees</a>
        <a href="/add_employee" class="btn btn-primary btn-custom">Add Employee</a>
    </div>

    <!-- Technologies Used -->
    <div class="container section">
        <h2><i class="fas fa-cogs"></i> Technologies Used</h2>
        <p>This project is built using modern web technologies.</p>
        <div class="row">
            <div class="col-md-3">
                <div class="tech-card">
                    <i class="fab fa-java icon text-warning"></i>
                    <h5>Java</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="tech-card">
                    <i class="fab fa-html5 icon text-danger"></i>
                    <h5>HTML</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="tech-card">
                    <i class="fab fa-css3-alt icon text-primary"></i>
                    <h5>CSS</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="tech-card">
                    <i class="fab fa-js icon text-warning"></i>
                    <h5>JavaScript</h5>
                </div>
            </div>
        </div>
		<br>
        <p>Spring Boot | JSP | Bootstrap | MySQL | Java</p>
    </div>

</body>
</html>