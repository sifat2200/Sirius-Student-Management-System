# Sirius – Student Management System

A PHP and MySQL-based student management application developed as a **CSE 311 – Database Systems** course project at **North South University**.

## Overview
Sirius provides separate interfaces for administrators, students, and teachers. It supports student and teacher records, class assignments, profile information, and class-related payment amounts.

## Features
### Administrator
- Admin authentication and dashboard
- Add, view, and edit student records
- Add, view, edit, and delete teacher records
- View and manage class information
- Access student and teacher payment-related pages

### Student
- Student login
- View student information
- Update profile information

### Teacher
- Teacher login
- View teacher information and assigned class details
- View students associated with a class
- Update profile information

## Technology Stack
- **Backend:** PHP
- **Database:** MySQL / MariaDB
- **Frontend:** HTML, CSS, Bootstrap
- **Local development:** XAMPP
- **Database access:** PDO

## Database Design
The database includes `admin`, `class`, `student`, `student_profiles`, `teacher`, `teacher_profiles`, and `subjects` tables.

See **[Database ER Diagram](docs/ERD.md)** for the Mermaid diagram and relationship notes.

## Screenshots
Add genuine screenshots of your running application to `screenshots/` and update the filenames below.

| Page | Screenshot |
|---|---|
| Landing page | `screenshots/landing-page.png` |
| Admin dashboard | `screenshots/admin-dashboard.png` |
| Student management | `screenshots/student-management.png` |
| Teacher management | `screenshots/teacher-management.png` |
| Class management | `screenshots/class-management.png` |
| Student portal | `screenshots/student-portal.png` |
| Teacher portal | `screenshots/teacher-portal.png` |

## Local Setup
1. Install XAMPP (or another PHP + MySQL environment).
2. Start Apache and MySQL.
3. Place this repository folder inside the server web root (for XAMPP, usually `htdocs`).
4. Open phpMyAdmin and create a database named `student_management_system`.
5. Import `database/student_management_system.sql`.
6. Configure `DB_HOST`, `DB_NAME`, `DB_USER`, and `DB_PASSWORD` in your local environment. The PHP connection file uses XAMPP-friendly defaults if environment variables are not set.
7. Open the application in your browser, for example: `http://localhost/Sirius-Student-Management-System/Sirius/`.

## Public Repository Safety
- Account and profile seed records containing personal names, usernames, addresses, and password hashes have been removed from the public SQL dump.
- Opaque, user-specific profile image files have been excluded.
- Database connection settings are read from environment variables rather than hard-coded credentials.
- `.env` files are ignored by Git. Never commit real database credentials, passwords, API keys, or private data.

**Important:** Because personal account records were removed, the imported public database does not include ready-made admin/student/teacher login accounts. Create fresh test accounts locally through the application's admin workflow or insert your own fictional test records for development.

## Academic Information
- **Course:** CSE 311 – Database Systems
- **Institution:** North South University
- **Project:** Sirius – Student Management System

## License
No license has been specified. Add a license if you intend to define how others may use, modify, and distribute this project.
