
create database movie;
use movie;
create table movies(title varchar(20) not null primary key,director varchar(20) not null,my_year int,rating float4);
insert into movies(title,director,my_year,rating)values('Fargo','Coen',1996,8.2);
insert into movies(title,director,my_year,rating)values('Raising_Arizona','Coen',1987,7.6);
insert into movies(title,director,my_year,rating)values('Spiderman','Raimi',2002,7.4);
insert into movies(title,director,my_year,rating)values('Wonderboys','Hanson',2000,7.6);
select * from movies;

use movie;
create table actors(actor varchar(20) not null primary key,ayear int);
insert into actors(actor,ayear)values('Cage',1964);
insert into actors(actor,ayear)values('Hanks',1956);
insert into actors(actor,ayear)values('Maguire',1975);
insert into actors(actor,ayear)values('McDormand',1957);
select * from actors;

use movie;
create table acts(actor varchar(20) not null,title varchar(20) not null,foreign key(title) references movies(title),foreign key(actor) references actors(actor));
insert into acts(actor,title)values('Cage','Raising_Arizona');
insert into acts(actor,title)values('Maguire','Spiderman');
insert into acts(actor,title)values('Maguire','Wonderboys');
insert into acts(actor,title)values('McDormand','Fargo');
insert into acts(actor,title)values('McDormand','Raising_Arizona');
insert into acts(actor,title)values('McDormand','Wonderboys');
select * from acts;

use movie;
create table directors(director varchar(20) not null primary key,dyear int);
insert into directors(director,dyear)values('Coen',1954);
insert into directors(director,dyear)values('Hanson',1945);
insert into directors(director,dyear)values('Raim',1959);
select * from directors;

select title from movies where my_year > 1997;

select title from movies where director = 'Hanson'and my_year > 1997;

select title,rating from movies;

select movies.director,acts.actor from movies inner join acts on movies.title = acts.title;
select movies.title from movies inner join acts on movies.title = acts.title where director = 'Coen' and actor ='McDormand';













