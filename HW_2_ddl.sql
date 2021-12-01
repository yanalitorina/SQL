--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);
--70 имён добавила через PYTHON 
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

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 16 строками:- 1000 - 1100 - 1200 - 1300 - 1400 - 1500 - 1600 - 1700 - 1800 - 1900 - 2000 - 2100 - 2200 - 2300 - 2400 - 2500

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

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
insert into employee_salary (employee_id, salary_id) values
	('1','1'),
	('2','2'),
    ('3','3'),
    ('4','4'),
    ('5','5'),
    ('6','9'),
    ('7','8'),
    ('8','7'),
    ('9','6'),
    ('10','11'),
    ('11','16'),
    ('12','15'),
    ('13','13'),
    ('14','14'),
    ('15','12'),
    ('16','12'),
    ('17','13'),
    ('18','10'),
    ('19','10'),
    ('20','10'),
    ('21','13'),
    ('22','16'),
    ('23','15'),
    ('24','11'),
    ('25','11'),
    ('26','1'),
    ('27','5'),
    ('28','3'),
    ('29','7'),
    ('30','4'),
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

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

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

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

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
	('21','4'),
	('22','4'),
	('23','5'),
	('24','7'),
	('25','2'),
	('26','20'),
	('27','12'),
	('28','13'),
	('29','5'),
	('30','7'),
	('31','1'),
	('32','2'),
	('33','10'),
	('34','16'),
	('35','15'),
	('36','14'),
	('37','3'),
	('38','4'),
	('39','6'),
	('40','6');
	
	
select * from roles_employee;


