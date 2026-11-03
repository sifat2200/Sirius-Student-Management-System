# Sirius – Database ER Diagram

This diagram reflects the tables and foreign-key constraints declared in the supplied SQL dump.

```mermaid
erDiagram
    CLASS ||--o{ STUDENT : has
    CLASS ||--o{ TEACHER : assigned_to
    STUDENT ||--o| STUDENT_PROFILES : has
    TEACHER ||--o| TEACHER_PROFILES : has

    ADMIN {
        int admin_id PK
        varchar username UK
        varchar password
        varchar f_name
        varchar l_name
    }

    CLASS {
        int class_name
        varchar class_code PK
        varchar Days
        decimal teacher_payment
        varchar class_time
        decimal student_payment
    }

    STUDENT {
        varchar username UK
        varchar password
        varchar f_name
        varchar l_name
        int student_id PK
        varchar class_code FK
        varchar Address
        int class_name
    }

    STUDENT_PROFILES {
        int student_id PK
        varchar profile_picture
    }

    TEACHER {
        int teacher_id PK
        varchar username UK
        varchar password
        varchar f_name
        varchar l_name
        int subject_code
        varchar class_code FK
        varchar Address
    }

    TEACHER_PROFILES {
        int teacher_id PK
        varchar profile_picture
    }

    SUBJECTS {
        int subject_id PK
        varchar subject
        int subject_code
    }
```

## Relationship notes

- One class can be associated with multiple students; each student has an optional `class_code` reference to one class.
- One class can be associated with multiple teachers; each teacher has an optional `class_code` reference to one class.
- A student can have zero or one profile-picture record. `student_profiles.student_id` references `student.student_id`.
- A teacher can have zero or one profile-picture record. `teacher_profiles.teacher_id` references `teacher.teacher_id`.
- `teacher.subject_code` corresponds conceptually to `subjects.subject_code`, but the supplied SQL dump does not declare a foreign-key constraint for this relationship.
- `admin` and `subjects` are standalone in the declared foreign-key structure.
- The supplied schema stores payment amounts as fields in `class`; it does not define separate payment tables.

> This diagram represents the supplied database schema. It is not a redesigned or normalized schema.
