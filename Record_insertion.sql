alter table Author add constraint ph_check check(length(phone)=10)

alter table Publisher add constraint ph_check check(length(phone)=10)

alter table Customer add constraint ph_check check(length(phone)=10)

alter table Customer add constraint pay_check check(payment_mode in ('Cash','Credit','Debit'))

alter table book add constraint book_year check(pub_year<=now())

--inserting records in Author Table

insert into Author values(1,'Ammi','7509 Pearsall Crescent','6789045600',0)
insert into Author values(2,'Rosy','1169 Darcle Blvd','6781567349',0)
insert into Author values(3,'Kieth','4569 Dellopart Drive','6788730452',0)
insert into Author values(4,'John','4098 Reindeer Drive','6758674821',0)
insert into Author values(5,'Daniel','9860 Crossing Wood Blvd','6786234127',0)

select * from Author

--inserting records in Publisher Table
insert into Publisher values(1,'Golden Palm Book House','6780 Mississauga','6789046056')
insert into Publisher values(2,'First Class Publisher','9670 Mississauga','6782376150')
insert into Publisher values(3,'Top Choice Publisher','1157 Toronto','6759249015')
insert into Publisher values(4,'Sacred Hill Publisher','2640 Toronto','6754892378')
insert into Publisher values(5,'Shining Page Book House','1765 Mississauga','6781156746')

select * from Publisher

--inserting recordsin Customer Table
insert into Customer values(1,'Noah','1453 Catalpa Rd','6786164578','Cash')
insert into Customer values(2,'Benjamin','5743 Wrenwood Cres','6780988741','Credit')
insert into Customer values(3,'Emma','2781 Teeswater Rd','6787645903','Cash')
insert into Customer values(4,'Lucas','7845 Darla Drive','6785084329','Debit')
insert into Customer values(5,'Oliver','3669 Catalpa Rd','6787949286','Cash')

select * from Customer

--inserting records in Book Table
insert into Book values (1,'Gone with the winds',1,2,750.67,'2020-10-10',1120,100)
insert into Book values (2,'Speaking Tree',2,2,550.50,'2022-05-12',1020,90)
insert into Book values (3,'Power of Mind',3,1,600,'2022-06-20',545,190)
insert into Book values (4,'Recreating the world',4,5,460,'2022-09-15',650,70)
insert into Book values (5,'DIY Tricks',5,3,340,'2022-11-17',400,67)

select * from Book

--inserting records in Issue Register Table
insert into issueRegister (issueID,BookID,custID,In_Stock)
values (1,2,3,True)
insert into issueRegister (issueID,BookID,custID,In_Stock)
values (2,1,3,True)
insert into issueRegister (issueID,BookID,custID,In_Stock)
values (3,4,1,True)
insert into issueRegister (issueID,BookID,custID,In_Stock)
values (4,1,5,True)
insert into issueRegister (issueID,BookID,custID,In_Stock)
values (6,5,5,True)