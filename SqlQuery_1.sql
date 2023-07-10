Create database School;

drop table Instructor;
drop table Student;
drop table Users;
drop table Course;
drop table Inscription;

Use School;

Create table Users(
id int identity primary key,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(20) unique NOT NULL,
password varchar(20) NOT NULL
);

Create table Instructor(
id int primary key references Users(ID) ON DELETE CASCADE,
evaluation decimal(4,2)
);

Create table Student(
id int primary key references Users(ID) ON DELETE CASCADE,
final_grade decimal(4,2)
);

Create table Course(
id int identity primary key,
id_instructor int references Instructor(ID) ON DELETE CASCADE,
description varchar(200) NOT NULL,
name varchar(30) unique NOT NULL
);

Create table Inscription(
id_student int references Student(ID) NOT NULL,
id_course int references Course(ID) NOT NULL,
id_instructor int references Instructor(ID) NOT NULL,
grade decimal(5,2),
primary key(id_student,id_course,id_instructor)
);

go

create proc Connect
@id int,
@password varchar(20),
@type int output,
@success bit output
as 
begin
	if exists(select id, password 
		      from Users 
		      where id = @id and password = @password)
		      begin set @success = 1
			if exists(select id 
					  from Instructor 
					  where id = @id)
			          set @type = 1
			if exists(select id 
			          from Student 
			          where id = @id)
			          set @type = 2
end
else 
	begin
		set @type = -1;
		set @success = 0;
	end
end

go

create proc InstructorAddCourse
@name varchar(20),
@instructor_id int,
@description varchar(200)
as
if exists(select id from Instructor where id = @instructor_id)
	insert into Course(name, id_instructor, description) 
	values (@name, @instructor_id, @description)

go

create proc InscriptionToCourse
@studentId int,
@courseId int,
@instructorId int
as
	insert into Inscription(id_student, id_course, id_instructor)
	values(@studentId,@courseId,@instructorId)

go

create proc ModifyCourseDescription
@newDescription varchar(200),
@courseId int
as
	UPDATE Course
	SET description = @newDescription
	WHERE id = @courseId;

go

create proc DeleteCourse
@courseId int
as 
	DELETE FROM Course
	WHERE id = @courseId;

go

create proc ModifyFinalGrade
@finalGrade decimal(4,2),
@studentId int
as
	UPDATE Student
	SET final_grade = @finalGrade
	WHERE id = @studentId;





