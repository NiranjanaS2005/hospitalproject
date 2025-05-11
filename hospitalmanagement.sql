mysql> create database Lifeline_hospital;
Query OK, 1 row affected (0.02 sec)

mysql> use Lifeline_hospital;
Database changed
mysql> create table doctor_details;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> system cls;
mysql> tee C:\Users\hp\OneDrive\Documents\Docs class\2340239_Program2

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| a                  |
| abc1               |
| abc2               |
| abc3               |
| avm_hosiptals      |
| avm_hospitals      |
| crm                |
| cs                 |
| doctor_db          |
| endsem             |
| form_data_db       |
| information_schema |
| mysql              |
| performance_schema |
| practise           |
| student            |
| sys                |
| wad_assign         |
+--------------------+
18 rows in set (0.37 sec)

mysql> use avm_hospitals;
Database changed
mysql> create table doctor_details(
    -> doctor_id int,
    -> doctor_name varchar(200),
    -> doctor_department varchar(200),
    -> doctor_salary int
    -> );
Query OK, 0 rows affected (0.26 sec)

mysql> desc doctor_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | YES  |     | NULL    |       |
| doctor_name       | varchar(200) | YES  |     | NULL    |       |
| doctor_department | varchar(200) | YES  |     | NULL    |       |
| doctor_salary     | int          | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
4 rows in set (0.12 sec)

mysql> Terminal close -- exit!
mysql> create database lifeline_hospitals;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| a                  |
| abc1               |
| abc2               |
| abc3               |
| crm                |
| cs                 |
| doctor_db          |
| endsem             |
| form_data_db       |
| information_schema |
| lifeline_hospitals |
| mysql              |
| performance_schema |
| practise           |
| student            |
| sys                |
| wad_assign         |
+--------------------+
17 rows in set (0.00 sec)

mysql> use lifeline_hospitals;
Database changed
mysql> create table doctor_details(doctor_id int,doctor_name varchar(200),doctor_department varchar(200),doctor_salary int);
Query OK, 0 rows affected (0.02 sec)

mysql> desc doctor_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | YES  |     | NULL    |       |
| doctor_name       | varchar(200) | YES  |     | NULL    |       |
| doctor_department | varchar(200) | YES  |     | NULL    |       |
| doctor_salary     | int          | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into doctor_details(doctor_id,doctor_name,doctor_department,doctor_salary)
    -> values
    -> ('101','Dr.Siddhant','Cardiology','500000'),
    -> ('102','Dr.Krithika','Cardiology','200000');
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from doctor_details;
+-----------+-------------+-------------------+---------------+
| doctor_id | doctor_name | doctor_department | doctor_salary |
+-----------+-------------+-------------------+---------------+
|       101 | Dr.Siddhant | Cardiology        |        500000 |
|       102 | Dr.Krithika | Cardiology        |        200000 |
+-----------+-------------+-------------------+---------------+
2 rows in set (0.00 sec)

mysql> create table patient_details(patient_id int,patient_name varchar(200),patient_disease varchar(200),patient_doctor varchar(200),patient_age int);
Query OK, 0 rows affected (0.01 sec)

mysql> desc patient_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| patient_id      | int          | YES  |     | NULL    |       |
| patient_name    | varchar(200) | YES  |     | NULL    |       |
| patient_disease | varchar(200) | YES  |     | NULL    |       |
| patient_doctor  | varchar(200) | YES  |     | NULL    |       |
| patient_age     | int          | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into patient_details(patient_id,patient_name,patient_disease,patient_doctor)
    -> values
    -> ('2010','Tina','CAD','Dr.Siddhanth','2024-12-15')
    -> ('2030','Tony','CHD','Dr.Krithika','2024-12-09');
mysql> INSERT INTO patient_details (patient_id, patient_name, patient_disease, patient_doctor, patient_surgery_date)
    -> VALUES
    -> ('2010', 'Tina', 'CAD', 'Dr.Siddhanth', '2024-12-15'),
    -> ('2030', 'Tony', 'CHD', 'Dr.Krithika', '2024-12-09');
mysql> INSERT INTO patient_details (patient_id, patient_name, patient_disease, patient_doctor)
    -> values
    -> ('2010', 'Tina', 'CAD', 'Dr.Siddhanth', '2024-12-15'),
    -> ('2030', 'Tony', 'CHD', 'Dr.Krithika', '2024-12-09');
mysql> insert into patient_details(patient_id,patient_name,patient_disease,patient_doctor,patient_age)
    -> values
    -> ('2010','Tina','CAD','Dr.Siddhanth','55'),
    -> ('2030','Tony','CHD','Dr.Krithika','65');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from patient_details;
+------------+--------------+-----------------+----------------+-------------+
| patient_id | patient_name | patient_disease | patient_doctor | patient_age |
+------------+--------------+-----------------+----------------+-------------+
|       2010 | Tina         | CAD             | Dr.Siddhanth   |          55 |
|       2030 | Tony         | CHD             | Dr.Krithika    |          65 |
+------------+--------------+-----------------+----------------+-------------+
2 rows in set (0.00 sec)

mysql> alter table doctor_details
    -> add doctor_email varchar(200);
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc doctor_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | YES  |     | NULL    |       |
| doctor_name       | varchar(200) | YES  |     | NULL    |       |
| doctor_department | varchar(200) | YES  |     | NULL    |       |
| doctor_salary     | int          | YES  |     | NULL    |       |
| doctor_email      | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table patient_details
    -> drop column patient_age;
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc patient_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| patient_id      | int          | YES  |     | NULL    |       |
| patient_name    | varchar(200) | YES  |     | NULL    |       |
| patient_disease | varchar(200) | YES  |     | NULL    |       |
| patient_doctor  | varchar(200) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table doctor_details
    -> modify column doctor_salary float;
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc doctor_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | YES  |     | NULL    |       |
| doctor_name       | varchar(200) | YES  |     | NULL    |       |
| doctor_department | varchar(200) | YES  |     | NULL    |       |
| doctor_salary     | float        | YES  |     | NULL    |       |
| doctor_email      | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table patient_details
    -> add date_of_admission date;
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc patient_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| patient_id        | int          | YES  |     | NULL    |       |
| patient_name      | varchar(200) | YES  |     | NULL    |       |
| patient_disease   | varchar(200) | YES  |     | NULL    |       |
| patient_doctor    | varchar(200) | YES  |     | NULL    |       |
| date_of_admission | date         | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> rename table doctor_details to employee_details;
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+------------------------------+
| Tables_in_lifeline_hospitals |
+------------------------------+
| employee_details             |
| patient_details              |
+------------------------------+
2 rows in set (0.03 sec)

mysql> alter table patient_details change patient_disease patient_ailment varchar(200);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc patient_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| patient_id        | int          | YES  |     | NULL    |       |
| patient_name      | varchar(200) | YES  |     | NULL    |       |
| patient_ailment   | varchar(200) | YES  |     | NULL    |       |
| patient_doctor    | varchar(200) | YES  |     | NULL    |       |
| date_of_admission | date         | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table treatment_details(patient_name varchar(200),patient_disease varchar(200),patient_doctor varchar(200),patient_surgery_date date,bill_payd boolean);
Query OK, 0 rows affected (0.01 sec)

mysql> desc treatment_details;
+----------------------+--------------+------+-----+---------+-------+
| Field                | Type         | Null | Key | Default | Extra |
+----------------------+--------------+------+-----+---------+-------+
| patient_name         | varchar(200) | YES  |     | NULL    |       |
| patient_disease      | varchar(200) | YES  |     | NULL    |       |
| patient_doctor       | varchar(200) | YES  |     | NULL    |       |
| patient_surgery_date | date         | YES  |     | NULL    |       |
| bill_payd            | tinyint(1)   | YES  |     | NULL    |       |
+----------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> drop table treatment_details;
Query OK, 0 rows affected (0.07 sec)

mysql> show tables;
+------------------------------+
| Tables_in_lifeline_hospitals |
+------------------------------+
| employee_details             |
| patient_details              |
+------------------------------+
2 rows in set (0.00 sec)

mysql> notee

Lab 3
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| a                  |
| abc1               |
| abc2               |
| abc3               |
| crm                |
| cs                 |
| doctor_db          |
| endsem             |
| form_data_db       |
| information_schema |
| lifeline_hospitals |
| mysql              |
| performance_schema |
| practise           |
| student            |
| sys                |
| wad_assign         |
+--------------------+
17 rows in set (0.00 sec)

mysql> use lifeline_hospitals;
Database changed
mysql> show tables;
+------------------------------+
| Tables_in_lifeline_hospitals |
+------------------------------+
| employee_details             |
| patient_details              |
+------------------------------+
2 rows in set (0.00 sec)

mysql> desc employee_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | YES  |     | NULL    |       |
| doctor_name       | varchar(200) | YES  |     | NULL    |       |
| doctor_department | varchar(200) | YES  |     | NULL    |       |
| doctor_salary     | float        | YES  |     | NULL    |       |
| doctor_email      | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc patient_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| patient_id        | int          | YES  |     | NULL    |       |
| patient_name      | varchar(200) | YES  |     | NULL    |       |
| patient_ailment   | varchar(200) | YES  |     | NULL    |       |
| patient_doctor    | varchar(200) | YES  |     | NULL    |       |
| date_of_admission | date         | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.12 sec)

mysql> alter table employee_details
    -> add constraint pk_doctor_id PRIMARY KEY(doctor_id);
Query OK, 4 rows affected (0.73 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | NO   | PRI | NULL    |       |
| doctor_name       | varchar(200) | YES  |     | NULL    |       |
| doctor_department | varchar(200) | YES  |     | NULL    |       |
| doctor_salary     | float        | YES  |     | NULL    |       |
| doctor_email      | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table employee_details;
Query OK, 0 rows affected (0.00 sec)

mysql> alter table employee_details
    -> modify doctor_name varchar(200) NOT NULL;
Query OK, 4 rows affected, 1 warning (0.12 sec)
Records: 4  Duplicates: 0  Warnings: 1

mysql> alter table employee_details
    -> modify doctor_department varchar(200) NOT NULL;
Query OK, 4 rows affected, 1 warning (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 1

mysql> alter table employee_details
    -> add constraint chk_doctor_salary CHECK(doctor_salary>0);
Query OK, 4 rows affected (0.08 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> alter table employee_details
    -> add constraint fk_doctor_department FOREIGN KEY(doctor_Department) REFERENCES patient_details(patient_doctor);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | NO   | PRI | NULL    |       |
| doctor_name       | varchar(200) | NO   |     | NULL    |       |
| doctor_department | varchar(200) | NO   | MUL | NULL    |       |
| doctor_salary     | float        | YES  |     | NULL    |       |
| doctor_email      | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from employee_details;
+-----------+-------------+-------------------+---------------+-----------------+
| doctor_id | doctor_name | doctor_department | doctor_salary | doctor_email    |
+-----------+-------------+-------------------+---------------+-----------------+
|       101 | Dr.Siddhant | Cardiology        |        500000 | NULL            |
|       102 | Dr.Krithika | Cardiology        |        200000 | NULL            |
|       303 | Dr.Sharan   | Neurology         |        500000 | hello@gmail.com |
|       123 |             |                   |          NULL | NULL            |
+-----------+-------------+-------------------+---------------+-----------------+
4 rows in set (0.00 sec)
mysql> alter table employee_details
    -> alter column doctor_salary SET DEFAULT 500000;
Query OK, 0 rows affected (0.48 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_details;
+-----------+-------------+-------------------+---------------+-----------------+
| doctor_id | doctor_name | doctor_department | doctor_salary | doctor_email    |
+-----------+-------------+-------------------+---------------+-----------------+
|       101 | Dr.Siddhant | Cardiology        |        500000 | NULL            |
|       102 | Dr.Krithika | Cardiology        |        200000 | NULL            |
|       303 | Dr.Sharan   | Neurology         |        500000 | hello@gmail.com |
|       123 |             |                   |          NULL | NULL            |
+-----------+-------------+-------------------+---------------+-----------------+
4 rows in set (0.01 sec)

mysql> desc employee_details;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| doctor_id         | int          | NO   | PRI | NULL    |       |
| doctor_name       | varchar(200) | NO   |     | NULL    |       |
| doctor_department | varchar(200) | NO   | MUL | NULL    |       |
| doctor_salary     | float        | YES  |     | 500000  |       |
| doctor_email      | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.04 sec)

mysql> notee;

mysql> use lifeline_hospitals;
Database changed
mysql> show tables;
+------------------------------+
| Tables_in_lifeline_hospitals |
+------------------------------+
| doctor_details               |
| medications                  |
| patient_details              |
| rooms                        |
+------------------------------+
4 rows in set (0.00 sec)

mysql> drop table medications;
Query OK, 0 rows affected (0.04 sec)

mysql> drop table rooms;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE rooms (
    ->     room_number INT PRIMARY KEY,
    ->     room_type VARCHAR(50) NOT NULL,
    ->     availability_status VARCHAR(20) NOT NULL CHECK (availability_status IN ('Available', 'Occupied', 'Under Maintenance')),
    ->     price_per_day DECIMAL(10, 2) NOT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO rooms (room_number, room_type, availability_status, price_per_day) 
    -> VALUES (101, 'Private', 'Available', 5000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO rooms (room_number, room_type, availability_status, price_per_day) 
    -> VALUES (102, 'Ward', 'Occupied', 1000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO rooms (room_number, room_type, availability_status, price_per_day) 
    -> VALUES (103, 'Suite', 'Under Maintenance', 7000);
Query OK, 1 row affected (0.00 sec)

mysql> CREATE TABLE medications (
    ->     medication_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     medication_name VARCHAR(100) NOT NULL,
    ->     dosage VARCHAR(20) NOT NULL,
    ->     category VARCHAR(50) NOT NULL,
    ->     side_effects TEXT
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO medications (medication_id, medication_name, dosage, category, side_effects) 
    -> VALUES (001,'Paracetamol', '500mg', 'Pain Reliever', 'Nausea'),(002,'Amoxicillin', '250mg', 'Antibiotic', 'Allergy'),(003,'Metformin', '850mg', 'Diabetes Management', 'Stomach Upset');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE inventory (
    ->     item_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     item_name VARCHAR(100) NOT NULL,
    ->     item_type VARCHAR(50) NOT NULL,
    ->     stock_quantity INT NOT NULL,
    ->     reorder_level INT NOT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO inventory (item_name, item_type, stock_quantity, reorder_level) 
    -> VALUES ('Syringe', 'Medical Equipment', 150, 20);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO inventory (item_name, item_type, stock_quantity, reorder_level) 
    -> VALUES ('Thermometers', 'Medical Equipment', 150, 50);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO inventory (item_name, item_type, stock_quantity, reorder_level) 
    -> VALUES ('Otoscopes', 'Medical Equipment', 200, 10);
Query OK, 1 row affected (0.00 sec)

mysql> CREATE TABLE departments (
    ->     department_id INT PRIMARY KEY,
    ->     department_name VARCHAR(100) NOT NULL,
    ->     head_of_department VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO departments (department_id, department_name, head_of_department) 
    -> VALUES (10, 'Radiology', 'Dr. Alan Walker');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO departments (department_id, department_name, head_of_department) 
    -> VALUES (20, 'Cardiology', 'Dr. Thomas Abraham');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO departments (department_id, department_name, head_of_department) 
    -> VALUES (30, 'Oncolgy', 'Dr. Mary Thomas');
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM rooms WHERE availability_status = 'Available';
+-------------+-----------+---------------------+---------------+
| room_number | room_type | availability_status | price_per_day |
+-------------+-----------+---------------------+---------------+
|         101 | Private   | Available           |       5000.00 |
+-------------+-----------+---------------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT medication_name, stock_quantity 
    -> FROM inventory 
    -> WHERE stock_quantity < 10;
ERROR 1054 (42S22): Unknown column 'medication_name' in 'field list'
mysql> SELECT * FROM MEDICATIONS
    -> ;
+---------------+-----------------+--------+---------------------+---------------+
| medication_id | medication_name | dosage | category            | side_effects  |
+---------------+-----------------+--------+---------------------+---------------+
|             1 | Paracetamol     | 500mg  | Pain Reliever       | Nausea        |
|             2 | Amoxicillin     | 250mg  | Antibiotic          | Allergy       |
|             3 | Metformin       | 850mg  | Diabetes Management | Stomach Upset |
+---------------+-----------------+--------+---------------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM inventory;
+---------+--------------+-------------------+----------------+---------------+
| item_id | item_name    | item_type         | stock_quantity | reorder_level |
+---------+--------------+-------------------+----------------+---------------+
|       1 | Syringe      | Medical Equipment |            150 |            20 |
|       2 | Thermometers | Medical Equipment |            150 |            50 |
|       3 | Otoscopes    | Medical Equipment |            200 |            10 |
+---------+--------------+-------------------+----------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT item_name, stock_quantity
    -> FROM inventory
    -> WHERE stock_quantity < 20;
Empty set (0.00 sec)

mysql> SELECT item_name, stock_quantity
    -> FROM inventory
    -> WHERE stock_quantity < 200;
+--------------+----------------+
| item_name    | stock_quantity |
+--------------+----------------+
| Syringe      |            150 |
| Thermometers |            150 |
+--------------+----------------+
2 rows in set (0.00 sec)

mysql> UPDATE rooms 
    -> SET availability_status = 'Occupied' 
    -> WHERE room_number = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE rooms 
    -> SET price_per_day = 6000 
    -> WHERE room_type = 'Private';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM rooms WHERE room_number = 101;
Query OK, 1 row affected (0.01 sec)

mysql> select * from rooms;
+-------------+-----------+---------------------+---------------+
| room_number | room_type | availability_status | price_per_day |
+-------------+-----------+---------------------+---------------+
|         102 | Ward      | Occupied            |       1000.00 |
|         103 | Suite     | Under Maintenance   |       7000.00 |
+-------------+-----------+---------------------+---------------+
2 rows in set (0.00 sec)

mysql> UPDATE inventory 
    -> SET stock_quantity = stock_quantity + 100 
    -> WHERE item_name = 'Syringes';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> DELETE FROM inventory 
    -> WHERE item_name = 'Thermometers';
Query OK, 1 row affected (0.00 sec)

mysql> DELETE FROM inventory 
    -> WHERE stock_quantity < reorder_level;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE departments 
    -> SET head_of_department = 'Dr. Sarah Thompson' 
    -> WHERE department_name = 'Radiology';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from rooms;
+-------------+-----------+---------------------+---------------+
| room_number | room_type | availability_status | price_per_day |
+-------------+-----------+---------------------+---------------+
|         102 | Ward      | Occupied            |       1000.00 |
|         103 | Suite     | Under Maintenance   |       7000.00 |
+-------------+-----------+---------------------+---------------+
2 rows in set (0.00 sec)

mysql> select * from inventory;
+---------+-----------+-------------------+----------------+---------------+
| item_id | item_name | item_type         | stock_quantity | reorder_level |
+---------+-----------+-------------------+----------------+---------------+
|       1 | Syringe   | Medical Equipment |            150 |            20 |
|       3 | Otoscopes | Medical Equipment |            200 |            10 |
+---------+-----------+-------------------+----------------+---------------+
2 rows in set (0.00 sec)

mysql> select * from departments;
+---------------+-----------------+--------------------+
| department_id | department_name | head_of_department |
+---------------+-----------------+--------------------+
|            10 | Radiology       | Dr. Sarah Thompson |
|            20 | Cardiology      | Dr. Thomas Abraham |
|            30 | Oncolgy         | Dr. Mary Thomas    |
+---------------+-----------------+--------------------+
3 rows in set (0.00 sec)

mysql> select * from medications;
+---------------+-----------------+--------+---------------------+---------------+
| medication_id | medication_name | dosage | category            | side_effects  |
+---------------+-----------------+--------+---------------------+---------------+
|             1 | Paracetamol     | 500mg  | Pain Reliever       | Nausea        |
|             2 | Amoxicillin     | 250mg  | Antibiotic          | Allergy       |
|             3 | Metformin       | 850mg  | Diabetes Management | Stomach Upset |
+---------------+-----------------+--------+---------------------+---------------+
3 rows in set (0.00 sec)

mysql> notee;



Lab 5
mysql> SELECT doctor_id, doctor_name, doctor_department, doctor_salary
    -> FROM doctor_details
    -> WHERE doctor_salary > 400000;
+-----------+--------------+-------------------+---------------+
| doctor_id | doctor_name  | doctor_department | doctor_salary |
+-----------+--------------+-------------------+---------------+
|       101 | Dr.Siddhanth | Cardiology        |        500000 |
|       102 | Dr.Krithika  | Cardiology        |        500000 |
|       103 | Dr.Sharan    | Nephrolology      |        500000 |
|       105 | Dr.Lakshmi   | Nephrology        |        500000 |
|       106 | Dr.Sharath   | Gynecology        |        500000 |
|       107 | Dr.Sreenish  | Gynecology        |        500000 |
|       108 | Dr.Divya     | Gynecology        |        500000 |
|       109 | Dr.Nidhi     | Gynecology        |        500000 |
|       110 | Dr.Madhav    | Cardiology        |        500000 |
+-----------+--------------+-------------------+---------------+
9 rows in set (0.00 sec)

mysql> SELECT item_id, item_name, stock_quantity, reorder_level
    -> FROM inventory
    -> WHERE stock_quantity < reorder_level;
Empty set (0.00 sec)

mysql> SELECT patient_id, patient_name, date_of_admission
    -> FROM patient_details
    -> WHERE date_of_admission BETWEEN '2025-01-01' AND '2025-01-31';
Empty set (0.01 sec)

mysql> SELECT item_id, item_name, stock_quantity, reorder_level
    -> FROM inventory
    -> WHERE stock_quantity < reorder_level;
Empty set (0.00 sec)

mysql> SELECT patient_id, patient_name, date_of_admission
    -> FROM patient_details
    -> WHERE date_of_admission BETWEEN '2025-01-01' AND '2025-01-31';
Empty set (0.00 sec)

mysql> SELECT doctor_id, doctor_name, date_of_admission
    -> FROM doctor_details
    -> WHERE date_of_admission BETWEEN '2017-10-02' AND '2023-11-11';
+-----------+--------------+-------------------+
| doctor_id | doctor_name  | date_of_admission |
+-----------+--------------+-------------------+
|       101 | Dr.Siddhanth | 2019-10-02        |
|       102 | Dr.Krithika  | 2020-10-02        |
|       103 | Dr.Sharan    | 2017-10-02        |
|       104 | Dr.Diya      | 2022-10-02        |
|       105 | Dr.Lakshmi   | 2022-10-03        |
|       106 | Dr.Sharath   | 2022-10-10        |
|       107 | Dr.Sreenish  | 2023-11-11        |
|       108 | Dr.Divya     | 2023-03-11        |
|       109 | Dr.Nidhi     | 2023-07-11        |
|       110 | Dr.Madhav    | 2023-07-11        |
+-----------+--------------+-------------------+
10 rows in set (0.00 sec)

mysql> SELECT room_number, room_type, price_per_day
    -> FROM rooms
    -> WHERE availability_status = 'Available' AND room_type = 'Single' AND price_per_day < 3000;
Empty set (0.01 sec)

mysql> SELECT room_number, room_type, price_per_day
    -> FROM rooms
    -> WHERE availability_status = 'Occupied' AND room_type = 'Suite' AND price_per_day < 10000;
Empty set (0.00 sec)

mysql> SELECT room_number, room_type, price_per_day
    -> FROM rooms
    -> WHERE availability_status = 'Under Maintenance' AND room_type = 'Suite' AND price_per_day < 10000;
+-------------+-----------+---------------+
| room_number | room_type | price_per_day |
+-------------+-----------+---------------+
|         103 | Suite     |       7000.00 |
+-------------+-----------+---------------+
1 row in set (0.00 sec)

mysql> SELECT doctor_department, SUM(doctor_salary) AS TotalSalary
    -> FROM doctor_details
    -> GROUP BY doctor_department;
+-------------------+-------------+
| doctor_department | TotalSalary |
+-------------------+-------------+
| Cardiology        |     1500000 |
| Nephrolology      |      500000 |
| Opthalmology      |      200000 |
| Nephrology        |      500000 |
| Gynecology        |     2000000 |
+-------------------+-------------+
5 rows in set (0.01 sec)

mysql> SELECT doctor_department, SUM(doctor_salary) AS TotalSalary
    -> FROM doctor_details
    -> GROUP BY doctor_department
    -> HAVING SUM(doctor_salary) > 500000;
+-------------------+-------------+
| doctor_department | TotalSalary |
+-------------------+-------------+
| Cardiology        |     1500000 |
| Gynecology        |     2000000 |
+-------------------+-------------+
2 rows in set (0.01 sec)

mysql> SELECT medication_id, medication_name, category
    -> from medications
    -> order by category ASC, medication_name ASC;
+---------------+-----------------+---------------------+
| medication_id | medication_name | category            |
+---------------+-----------------+---------------------+
|             2 | Amoxicillin     | Antibiotic          |
|             3 | Metformin       | Diabetes Management |
|             1 | Paracetamol     | Pain Reliever       |
+---------------+-----------------+---------------------+
3 rows in set (0.00 sec)

mysql> notee;

Lab 6
8mysql> CREATE TABLE Patient_Records (
    -> Patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    -> Name VARCHAR(100) NOT NULL,
    -> Date_of_Birth DATE NOT NULL,
    -> Last_Visit_Date DATE,
    -> Appointment_Date DATE,
    -> Admission_Date DATE,
    -> Discharge_Date DATE,
    -> Hospital_Charges DECIMAL(10,2),
    -> Total_Treatment_Days INT
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Patient_Records (Name, Date_of_Birth, Last_Visit_Date, Appointment_Date, Admission_Date, Discharge_Date, Hospital_Charges, Total_Treatment_Days)
    -> VALUES 
    -> ('Alice Thomson','1980-06-15','2024-11-20','2025-01-30','2024-12-01','2024-12-10',1500.75,10),
    -> ('Bob Smith', '1990-03-22', '2024-09-15', '2025-02-10', '2024-11-25', '2024-11-30', 2000.00, 5),
    -> ('Catherine Lee', '1975-10-10', '2024-10-01', '2025-01-15', '2024-12-05', '2024-12-20', 3000.50, 15);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Patient_Records;
+------------+---------------+---------------+-----------------+------------------+----------------+----------------+------------------+----------------------+
| Patient_ID | Name          | Date_of_Birth | Last_Visit_Date | Appointment_Date | Admission_Date | Discharge_Date | Hospital_Charges | Total_Treatment_Days |
+------------+---------------+---------------+-----------------+------------------+----------------+----------------+------------------+----------------------+
|          1 | Alice Thomson | 1980-06-15    | 2024-11-20      | 2025-01-30       | 2024-12-01     | 2024-12-10     |          1500.75 |                   10 |
|          2 | Bob Smith     | 1990-03-22    | 2024-09-15      | 2025-02-10       | 2024-11-25     | 2024-11-30     |          2000.00 |                    5 |
|          3 | Catherine Lee | 1975-10-10    | 2024-10-01      | 2025-01-15       | 2024-12-05     | 2024-12-20     |          3000.50 |                   15 |
+------------+---------------+---------------+-----------------+------------------+----------------+----------------+------------------+----------------------+
3 rows in set (0.00 sec)

mysql> SELECT CURDATE() AS Today;
+------------+
| Today      |
+------------+
| 2025-01-27 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT Name,YEAR(CURDATE())-YEAR(Date_of_Birth) AS Current_Age FROM Patient_Records;
+---------------+-------------+
| Name          | Current_Age |
+---------------+-------------+
| Alice Thomson |          45 |
| Bob Smith     |          35 |
| Catherine Lee |          50 |
+---------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT Name,DATEDIFF(Appointment_Date, CURDATE()) AS Days_Left_For_Appointment FROM Patient_Records;
+---------------+---------------------------+
| Name          | Days_Left_For_Appointment |
+---------------+---------------------------+
| Alice Thomson |                         3 |
| Bob Smith     |                        14 |
| Catherine Lee |                       -12 |
+---------------+---------------------------+
3 rows in set (0.00 sec)

mysql> SELECT Name, ROUND(Hospital_Charges,-2) AS Rounded_Charges FROM Patient_Records;
+---------------+-----------------+
| Name          | Rounded_Charges |
+---------------+-----------------+
| Alice Thomson |            1500 |
| Bob Smith     |            2000 |
| Catherine Lee |            3000 |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> SELECT Name,CEIL(Hospital_Charges) AS Ceil_Charges FROM Patient_Records;
+---------------+--------------+
| Name          | Ceil_Charges |
+---------------+--------------+
| Alice Thomson |         1501 |
| Bob Smith     |         2000 |
| Catherine Lee |         3001 |
+---------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT Name,FLOOR(Hospital_Charges) AS Ceil_Charges FROM Patient_Records;
+---------------+--------------+
| Name          | Ceil_Charges |
+---------------+--------------+
| Alice Thomson |         1500 |
| Bob Smith     |         2000 |
| Catherine Lee |         3000 |
+---------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT Name,MOD(Hospital_Charges,500) AS Remaining_Balance_After_500 FROM Patient_Records;
+---------------+-----------------------------+
| Name          | Remaining_Balance_After_500 |
+---------------+-----------------------------+
| Alice Thomson |                        0.75 |
| Bob Smith     |                        0.00 |
| Catherine Lee |                        0.50 |
+---------------+-----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT Name,SQRT(Total_Treatment_Days) AS Treatment_Score FROM Patient_Records;
+---------------+--------------------+
| Name          | Treatment_Score    |
+---------------+--------------------+
| Alice Thomson | 3.1622776601683795 |
| Bob Smith     |   2.23606797749979 |
| Catherine Lee |  3.872983346207417 |
+---------------+--------------------+
3 rows in set (0.00 sec)

mysql> SELECT Name,DATE_ADD(Admission_Date,INTERVAL 10 DAY) AS Followup_Date FROM Patient_Records;
+---------------+---------------+
| Name          | Followup_Date |
+---------------+---------------+
| Alice Thomson | 2024-12-11    |
| Bob Smith     | 2024-12-05    |
| Catherine Lee | 2024-12-15    |
+---------------+---------------+
3 rows in set (0.00 sec)

mysql> note

mysql> USE HospitalManagement;
Database changed
mysql> CREATE TABLE doctors (
    -> doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(100),
    -> specialty VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE patients (
    -> patient_id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(100),
    -> age INT,
    -> diagnosis VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE appointments (
    -> appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    -> doctor_id INT,
    -> patient_id INT,
    -> appointment_date DATE,
    -> room_number VARCHAR(10),
    -> status VARCHAR(50),
    -> FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    -> FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE records (
    -> record_id INT PRIMARY KEY AUTO_INCREMENT,
    -> patient_id INT,
    -> record_note TEXT,
    -> FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO doctors (name, specialty) VALUES('Dr. Smith', 'Cardiology'),('Dr. Johnson', 'Neurology'),('Dr. Patel', 'Orthopedics'),('Dr. Lee', 'Pediatrics'),('Dr. Brown', 'Surgery');
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO patients (name, age, diagnosis) VALUES('Alice', 30, 'Hypertension'),('Bob', 45, 'Migraine'),('Charlie', 50, 'Arthritis'),('David', 5, 'Flu'),('Eve', 65, 'Heart Disease');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO appointments (doctor_id, patient_id, appointment_date, room_number, status) VALUES(1, 1, '2025-02-16', 'A101', 'Completed'),(2, 2, '2025-02-17', 'B202', 'Scheduled'),(3, 3, '2025-02-18', 'C303', 'Cancelled'),(4, 4, '2025-02-19', 'D404', 'Completed'),(5, 5, '2025-02-20', 'E505', 'Scheduled');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO records (patient_id, record_note) VALUES(1, 'Blood pressure checkup: 140/90'),(2, 'MRI scan scheduled'),(3, 'X-ray of knee joints taken'),(4, 'Prescribed cough syrup'),(5, 'ECG report reviewed');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT ASCII(name) AS ascii_value FROM doctors;
+-------------+
| ascii_value |
+-------------+
|          68 |
|          68 |
|          68 |
|          68 |
|          68 |
+-------------+
5 rows in set (0.05 sec)

mysql> SELECT BIN(age) AS binary_age FROM patients;
+------------+
| binary_age |
+------------+
| 11110      |
| 101101     |
| 110010     |
| 101        |
| 1000001    |
+------------+
5 rows in set (0.04 sec)

mysql> SELECT BIT_LENGTH(diagnosis) AS bit_length FROM patients;
+------------+
| bit_length |
+------------+
|         96 |
|         64 |
|         72 |
|         24 |
|        104 |
+------------+
5 rows in set (0.01 sec)

mysql> SELECT CHAR(65, 66, 67) AS char_example;
+----------------------------+
| char_example               |
+----------------------------+
|                    |
+----------------------------+
1 row in set (0.00 sec)

mysql> SELECT CHAR_LENGTH(name) AS char_length FROM doctors;
+-------------+
| char_length |
+-------------+
|           9 |
|          11 |
|           9 |
|           7 |
|           9 |
+-------------+
5 rows in set (0.00 sec)

mysql> SELECT CHARACTER_LENGTH(diagnosis) AS character_length FROM patients;
+------------------+
| character_length |
+------------------+
|               12 |
|                8 |
|                9 |
|                3 |
|               13 |
+------------------+
5 rows in set (0.00 sec)

mysql> SELECT CONCAT(name, ' - ', specialty) AS doctor_info FROM doctors;
+-------------------------+
| doctor_info             |
+-------------------------+
| Dr. Smith - Cardiology  |
| Dr. Johnson - Neurology |
| Dr. Patel - Orthopedics |
| Dr. Lee - Pediatrics    |
| Dr. Brown - Surgery     |
+-------------------------+
5 rows in set (0.00 sec)

mysql> SELECT CONCAT_WS(' | ', name, age, diagnosis) AS patient_info FROM patients;
+---------------------------+
| patient_info              |
+---------------------------+
| Alice | 30 | Hypertension |
| Bob | 45 | Migraine       |
| Charlie | 50 | Arthritis  |
| David | 5 | Flu           |
| Eve | 65 | Heart Disease  |
+---------------------------+
5 rows in set (0.00 sec)

mysql> SELECT FORMAT(age * 1.5, 2) AS formatted_age FROM patients;
+---------------+
| formatted_age |
+---------------+
| 45.00         |
| 67.50         |
| 75.00         |
| 7.50          |
| 97.50         |
+---------------+
5 rows in set (0.01 sec)

mysql> SELECT ELT(2, 'Cardiology', 'Neurology', 'Orthopedics') AS specialty_choice;
+------------------+
| specialty_choice |
+------------------+
| Neurology        |
+------------------+
1 row in set (0.00 sec)

mysql> SELECT INSERT(name, 2, 3, '***') AS masked_name FROM patients;
+-------------+
| masked_name |
+-------------+
| A***e       |
| B***        |
| C***lie     |
| D***d       |
| E***        |
+-------------+
5 rows in set (0.00 sec)

mysql> SELECT INSTR(diagnosis, 'Heart') AS substring_index FROM patients;
+-----------------+
| substring_index |
+-----------------+
|               0 |
|               0 |
|               0 |
|               0 |
|               1 |
+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT LEFT(name, 3) AS name_prefix FROM doctors;
+-------------+
| name_prefix |
+-------------+
| Dr.         |
| Dr.         |
| Dr.         |
| Dr.         |
| Dr.         |
+-------------+
5 rows in set (0.00 sec)

mysql> SELECT MID(diagnosis, 2, 4) AS diagnosis_part FROM patients;
+----------------+
| diagnosis_part |
+----------------+
| yper           |
| igra           |
| rthr           |
| lu             |
| eart           |
+----------------+
5 rows in set (0.00 sec)

mysql> SELECT LOCATE('Flu', diagnosis) AS flu_position FROM patients;
+--------------+
| flu_position |
+--------------+
|            0 |
|            0 |
|            0 |
|            1 |
|            0 |
+--------------+
5 rows in set (0.00 sec)

mysql> SELECT LOWER(name) AS lower_name FROM doctors;
+-------------+
| lower_name  |
+-------------+
| dr. smith   |
| dr. johnson |
| dr. patel   |
| dr. lee     |
| dr. brown   |
+-------------+
5 rows in set (0.00 sec)

mysql> SELECT UPPER(name) AS upper_name FROM patients;
+------------+
| upper_name |
+------------+
| ALICE      |
| BOB        |
| CHARLIE    |
| DAVID      |
| EVE        |
+------------+
5 rows in set (0.00 sec)

mysql> SELECT LTRIM('   Hospital') AS left_trimmed;
+--------------+
| left_trimmed |
+--------------+
| Hospital     |
+--------------+
1 row in set (0.01 sec)

mysql> SELECT RTRIM('Records   ') AS right_trimmed;
+---------------+
| right_trimmed |
+---------------+
| Records       |
+---------------+
1 row in set (0.01 sec)

mysql> SELECT TRIM('   Appointment   ') AS trimmed;
+-------------+
| trimmed     |
+-------------+
| Appointment |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT name FROM patients WHERE name LIKE 'A%';
+-------+
| name  |
+-------+
| Alice |
+-------+
1 row in set (0.02 sec)

mysql> SELECT name FROM patients WHERE name NOT LIKE '%e';
+-------+
| name  |
+-------+
| Bob   |
| David |
+-------+
2 rows in set (0.00 sec)

mysql> SELECT name FROM patients WHERE diagnosis REGEXP 'Flu|Fever';
+-------+
| name  |
+-------+
| David |
+-------+
1 row in set (0.13 sec)

mysql> SELECT name FROM patients WHERE diagnosis NOT REGEXP 'Cold';
+---------+
| name    |
+---------+
| Alice   |
| Bob     |
| Charlie |
| David   |
| Eve     |
+---------+
5 rows in set (0.00 sec)

mysql> SELECT HEX(age) AS hex_age FROM patients;
+---------+
| hex_age |
+---------+
| 1E      |
| 2D      |
| 32      |
| 5       |
| 41      |
+---------+
5 rows in set (0.01 sec)

mysql> SELECT OCT(age) AS octal_age FROM patients;
+-----------+
| octal_age |
+-----------+
| 36        |
| 55        |
| 62        |
| 5         |
| 101       |
+-----------+
5 rows in set (0.00 sec)

mysql> SELECT ORD(name) AS ord_value FROM doctors;
+-----------+
| ord_value |
+-----------+
|        68 |
|        68 |
|        68 |
|        68 |
|        68 |
+-----------+
5 rows in set (0.00 sec)

mysql> SELECT QUOTE(diagnosis) AS quoted_diagnosis FROM patients;
+------------------+
| quoted_diagnosis |
+------------------+
| 'Hypertension'   |
| 'Migraine'       |
| 'Arthritis'      |
| 'Flu'            |
| 'Heart Disease'  |
+------------------+
5 rows in set (0.00 sec)

mysql> SELECT EXPORT_SET(5, 'Active', 'Inactive') AS export_status;
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| export_status                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Active,Inactive,Active,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive,Inactive |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT FIELD('Neurology', 'Cardiology', 'Neurology', 'Pediatrics') AS field_position;
+----------------+
| field_position |
+----------------+
|              2 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT FIND_IN_SET('Scheduled', 'Completed,Scheduled,Cancelled') AS status_index;
+--------------+
| status_index |
+--------------+
|            2 |
+--------------+
1 row in set (0.00 sec)

mysql> SELECT MAKE_SET(5, 'Surgery', 'Consultation', 'Checkup') AS set_services;
+-----------------+
| set_services    |
+-----------------+
| Surgery,Checkup |
+-----------------+
1 row in set (0.00 sec)

mysql> ALTER TABLE doctors ADD FULLTEXT(name, specialty);
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT MATCH(name, specialty) AGAINST('Cardiology') AS match_score FROM doctors;
+--------------------+
| match_score        |
+--------------------+
| 1.3551265001296997 |
|                  0 |
|                  0 |
|                  0 |
|                  0 |
+--------------------+
5 rows in set (0.00 sec)

mysql> notee

mysql> create database hospital;
Query OK, 1 row affected (0.02 sec)

mysql> use hospital;
Database changed
mysql> CREATE TABLE Patients(PatientID INT PRIMARY KEY,Name VARCHAR(100),Age INT,Gender VARCHAR(10),ContactNumber VARCHAR(15));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Doctors(DoctorID INT PRIMARY KEY,Name VARCHAR(100),Specialization VARCHAR(100),ConsultationFee DECIMAL(10,2));
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Appointments(AppointmentID INT PRIMARY KEY,PatientID INT,DoctorID INT,AppointmentDate DATE,FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID));
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Billing (BillID INT PRIMARY KEY,PatientID INT,DoctorID INT,Amount DECIMAL(10,2),BillDate DATE,FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID));
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO Patients (PatientID, Name, Age, Gender, ContactNumber) VALUES(1, 'Alice Johnson', 45, 'Female', '9876543210'),(2, 'Bob Smith', 60, 'Male', '9876501234'),(3, 'Charlie Brown', 30, 'Male', '7894561230'),(4, 'Diana Prince', 55, 'Female', '7891236540'),(5, 'Ethan Hunt', 40, 'Male', '7654321098');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Doctors (DoctorID, Name, Specialization, ConsultationFee) VALUES(101, 'Dr. David Williams', 'Cardiologist', 1500.00),(102, 'Dr. Emily Carter', 'Dermatologist', 1000.00),(103, 'Dr. Robert Brown', 'Orthopedic', 2000.00);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate) VALUES(201, 1, 101, '2024-02-10'),(202, 2, 103, '2024-02-15'),(203, 3, 102, '2024-02-20'),(204, 4, 101, '2024-03-01'),(205, 5, 103, '2024-03-05');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Billing (BillID, PatientID, DoctorID, Amount, BillDate) VALUES(301, 1, 101, 5000.00, '2024-02-10'),(302, 2, 103, 7000.00, '2024-02-15'),(303, 3, 102, 4500.00, '2024-02-20'),(304, 4, 101, 5200.00, '2024-03-01'),(305, 5, 103, 6000.00, '2024-03-05');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Patients WHERE Age > 50 AND Gender = 'Female';
+-----------+--------------+------+--------+---------------+
| PatientID | Name         | Age  | Gender | ContactNumber |
+-----------+--------------+------+--------+---------------+
|         4 | Diana Prince |   55 | Female | 7891236540    |
+-----------+--------------+------+--------+---------------+
1 row in set (0.16 sec)


mysql> SELECT COUNT(*) AS TotalPatients FROM Patients;
+---------------+
| TotalPatients |
+---------------+
|             5 |
+---------------+
1 row in set (0.04 sec)

mysql> SELECT SUM(Amount) AS TotalRevenue FROM Billing;
+--------------+
| TotalRevenue |
+--------------+
|     27700.00 |
+--------------+
1 row in set (0.04 sec)

mysql> SELECT AVG(Age) AS AveragePatientAge FROM Patients;
+-------------------+
| AveragePatientAge |
+-------------------+
|           46.0000 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(ConsultationFee) AS MaxFee, MIN(ConsultationFee) AS MinFee FROM Doctors;
+---------+---------+
| MaxFee  | MinFee  |
+---------+---------+
| 2000.00 | 1000.00 |
+---------+---------+
1 row in set (0.03 sec)

mysql> SELECT * FROM Patients ORDER BY Age ASC;
+-----------+---------------+------+--------+---------------+
| PatientID | Name          | Age  | Gender | ContactNumber |
+-----------+---------------+------+--------+---------------+
|         3 | Charlie Brown |   30 | Male   | 7894561230    |
|         5 | Ethan Hunt    |   40 | Male   | 7654321098    |
|         1 | Alice Johnson |   45 | Female | 9876543210    |
|         4 | Diana Prince  |   55 | Female | 7891236540    |
|         2 | Bob Smith     |   60 | Male   | 9876501234    |
+-----------+---------------+------+--------+---------------+
5 rows in set (0.02 sec)

mysql> SELECT * FROM Appointments ORDER BY AppointmentDate DESC;
+---------------+-----------+----------+-----------------+
| AppointmentID | PatientID | DoctorID | AppointmentDate |
+---------------+-----------+----------+-----------------+
|           205 |         5 |      103 | 2024-03-05      |
|           204 |         4 |      101 | 2024-03-01      |
|           203 |         3 |      102 | 2024-02-20      |
|           202 |         2 |      103 | 2024-02-15      |
|           201 |         1 |      101 | 2024-02-10      |
+---------------+-----------+----------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT DoctorID, COUNT(PatientID) AS PatientCount FROM Appointments GROUP BY DoctorID;
+----------+--------------+
| DoctorID | PatientCount |
+----------+--------------+
|      101 |            2 |
|      102 |            1 |
|      103 |            2 |
+----------+--------------+
3 rows in set (0.01 sec)

mysql> SELECT DoctorID, COUNT(AppointmentID) AS TotalAppointments FROM Appointments GROUP BY DoctorID HAVING COUNT(AppointmentID) > 10;
Empty set (0.00 sec)

mysql> SELECT DoctorID, COUNT(AppointmentID) AS AppointmentCount FROM Appointments WHERE YEAR(AppointmentDate) = 2024 GROUP BY DoctorID ORDER BY AppointmentCount DESC;
+----------+------------------+
| DoctorID | AppointmentCount |
+----------+------------------+
|      101 |                2 |
|      103 |                2 |
|      102 |                1 |
+----------+------------------+
3 rows in set (0.06 sec)

mysql> SELECT DoctorID, SUM(Amount) AS TotalBilling FROM Billing WHERE YEAR(BillDate) = 2024 GROUP BY DoctorID HAVING SUM(Amount) > 5000 ORDER BY TotalBilling DESC;
+----------+--------------+
| DoctorID | TotalBilling |
+----------+--------------+
|      103 |     13000.00 |
|      101 |     10200.00 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> notee

mysql> CREATE DATABASE h2;
Query OK, 1 row affected (0.14 sec)

mysql> USE h2;
Database changed
mysql> CREATE TABLE Patients (
    -> PatientID INT PRIMARY KEY AUTO_INCREMENT,
    -> Name VARCHAR(100),
    -> Age INT,
    -> Gender ENUM('Male','Female','Other'),
    -> Address VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.61 sec)

mysql> CREATE TABLE Doctors (
    -> DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    -> Name VARCHAR(100),
    -> Specialty VARCHAR(100),
    -> Experience INT
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Appointments (
    ->     AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     PatientID INT,
    ->     DoctorID INT,
    ->     AppointmentDate DATE,
    ->     Diagnosis VARCHAR(255),
    ->     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    ->     FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE Bills (
    ->     BillID INT PRIMARY KEY AUTO_INCREMENT,
    ->     PatientID INT,
    ->     Amount DECIMAL(10,2),
    ->     PaymentStatus ENUM('Paid', 'Unpaid'),
    ->     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Patients (Name,Age,Gender,Address) VALUES 
    -> ('Jose G',45,'Male','101 Sardar Street'),
    -> ('Jenny K',31,'Female','145 Gandhi Street'),
    -> ('Nick S',62,'Male','137 Sarojini Street');
Query OK, 3 rows affected (0.19 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Doctors (Name,Specialty,Experience) VALUES  
    -> ('Dr.Murphy','Cardiology',15),
    -> ('Dr.Cera','Neurology',20),
    -> ('Dr.Thara','Orthopedics',10);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Diagnosis) VALUES 
    -> (1, 1, '2025-03-10', 'High Blood Pressure'),
    -> (2, 2, '2025-03-08', 'Migraine'),
    -> (3, 1, '2025-03-07', 'Chest Pain');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Bills (PatientID, Amount, PaymentStatus) VALUES 
    -> (1, 5000, 'Paid'),
    -> (2, 3000, 'Unpaid'),
    -> (3, 7000, 'Paid');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Patients;
+-----------+---------+------+--------+---------------------+
| PatientID | Name    | Age  | Gender | Address             |
+-----------+---------+------+--------+---------------------+
|         1 | Jose G  |   45 | Male   | 101 Sardar Street   |
|         2 | Jenny K |   31 | Female | 145 Gandhi Street   |
|         3 | Nick S  |   62 | Male   | 137 Sarojini Street |
+-----------+---------+------+--------+---------------------+
3 rows in set (0.11 sec)

mysql> SELECT * FROM Doctors;
+----------+-----------+-------------+------------+
| DoctorID | Name      | Specialty   | Experience |
+----------+-----------+-------------+------------+
|        1 | Dr.Murphy | Cardiology  |         15 |
|        2 | Dr.Cera   | Neurology   |         20 |
|        3 | Dr.Thara  | Orthopedics |         10 |
+----------+-----------+-------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Appointments;
+---------------+-----------+----------+-----------------+---------------------+
| AppointmentID | PatientID | DoctorID | AppointmentDate | Diagnosis           |
+---------------+-----------+----------+-----------------+---------------------+
|             1 |         1 |        1 | 2025-03-10      | High Blood Pressure |
|             2 |         2 |        2 | 2025-03-08      | Migraine            |
|             3 |         3 |        1 | 2025-03-07      | Chest Pain          |
+---------------+-----------+----------+-----------------+---------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Bills;
+--------+-----------+---------+---------------+
| BillID | PatientID | Amount  | PaymentStatus |
+--------+-----------+---------+---------------+
|      1 |         1 | 5000.00 | Paid          |
|      2 |         2 | 3000.00 | Unpaid        |
|      3 |         3 | 7000.00 | Paid          |
+--------+-----------+---------+---------------+
3 rows in set (0.01 sec)

mysql> SELECT Diagnosis, 
    ->        (SELECT Name FROM Doctors WHERE Doctors.DoctorID = Appointments.DoctorID) AS Doctor_Name
    -> FROM Appointments
    -> WHERE PatientID = 1;
+---------------------+-------------+
| Diagnosis           | Doctor_Name |
+---------------------+-------------+
| High Blood Pressure | Dr.Murphy   |
+---------------------+-------------+
1 row in set (0.17 sec)

mysql> SELECT Name, Age, Gender, Address
    -> FROM Patients
    -> WHERE PatientID IN (SELECT PatientID FROM Bills WHERE PaymentStatus = 'Unpaid');
+---------+------+--------+-------------------+
| Name    | Age  | Gender | Address           |
+---------+------+--------+-------------------+
| Jenny K |   31 | Female | 145 Gandhi Street |
+---------+------+--------+-------------------+
1 row in set (0.04 sec)

mysql> SELECT Name 
    -> FROM Patients 
    -> WHERE PatientID IN (
    ->     SELECT PatientID 
    ->     FROM Appointments 
    ->     WHERE DoctorID = (
    ->         SELECT DoctorID FROM Doctors ORDER BY Experience DESC LIMIT 1
    ->     )
    -> );
+---------+
| Name    |
+---------+
| Jenny K |
+---------+
1 row in set (0.11 sec)

mysql> SELECT Name, Specialty
    -> FROM Doctors
    -> WHERE DoctorID = ANY (SELECT DoctorID FROM Appointments WHERE PatientID IN 
    ->                       (SELECT PatientID FROM Patients WHERE Age > 50));
+-----------+------------+
| Name      | Specialty  |
+-----------+------------+
| Dr.Murphy | Cardiology |
+-----------+------------+
1 row in set (0.02 sec)

mysql> SELECT Name, Age
    -> FROM Patients
    -> WHERE PatientID IN (
    ->     SELECT PatientID 
    ->     FROM Bills 
    ->     WHERE Amount > ALL (SELECT Amount FROM Bills WHERE PaymentStatus = 'Unpaid')
    -> );
+--------+------+
| Name   | Age  |
+--------+------+
| Jose G |   45 |
| Nick S |   62 |
+--------+------+
2 rows in set (0.01 sec)

mysql> notee

mysql> CREATE DATABASE h4;
Query OK, 1 row affected (0.01 sec)

mysql> USE h4;
Database changed
mysql> CREATE TABLE Patients (
    ->     patient_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     name VARCHAR(100),
    ->     age INT,
    ->     gender ENUM('Male', 'Female'),
    ->     contact_no VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Doctors (
    ->     doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     name VARCHAR(100),
    ->     specialization VARCHAR(100),
    ->     contact_no VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Appointments (
    ->     appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     patient_id INT,
    ->     doctor_id INT,
    ->     appointment_date DATE,
    ->     status ENUM('Scheduled', 'Completed', 'Cancelled'),
    ->     FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    ->     FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Departments (
    ->     dept_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     dept_name VARCHAR(100),
    ->     doctor_id INT,
    ->     FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Bills (
    ->     bill_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     patient_id INT,
    ->     amount DECIMAL(10,2),
    ->     bill_date DATE,
    ->     FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Patients (name,age,gender,contact_no) VALUES
    -> ('Sara',30,'Female','9876543210'),
    -> ('Benny',29,'Male','9947252005'),
    -> ('Amy',46,'Female','7896541230');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Doctors (name, specialization, contact_no) VALUES
    -> ('Dr. Smith', 'Cardiologist', '9988776655'),
    -> ('Dr. John', 'Dermatologist', '8877665544'),
    -> ('Dr. Manu', 'Orthopedic', '7766554433');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
    -> (1, 1, '2025-03-20', 'Scheduled'),
    -> (2, 2, '2025-03-21', 'Completed'),
    -> (3, 3, '2025-03-22', 'Cancelled');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Departments (dept_name, doctor_id) VALUES
    -> ('Cardiology', 1),
    -> ('Dermatology', 2),
    -> ('Orthopedics', 3);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Bills (patient_id, amount, bill_date) VALUES
    -> (1, 5000.00, '2025-03-21'),
    -> (2, 3000.00, '2025-03-22');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT Patients.name AS Patient, Doctors.name AS Doctor, Appointments.appointment_date, Appointments.status
    -> FROM Patients
    -> INNER JOIN Appointments ON Patients.patient_id = Appointments.patient_id
    -> INNER JOIN Doctors ON Appointments.doctor_id = Doctors.doctor_id;
+---------+-----------+------------------+-----------+
| Patient | Doctor    | appointment_date | status    |
+---------+-----------+------------------+-----------+
| Sara    | Dr. Smith | 2025-03-20       | Scheduled |
| Benny   | Dr. John  | 2025-03-21       | Completed |
| Amy     | Dr. Manu  | 2025-03-22       | Cancelled |
+---------+-----------+------------------+-----------+
3 rows in set (0.00 sec)

mysql> INSERT INTO Doctors (name, specialization, contact_no) VALUES
    -> ('Dr. Adams', 'Cardiologist', '6655443322'),
    -> ('Dr. Brown', 'Dermatologist', '5544332211');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT d1.name AS Doctor1, d2.name AS Doctor2, d1.specialization
    -> FROM Doctors d1
    -> JOIN Doctors d2 
    -> ON d1.specialization = d2.specialization AND d1.doctor_id <> d2.doctor_id;
+-----------+-----------+----------------+
| Doctor1   | Doctor2   | specialization |
+-----------+-----------+----------------+
| Dr. Adams | Dr. Smith | Cardiologist   |
| Dr. Brown | Dr. John  | Dermatologist  |
| Dr. Smith | Dr. Adams | Cardiologist   |
| Dr. John  | Dr. Brown | Dermatologist  |
+-----------+-----------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT Patients.name, Appointments.appointment_date, Appointments.status
    -> FROM Patients
    -> LEFT JOIN Appointments ON Patients.patient_id = Appointments.patient_id;
+-------+------------------+-----------+
| name  | appointment_date | status    |
+-------+------------------+-----------+
| Sara  | 2025-03-20       | Scheduled |
| Benny | 2025-03-21       | Completed |
| Amy   | 2025-03-22       | Cancelled |
+-------+------------------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT Doctors.name, Departments.dept_name
    -> FROM Doctors
    -> RIGHT JOIN Departments ON Doctors.doctor_id = Departments.doctor_id;
+-----------+-------------+
| name      | dept_name   |
+-----------+-------------+
| Dr. Smith | Cardiology  |
| Dr. John  | Dermatology |
| Dr. Manu  | Orthopedics |
+-----------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT Patients.name, Bills.amount, Bills.bill_date
    -> FROM Patients
    -> LEFT JOIN Bills ON Patients.patient_id = Bills.patient_id
    -> UNION
    -> SELECT Patients.name, Bills.amount, Bills.bill_date
    -> FROM Patients
    -> RIGHT JOIN Bills ON Patients.patient_id = Bills.patient_id;
+-------+---------+------------+
| name  | amount  | bill_date  |
+-------+---------+------------+
| Sara  | 5000.00 | 2025-03-21 |
| Benny | 3000.00 | 2025-03-22 |
| Amy   |    NULL | NULL       |
+-------+---------+------------+
3 rows in set (0.01 sec)

mysql> SELECT Patients.name AS Patient, Doctors.name AS Doctor
    -> FROM Patients
    -> CROSS JOIN Doctors;
+---------+-----------+
| Patient | Doctor    |
+---------+-----------+
| Amy     | Dr. Smith |
| Benny   | Dr. Smith |
| Sara    | Dr. Smith |
| Amy     | Dr. John  |
| Benny   | Dr. John  |
| Sara    | Dr. John  |
| Amy     | Dr. Manu  |
| Benny   | Dr. Manu  |
| Sara    | Dr. Manu  |
| Amy     | Dr. Adams |
| Benny   | Dr. Adams |
| Sara    | Dr. Adams |
| Amy     | Dr. Brown |
| Benny   | Dr. Brown |
| Sara    | Dr. Brown |
+---------+-----------+
15 rows in set (0.00 sec)

mysql> notee
