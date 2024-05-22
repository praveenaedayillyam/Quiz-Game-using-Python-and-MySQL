--  drop database quiz_project;
create database quiz_project;
use quiz_project;
create table quiz_names(id int primary key,quiz_name varchar(100) unique not null);


create table quiz_Questions(id int,
                          q_no int not null,
                          question varchar(500) not null,
                          primary Key (id, q_no),
                          FOREIGN KEY (id) REFERENCES quiz_names(id));
                         
                          
CREATE TABLE quiz_options (
    id INT,
    q_no INT,
    option_no INT NOT NULL,
    options_ VARCHAR(100) NOT NULL,
    PRIMARY KEY (id, q_no, option_no)
);

      
create table quiz_answers(id int,
                          q_no int,
                          option_no int,
                          PRIMARY KEY (id, q_no));
  

select * from quiz_names;
select * from quiz_questions;
select * from quiz_options;
select * from quiz_answers;                      
                          
                          
      
                          