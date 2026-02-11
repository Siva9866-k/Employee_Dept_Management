<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees | EMS</title>

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
    .table thead {
        background-color: #0d6efd;
        color: white;
    }
</style>
</head>

<body>

<div class="container-fluid">
<div class="row">

    <!-- ===== SIDEBAR ===== -->
    <div class="col-md-2 sidebar">
        <h4 class="text-center mb-4">Employee Management System</h4>

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
    <div class="col-md-10 p-4">

        <!-- Header Row -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3>
                <i class="bi bi-people-fill"></i> Employee Directory
            </h3>

            <a href="${pageContext.request.contextPath}/employees/new"
               class="btn btn-primary">
                <i class="bi bi-person-plus"></i> Add Employee
            </a>
        </div>

        <!-- Search Bar -->
        <div class="mb-3">
            <input type="text" id="searchInput"
                   class="form-control"
                   placeholder="Search employee by name..."
                   onkeyup="searchTable()">
        </div>

        <!-- Employee Table -->
        <div class="card shadow-sm">
            <div class="card-body">

                <table class="table table-hover text-center align-middle"
                       id="employeeTable">

                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Department</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="employee" items="${employees}">
                        <tr>
                            <td>${employee.firstName}</td>
                            <td>${employee.lastName}</td>
                            <td>${employee.email}</td>
                            <td>
                                <span class="badge bg-info text-dark">
                                    ${employee.department}
                                </span>
                            </td>

                            <td>
                                <a href="${pageContext.request.contextPath}/employees/edit/${employee.id}"
                                   class="btn btn-warning btn-sm">
                                    <i class="bi bi-pencil-square"></i>
                                </a>

                                <a href="${pageContext.request.contextPath}/employees/delete/${employee.id}"
                                   class="btn btn-danger btn-sm"
                                   onclick="return confirm('Are you sure you want to delete this employee?');">
                                    <i class="bi bi-trash"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>

                </table>

            </div>
        </div>

    </div>

</div>
</div>

<!-- Simple Search Script -->
<script>
function searchTable() {
    let input = document.getElementById("searchInput").value.toLowerCase();
    let rows = document.querySelectorAll("#employeeTable tbody tr");

    rows.forEach(row => {
        let text = row.innerText.toLowerCase();
        row.style.display = text.includes(input) ? "" : "none";
    });
}
</script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
