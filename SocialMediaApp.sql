create database if not exists SocialMediaApp; 

 use SocialMediaApp; 
 
 drop table if exists posts; 
 
 drop table if exists comments; 
 
 drop table if exists users;  
 
 Create table users (
	userID int(11) not null auto_increment,  
    username varchar(20) not null, 
    email varchar(20) not null, 
    passwords varchar(15) not null, 
    city varchar(20), 
    state char(2), 
    zip char(5), 
    primary key (userID)

 ); 
 
 create table posts (
	postID int(11) not null auto_increment,  
    userId int(11) not null,
    time date not null, 
    content varchar(1000), 
    primary key (postID),
    foreign key (userID) references users(userID)
 ); 
 
 create table comments (
	userID int(11) not null, 
    postID int(11) not null, 
    time date not null, 
    content varchar(1000), 
    primary key (userId, postID),
    foreign key (userID) references users(userID), 
    foreign key (postID) references posts(postID)
 
 );
 