# Sirius – Database ER Diagram

This diagram reflects the tables and foreign-key constraints declared in the supplied SQL dump.

```mermaid
erDiagram
    CLASS ||--o{ STUDENT : "has"
    CLASS ||--o{ TEACHER : "assigned to"
    STUDENT ||--o| STUDENT_PROFILES : "has"
    TEACHER ||--o| TEACHER_PROFILES : "has"

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
        int student_id PK, FK
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
        int teacher_id PK, FK
        varchar profile_picture
    }
    SUBJECTS {
        int subject_id PK
        varchar subject
        int subject_code
    }
```

## Notes
- The public SQL dump contains the table definitions but omits personal account/profile seed records.
- Class and subject reference data remain as sample data.
- `teacher.subject_code` corresponds conceptually to `subjects.subject_code`, but no foreign-key constraint is declared for it.
- Payment amounts are fields in `class`; the supplied schema has no separate payment tables.
