-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/nBqaHC
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR(50)   NOT NULL,
    "birth_date" date   NOT NULL,
    "First_Name" varchar(30)   NOT NULL,
    "Last_name" varchar(30)   NOT NULL,
    "Sex" varchar(10)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salary" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "Dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(50)   NOT NULL
);

-- Table documentation comment 2
CREATE TABLE "Department" (
    "dept_no" VARCHAR(50)   NOT NULL,
    -- Field documentation comment 1
    -- Field documentation comment 2
    "dept_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dep_manager" (
    "dept_no" VARCHAR(50)   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Dep_manager" ADD CONSTRAINT "fk_Dep_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Dep_manager" ADD CONSTRAINT "fk_Dep_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

