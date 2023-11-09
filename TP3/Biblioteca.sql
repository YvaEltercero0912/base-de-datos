create table Alumno(
     legalo int primary key,
	 nombre varchar (50),
	 apellido varchar (50),
	 email varchar (100)

):

insert into Alumno (legalo, nombre, apellido, email)
values (1, 'Alejandro', 'Diaz', 'alejandrodiaz94213@gmail.com'),
       (2, 'Lionel','Messi', 'messilionel@gmail.com');
	   
select * from alumno	

create table Editorial (
        codigo int primary key,
	    nombre varchar(100)
	
);
insert into Editorial values(3312, 'Editorial A'),
                            (3321, 'Editorial B'),
							(3313, 'Editorial C');
select * from Editorial		

Create table Libro (
  ISBN varchar (13) primary key,
  titulo varchar(100),
  Editorial int,
  foreign key (Editorial) references Editorial(codigo)
);	

insert into Libro (ISBN, titulo, Editorial)
values ('1234558847499', 'libro 1', 3312),
	    ('123455844949', 'libro 2', 3321),
		('123455884333', 'libro 3', 3313);

select * from Libro


Create table Lectura (
    ID_Lectura int primary Key,
	legalo_alumno int,
	ISBN_Libro varchar (13),
	foreign key (legalo_alumno) references alumno (legalo),
	foreign key (ISBN_libro) references Libro (ISBN)

);

insert into Lectura ( ID_Lectura, legalo_alumno, ISBN_libro)
            values (1, 1, '1234558847499'),
			       (2, 2, '123455844949');