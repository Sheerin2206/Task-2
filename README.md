
---

## 🏗️ Tables Created:

### 1. employees
| Column          | Type          | Constraints        |
|-----------------|---------------|--------------------|
| emp_id          | INT           | Primary Key        |
| emp_name        | VARCHAR(50)   | NOT NULL           |
| emp_email       | VARCHAR(100)  | UNIQUE             |
| emp_age         | INT           | CHECK (age ≥ 18) *(Dropped later)* |
| emp_department_id | INT         |                    |
| emp_join_date   | DATE          | Default: CURRENT_DATE |

---

### 2. salary
| Column        | Type        | Constraints            |
|---------------|-------------|------------------------|
| emp_id        | INT         | Foreign Key → employees |
| salary_amnt   | INT         |                        |
| salary_date   | DATE        | Default: CURRENT_DATE   |

---

### 3. department
| Column      | Type         | Constraints            |
|-------------|--------------|------------------------|
| dept_id     | INT          | Primary Key, Auto Increment |
| dept_name   | VARCHAR(50)  |                        |
| location    | VARCHAR(50)  | Default: 'CHENNAI'     |

*(Later Dropped)*

---

### 4. attendance
| Column          | Type        | Constraints          |
|-----------------|-------------|----------------------|
| emp_id          | INT         | Foreign Key → employees |
| attendance_date | DATE        |                      |
| status          | VARCHAR(15) |                      |

---

## 📥 Data Inserted:

### ✅ Employees:
- John Doe
- Jane Smith
- Bob Johnson
- Alice Brown
- Mike Davis

---

### ✅ Salary:
- Salary entries for all 5 employees.

---

### ✅ Department:
- Java, PHP, HTML, Python, SQL departments added.  
*(Later, entire department table dropped.)*

---

### ✅ Attendance:
- Marked as present for all employees on `'2024-05-05'`.

---

## 🔧 SQL Operations Performed:

### ✔️ Alter Table:
- Dropped column:
```sql
ALTER TABLE employees DROP emp_age;
