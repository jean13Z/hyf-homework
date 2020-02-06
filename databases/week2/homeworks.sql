use lessonone;

-- Part 1 : Working with tasks
-- Add a task with these attributes: title, description, created, updated, due_date, status_id, user_id
Insert into task (title, description, created, updated, due_date, status_id, user_id)
values('Doing homeworks', "You shouldn't procastinate that much", '2020-02-03', '2020-02-03', '2020-02-06', 1, 10 );
-- Change the title of a task
use lesonone;
UPDATE task
SET title = 'watering plants'
WHERE user_id = 1;

--Change a task due date
update task set due_date='2020-02-20 10:10:10' where id=1;

-- Change a task status
update task set status_id=2 where id=10;
--Mark a task as complete
update task set status_id=3 where id=8;
--Delete a task
delete from task where id=30;

--- Part2: School database

--Create a new database containing the following tables: 
create table class (id INT auto_increment,name varchar(20),begins date, ends date, primary key(id));

--Student: with the columns: id, name, email, phone, class_id (foreign key)
create table student(id int auto_increment, name varchar(25),email varchar(20), phone varchar(10),class_id int,primary key(id),foreign key(class_id) references class(id));

--Create an index on the name column of the student table.
create index presence on student (name);

--Add a new column to the class table named status which can only have the following values: not-started, ongoing, finished

alter table class add column status enum('not-started', 'ongoing','finished');
-- extra what happens when you add a not null column after insert
alter table class add column status2 enum('not-started', 'ongoing','finished') not null;
-- extra how to remove a column
alter table class drop column status2;

--- Part 3: More queries

--
