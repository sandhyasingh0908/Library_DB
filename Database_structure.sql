--Table Author
create table Author
(AuthorID numeric(6) primary key,
AuthorName varchar(25) not null,
address varchar(25) not null,
phone char(10) not null,
royaltyAmt decimal(10,2))

--Table Publisher
create table Publisher
(PubID numeric(6) primary key,
PubName varchar(25) not null,
address varchar(25) not null,
phone char(10) not null)



-- Table Customer
create table Customer
(CustID numeric(6) primary key,
CustName varchar(25) not null,
address varchar(25) not null,
phone char(10) not null,
Payment_mode char(10) not null)


--Table Book
create table book
(bookID numeric(6) primary key,
bookName varchar(25) not null unique,
AuthorID numeric(6) references Author(AuthorId),
PubID numeric(6) references Publisher(PubID),
price decimal(12,2) not null,
pub_year date,
No_of_pages numeric(4),
copies numeric(5))

-- Table issueRegister
create table issueRegister
(issueID numeric(6) primary key,
Issue_date date default current_date,
Exp_return_date date not null default(date(now())+7),
Actual_return_date date,
BookID numeric(6) references book (bookID),
custID numeric(6) references customer(custID),
fine_amt decimal(10,2) default 0,
In_Stock boolean)



