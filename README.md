# Employee Management System

A full-stack Spring Boot web application that manages employee records using complete CRUD operations.  
Built using a layered architecture (Controller → Service → Repository → Database).

---

## 📌 Project Overview

The Employee Management System is designed to efficiently manage employee information through a web interface.  
It allows users to:

- Add new employees
- View all employees
- Update employee details
- Delete employee records

The application follows clean architecture principles and uses Spring Boot with JSP for the frontend.

---

## 🏗️ Architecture

The project follows a layered architecture:

```
Controller → Service → Repository → Database
```

### 🔹 Controller Layer
Handles HTTP requests and routes them to the service layer.

### 🔹 Service Layer
Contains business logic and interacts with the repository layer.

### 🔹 Repository Layer
Uses Spring Data JPA to perform database operations.

### 🔹 Database Layer
MySQL database storing employee records.

---

## ✨ Features

- Create employee records
- Read/View employee records
- Update employee details
- Delete employee records
- Responsive UI using Bootstrap
- Clean MVC structure

---

## 📡 API Endpoints

| HTTP Method | Endpoint | Description |
|-------------|----------|------------|
| GET | `/employees` | View all employees |
| GET | `/employees/new` | Show create employee form |
| POST | `/employees` | Save new employee |
| GET | `/employees/edit/{id}` | Show edit form |
| POST | `/employees/{id}` | Update employee |
| GET | `/employees/delete/{id}` | Delete employee |

---

## 🛠️ Technologies Used

- Java
- Spring Boot
- Spring MVC
- Spring Data JPA
- JSP
- Bootstrap
- MySQL
- Maven
- Git

---

## 🚀 How to Run the Project

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Siva9866-k/Employee-Management-System.git
cd Employee-Management-System
```

### 2️⃣ Configure Database

Update `application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/employee_db
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
```

### 3️⃣ Run the Application

Using Maven:

```bash
mvn spring-boot:run
```

Or run from your IDE.

### 4️⃣ Access the Application

```
http://localhost:8080/employees
```

---

## 📁 Project Structure

```
src/main/java
 ├── controller
 ├── service
 ├── repository
 └── model

src/main/webapp
 ├── employees.jsp
 ├── create_employee.jsp
 └── edit_employee.jsp
```

---

## 📸 Screenshots
<img width="1920" height="973" alt="employee_main_page" src="https://github.com/user-attachments/assets/36f29c9d-a5d4-49f6-bde7-e5df65a53d46" />
<img width="1920" height="969" alt="addEmploee" src="https://github.com/user-attachments/assets/c790d6e8-aa1d-4f77-ac5a-1f0a5d6fc2c1" />
<img width="1920" height="973" alt="update_employee" src="https://github.com/user-attachments/assets/3199a5cc-c22a-418e-ad11-9f821e470490" />


---

## ⭐ Learning Outcome

- Implemented MVC architecture
- Used Spring Data JPA
- Integrated MySQL database
- Built responsive UI using Bootstrap
- Practiced layered architecture design
# Employee-Management-System
Enterprise-style Employee Management System developed using Spring Boot, Spring MVC, JSP, MySQL, and JPA. Implements complete CRUD functionality with layered architecture (Controller–Service–DAO) and responsive Bootstrap UI.
