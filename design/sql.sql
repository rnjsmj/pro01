create database pro1;
use pro1;

create table traffic(tno int primary key auto_increment,
	ttype varchar(20) not null,
    no varchar(10) not null,
    route varchar(100),
    comm varchar(1000));
    
drop table traffic;
desc traffic;

    
create table place(pcode int primary key auto_increment,
	pname varchar(100) not null,
    ptype varchar(3) not null,
    paddr varchar(200) not null,
    ptel varchar(20),
    pgps varchar(50),
    pcomm varchar(2000));

alter table place add pfile varchar(100);
alter table place modify column ptype varchar(6) not null;

desc place;
    
create table notice(no int primary key auto_increment,
	title varchar(100) not null,
    content varchar(5000) not null,
    resdate datetime default current_timestamp,
    visited int default 0);

insert into notice values(default, "공지 제목 1", "공지 내용1", current_timestamp(), default);
insert into notice values(default, "공지 제목 2", "공지 내용2", current_timestamp(), default);
insert into notice values(default, "공지 제목 3", "공지 내용3", current_timestamp(), default);
insert into notice values(default, "공지 제목 4", "공지 내용4", current_timestamp(), default);
insert into notice values(default, "공지 제목 5", "공지 내용5", current_timestamp(), default);
select * from notice;

    
 create table member (userid varchar(20) primary key,
	password varchar(20) not null,
    name varchar(20) not null,
    tel varchar(20),
    email varchar(100),
    regdate datetime default current_timestamp);

alter table member rename column birth to name;
alter table member modify name varchar(20) not null;
alter table member rename column userid to id;
drop table member;
desc member;
    
create table qna(no int primary key auto_increment,
	plevel varchar(2) not null,
    parno int,
    title varchar(100) not null,
    content varchar(3000),
    resdate datetime default current_timestamp,
    visited int default 0,
    aid varchar(20));

drop table qna;
    
create table data(no int primary key auto_increment,
	title varchar(100) not null,
    content varchar(5000) not null,
    datafile varchar(100),
    resdate datetime default current_timestamp,
    visited int default 0);

alter table qna add constraint qna_member_FK foreign key (aid)
	references member(userid);
    
desc traffic;
desc place;
desc data;
desc notice;
desc qna;
desc member;
    