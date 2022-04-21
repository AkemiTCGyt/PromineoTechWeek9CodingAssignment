create database if not exists users;

use users;

drop table if exists users;
drop table if exists posts;
drop table if exists comments;

CREATE TABLE users (
       user_id int(11) not null auto_increment,
       username varchar(20) not null,  
       email varchar(20) not null,
       password varchar(20) not null,
       first_name varchar(20) not null,
       last_name varchar(20) not null,
       primary key (user_id)         
);

CREATE TABLE posts (
       post_id int(11) not null auto_increment,
       user_id int(11) not null,
       post_body varchar(150) not null,
       time_of_post datetime default current_timestamp,
       primary key (post_id),
       foreign key (user_id) references users(user_id)
);

CREATE TABLE comments (
	comment_id int(11) not null auto_increment,
        user_id int(11) not null,
        post_id int(11) not null,
        comment_body varchar(150) not null,
        time_of_comment datetime default current_timestamp,
        primary key (comment_id),
        foreign key (user_id) references users(user_id),
        foreign key (post_id) references posts(post_id)
);