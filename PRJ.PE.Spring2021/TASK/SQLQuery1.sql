create table Event (
id int identity(1, 1) primary key,
content varchar(150) not null,
date date not null,
isEnabled bit not null,
created_by varchar(150) not null references Account(accountid),
)

create table Account (
accountid varchar(150) primary key,
password varchar(150)
)

create table Record (
id int identity(1, 1) primary key,
content varchar(150) not null,
eid int references Event(id) not null
)

select * from Event
select * from Account
select * from Record
/*date : year month day */

insert into Account values('mra', '123')
insert into Account values('mrb', '123')

insert into Event values( 'Event number 1', '1/1/2021', 1, 'mra')
insert into Event values( 'Event number 2', '1/2/2021', 0, 'mra')
insert into Event values( 'Event number 3', '1/3/2021', 0, 'mra')
insert into Event values( 'Event number 4', '2/15/2021', 1, 'mrb')
insert into Event values( 'Event number 5', '3/14/2021', 0, 'mrb')

insert into Record values('Record 1 on Event 1', 6)
insert into Record values('Record 2 on Event 1', 6)
insert into Record values('Record 3 on Event 1', 6)
insert into Record values('Record 1 on Event 2', 7)
insert into Record values('Record 2 on Event 2', 7)

select * from Event where created_by = 'mra'

select * from Record where eid = 6
