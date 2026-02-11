<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee | EMS</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
      rel="stylesheet">

<style>
    body {
        background-color: #f4f6f9;
    }
    .card {
        border: none;
        border-radius: 15px;
    }
    .card-header {
        background: linear-gradient(45deg, #0d6efd, #0a58ca);
        color: white;
        border-radius: 15px 15px 0 0 !important;
    }
    .form-control:focus {
        box-shadow: none;
        border-color: #0d6efd;
    }
    .sidebar {
        height: 100vh;
        background-color: #212529;
        color: white;
        padding-top: 20px;
    }
    .sidebar a {
        color: #adb5bd;
        text-decoration: none;
        display: block;
        padding: 10px 20px;
        margin-bottom: 5px;
    }
    .sidebar a:hover {
        background-color: #0d6efd;
        color: white;
        border-radius: 5px;
    }
</style>
</head>

<body>

<div class="container-fluid">
    <div class="row">

        <!-- ===== SIDEBAR ===== -->
        <div class="col-md-2 sidebar">
            <h4 class="text-center mb-4">EMS</h4>
            <a href="${pageContext.request.contextPath}/employees">
                <i class="bi bi-people"></i> Employees
            </a>
            <a href="#">
                <i class="bi bi-building"></i> Departments
            </a>
            <a href="#">
                <i class="bi bi-gear"></i> Settings
            </a>
        </div>

        <!-- ===== MAIN CONTENT ===== -->
        <div class="col-md-10 p-5">

            <div class="card shadow-lg">
                <div class="card-header text-center">
                    <h4 class="mb-0">
                        <i class="bi bi-person-plus-fill"></i>
                        Add New Employee
                    </h4>
                </div>

                <div class="card-body p-4">

                    <form action="${pageContext.request.contextPath}/employees"
                          method="post">

                        <div class="row">
                            <!-- First Name -->
                            <div class="col-md-6 mb-3">
                                <label class="form-label">First Name</label>
                                <input type="text"
                                       name="firstName"
                                       class="form-control"
                                       placeholder="Enter First Name"
                                       required>
                            </div>

                            <!-- Last Name -->
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Last Name</label>
                                <input type="text"
                                       name="lastName"
                                       class="form-control"
                                       placeholder="Enter Last Name"
                                       required>
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Email Address</label>
                            <input type="email"
                                   name="email"
                                   class="form-control"
                                   placeholder="example@company.com"
                                   required>
                        </div>

                        <!-- Department -->
                        <div class="mb-4">
                            <label class="form-label">Department</label>
                            <input type="text"
                                   name="department"
                                   class="form-control"
                                   placeholder="e.g. HR, IT, Finance"
                                   required>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <a href="${pageContext.request.contextPath}/employees"
                               class="btn btn-outline-secondary">
                                <i class="bi bi-arrow-left"></i> Back
                            </a>

                            <button type="submit"
                                    class="btn btn-primary px-4">
                                <i class="bi bi-save"></i> Save Employee
                            </button>
                        </div>

                    </form>

                </div>
            </div>

        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
