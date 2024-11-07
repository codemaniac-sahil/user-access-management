# User Access Management System

## Overview

The User Access Management System (UAMS) is a web-based application designed to manage user access to various software applications within an organization. This system enables employees to request access to applications, managers to review and approve requests, and administrators to manage software and user roles.

### Project Features
- **User Registration (Sign-Up)**
- **User Authentication (Login)**
- **Software Application Listing and Creation**
- **Access Request Submission**
- **Access Request Approval or Rejection**

### Technologies Used
- **Backend:** Java Servlets, JSP (JavaServer Pages)
- **Database:** PostgreSQL
- **Server Environment:** Java Servlet Container (e.g., Apache Tomcat)
- **Frontend:** HTML, CSS, JavaScript

---

## System Roles

1. **Employee**
   - Registers and logs into the system.
   - Requests access to software applications.

2. **Manager**
   - Reviews and approves/rejects access requests.
   - Cannot request access or create software.

3. **Admin**
   - Creates software applications.
   - Has full permissions, including employee and manager functionalities.

---

## Project Setup

### Prerequisites
- **Java Development Kit (JDK)**
- **Apache Tomcat**
- **PostgreSQL Database**
- **Maven (for project dependency management)**

### Installation Steps
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/codemaniac-sahil/user-access-management.git
   cd User-Access-Management-System
   ```

2. **Set Up Database:**
   - Import the provided PostgreSQL database script to create the necessary tables (`users`, `software`, `requests`).

3. **Configure Database Connection:**
   - Update database credentials in the `db.properties` file.

4. **Deploy Application:**
   - Use Maven to build the project.
   - Deploy the generated `.war` file to Apache Tomcat.

5. **Access the System:**
   - Open a browser and navigate to `http://localhost:8080/UserAccessManagementSystem`.

---

## Usage

1. **Sign-Up/Login**: New users can sign up, and existing users can log in to access functionalities based on their role.
2. **Software Management** (Admin): Admins can add new software applications.
3. **Request Access** (Employee): Employees can submit requests to access software.
4. **Approve Requests** (Manager): Managers can view and approve or reject requests.

---

## Database Schema

1. **Users Table**:
   - `id` (Primary Key)
   - `username`, `password`, `role` (Employee, Manager, Admin)

2. **Software Table**:
   - `id` (Primary Key)
   - `name`, `description`, `access_levels`

3. **Requests Table**:
   - `id` (Primary Key)
   - `user_id`, `software_id`, `access_type`, `reason`, `status` (Pending, Approved, Rejected)

---
