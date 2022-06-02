Create Table "Departments"(
	"dept_no" varchar PRIMARY KEY NOT NULL,
	"dept_name" varchar NOT NULL 
);
Create Table "Dept_Emp" (
	"emp_no" int REFERENCES Employees(emp_no),
	"dept_no" varchar REFERENCES Departments(dept_no)
);

Create Table "Dept_Manager" (
	"dept_no" varchar REFERENCES Departments (dept_no),
	"emp_no" int REFERENCES Employees (emp_no),
);

Create Table "Employees" (
	"emp_no" int PRIMARY KEY NOT NULL,
	"emp_title" varchar NOT NULL,
	"birth_date" date NOT NULL,
	"first_name" varchar NOT NULL,
	"last_name" varchar NOT NULL,
	"sex" varchar NOT NULL,
	"hire_date" date NOT NULL
);

Create Table "Salaries" (
	"emp_no" int REFERENCES employees (emp_no),
	"salary" int NOT NULL
);

Create Table "Titles" (
	"title_id" REFERENCES Employees (emp_no),
	"title" varchar NOT NULL,
);