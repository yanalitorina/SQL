--������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);
--70 ��� �������� ����� PYTHON 
--import names
--import psycopg2

--query_insert = 'insert into employees (employee_name) values '
--for i in range(70):
    --if i != 69:
        --query_insert += "('" + names.get_first_name() + "'),\n"
    --else:
        --query_insert += "('" + names.get_first_name() + "');"
--print(query_insert)

--conn = psycopg2.connect(dbname='qa_ddl_24_50',
                       -- user='user_24_50',
                       -- password='123',
                       -- host='159.69.151.133',
                        --port='5056')
--cursor = conn.cursor()
--if conn:
    --print('CONN ======')
    --cursor.execute(query_insert)
    --conn.commit()
insert into employees (employee_name) values ('David'),
('Kenny'),
('Grace'),
('Addie'),
('Marlene'),
('Lori'),
('Paulette'),
('Pearlie'),
('Fernando'),
('Dwight'),
('Juan'),
('Tonya'),
('Linda'),
('Maria'),
('Margaret'),
('Dennis'),
('Martha'),
('Mildred'),
('Gerald'),
('Shannon'),
('Vicky'),
('Ada'),
('Ettie'),
('Lauretta'),
('Lonnie'),
('Miguel'),
('Lisa'),
('Joshua'),
('Ian'),
('Paula'),
('Myrtle'),
('Dorothy'),
('Liz'),
('Angela'),
('Nicole'),
('Marie'),
('Deborah'),
('Doreen'),
('Elbert'),
('Rachel'),
('Irving'),
('Christopher'),
('Fred'),
('Mary'),
('Louis'),
('Terry'),
('William'),
('John'),
('Karl'),
('David'),
('Stacy'),
('Johnathan'),
('Ollie'),
('Gordon'),
('Randy'),
('Helen'),
('Angel'),
('Diane'),
('David'),
('Lenore'),
('Kenneth'),
('Gregory'),
('Leslie'),
('Sharon'),
('Jason'),
('Andrew'),
('Carlos'),
('Nicole'),
('Helen'),
('Edward');
select * from employees;

--������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--��������� ������� salary 16 ��������:- 1000 - 1100 - 1200 - 1300 - 1400 - 1500 - 1600 - 1700 - 1800 - 1900 - 2000 - 2100 - 2200 - 2300 - 2400 - 2500

create table salary(
	id serial primary key,
	monthly_salary int not null
);
insert into salary (monthly_salary) values
	('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400'),
	('2500');
select * from salary;

--������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
insert into employee_salary (employee_id, salary_id) values
	('1','1'),
	('2','2'),
    ('90','3'),
    ('7','4'),
    ('8','5'),
    ('6','9'),
    ('3','8'),
    ('4','7'),
    ('5','6'),
    ('10','11'),
    ('14','16'),
    ('12','15'),
    ('11','13'),
    ('13','14'),
    ('19','12'),
    ('18','12'),
    ('17','13'),
    ('16','10'),
    ('15','10'),
    ('22','10'),
    ('23','13'),
    ('21','16'),
    ('25','15'),
    ('30','11'),
    ('29','11'),
    ('27','1'),
    ('24','5'),
    ('26','3'),
    ('28','7'),
    ('20','4'),
    ('71','2'),
    ('72','9'),
    ('73','8'),
    ('74','7'),
    ('75','2'),
    ('76','13'),
    ('77','12'),
    ('78','6'),
    ('79','8'),
    ('80','4');
select * from employee_salary;

--������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������:

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);

insert into roles (role_name) values 
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
	
select * from roles;

--������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--��������� ������� roles_employee 40 ��������:

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (role_id)
		references roles(id),
	foreign key (employee_id)
		references employees(id)
);

insert into roles_employee (employee_id, role_id) values 
	('1','2'),
	('2','1'),
	('3','3'),
	('4','7'),
	('5','6'),
	('6','5'),
	('7','4'),
	('8','8'),
	('9','9'),
	('10','2'),
	('11','11'),
	('12','12'),
	('13','13'),
	('14','14'),
	('15','15'),
	('16','16'),
	('17','17'),
	('18','18'),
	('19','19'),
	('20','2'),
	('24','4'),
	('25','4'),
	('29','5'),
	('23','7'),
	('50','2'),
	('70','20'),
	('77','12'),
	('60','13'),
	('44','5'),
	('37','7'),
	('51','1'),
	('52','2'),
	('55','10'),
	('59','16'),
	('61','15'),
	('33','14'),
	('34','3'),
	('36','4'),
	('38','6'),
	('47','6');
	
	
select * from roles_employee;


