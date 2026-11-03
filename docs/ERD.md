# Sirius – Database ER Diagram

This diagram represents the tables and declared foreign-key relationships in the supplied SQL schema.

```mermaid
flowchart TB
    CLASS["CLASS<br/>PK: class_code<br/>class_name, Days, class_time<br/>student_payment, teacher_payment"]

    STUDENT["STUDENT<br/>PK: student_id<br/>FK: class_code<br/>username, name, address, password"]

    TEACHER["TEACHER<br/>PK: teacher_id<br/>FK: class_code<br/>subject_code, username, name, address"]

    STUDENT_PROFILES["STUDENT_PROFILES<br/>PK: student_id<br/>Profile picture"]

    TEACHER_PROFILES["TEACHER_PROFILES<br/>PK: teacher_id<br/>Profile picture"]

    ADMIN["ADMIN<br/>PK: admin_id<br/>username, name, password"]

    SUBJECTS["SUBJECTS<br/>PK: subject_id<br/>subject, subject_code"]

    CLASS -->|"one class to many students"| STUDENT
    CLASS -->|"one class to many teachers"| TEACHER
    STUDENT -->|"student_id reference"| STUDENT_PROFILES
    TEACHER -->|"teacher_id reference"| TEACHER_PROFILES

    TEACHER -.->|"subject_code logical match only"| SUBJECTS
```

## Relationship notes

- One class can be associated with multiple students through `student.class_code`.
- One class can be associated with multiple teachers through `teacher.class_code`.
- `student_profiles.student_id` references `student.student_id`.
- `teacher_profiles.teacher_id` references `teacher.teacher_id`.
- `teacher.subject_code` corresponds conceptually to `subjects.subject_code`, but the supplied SQL dump does not declare a foreign-key constraint for this relationship. The dotted arrow indicates a logical match, not an enforced foreign key.
- `admin` and `subjects` are standalone in the declared foreign-key structure.
- Payment amounts are stored as fields in `class`; the supplied schema does not define separate payment tables.

> This diagram documents the supplied database schema. It is not a redesigned or normalized schema.
