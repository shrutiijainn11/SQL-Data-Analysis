select s.saledate, s.amount, p.salesperson, p.spid from sales s join people p on p.spid = s.spid;

select s.saledate, s.amount, s.spid, pr.product from sales s left join products pr on pr.pid = s.pid;

select s.saledate, s.amount, p.salesperson, p.team, pr.Product from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid;
 
select s.saledate, s.amount, p.salesperson, p.team, pr.Product from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid where s.amount<500;

select s.saledate, s.amount, p.salesperson, p.team, pr.Product from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid where s.amount<500 and p.team = 'Delish';

select s.saledate, s.amount, p.salesperson, p.team, pr.Product from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid where s.amount<500 and p.team = '';

select s.saledate, s.amount, p.salesperson, p.team, pr.Product from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid 
join geo g on g.geoid = s.geoid where s.amount<500 and p.team = 'Delish' and 
g.geo in ('New Zealand', 'India') order by SaleDate;