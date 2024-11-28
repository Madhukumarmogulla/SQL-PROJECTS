select * from employee
order by levels desc limit 1;

select billing_country,count(*) as total_invoice from invoice
group by billing_country order by count(*) desc limit 1;


select total from invoice
order by total desc limit 3;


select  sum(total) as total_invoice, billing_city  from invoice
group  by billing_city order by total_invoice desc;

select concat(c.first_name,' ',c.last_name) as Name,sum(i.total) as total_invoice from customer c
left join invoice i
on c.customer_id = i.customer_id
group by Name
order by total_invoice desc limit 1


'''write a query to return the email, first name, last name &
Genre of all rock music listerns.Return your list ordered 
alphabetically by email with A'''

select distinct customer.email, 
customer.first_name, 
customer.last_name, 
genre.name as genre
from 
  customer 
join 
  invoice 
  on customer.customer_id = invoice.customer_id
join
  invoice_line 
  on invoice.invoice_id = invoice_line.invoice_id
join
   track 
   on invoice_line.track_id = track.track_id
join 
  genre 
  on track.genre_id = genre.genre_id
where  
   genre.name ='Rock'	
order by 
customer.email asc


 


select * from genre
select * from customer;


'''write a query  that returns 
the artist name anad total track count of the top 10  rock bands'''
select artist.artist_id,
count(track.*) as top, artist.name from
  track
join
 album
 on track.album_id = album.album_id
join 
 artist
 on album.artist_id = artist.artist_id 
join 
 genre
 on 
 genre.genre_id = track.genre_id
 where genre.name = 'Rock'
 group by artist.name
 order by top desc limit 10
 




select * from invoice_line
select * from track
select * from album
select * from  artist

