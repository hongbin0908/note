create database tongdao CHARACTER SET 'utf8';
use tongdao;

create table comments (
	id int(32) not null primary key auto_increment,
	userfrom char(20) not null,
	userto   char(20) not null,
	missionid int(4)  not null,
	content text not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table zan (
	id int(32) not null primary key auto_increment,
	userfrom char(20) not null,
	userto   char(20) not null,
	missionid int(4)  not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table userinfo (
	username char(20) not null primary key,
	registtime char(20) not null,
	password char(20) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	
create table missiondie (
	id int(4) not null primary key auto_increment,
	username char(20) not null,
	starttime char(20) not null,
	endtime char(20) not null,
	cash int(4) not null,
	motto text not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table dietdaily (
	id int(4) not null primary key auto_increment,
	username char(20) not null,
	updatetime int(32) not null,
	image char(225) not null,
	description text not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;