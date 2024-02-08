--query to see list of customers who has got any book issued
select ct.custID,custname,issueid from customer ct 
full outer join issueRegister re
on ct.custID=re.custID


--query to display customer details with the booknames they got issued
select ct.custID,custname,issue_date,exp_return_date,actual_return_date,issueid,fine_amt, bookname
from customer ct 
join issueRegister re
on ct.custID=re.custID
join book bk on re.bookid =bk.bookid

--query to display details of publishers who have not published any book
select * from publisher pb
left join book bk
on pb.pubid=bk.bookid

--query to display full details of all the books including publishing house and author
select bk.bookid,bookname,pubname,price,authorname,pub_year,no_of_pages
from book bk
join author au on au.authorid=bk.authorid
join publisher pb on pb.pubid=bk.pubid

