select geoid, sum(amount) from sales group by geoid order by geoid;

select geoid, avg(amount) from sales group by geoid order by geoid;

select geoid, sum(amount), sum(boxes) from sales group by geoid order by geoid;

select geoid, sum(amount), avg(amount), sum(boxes) from sales group by geoid order by geoid;

select g. geo, g.geoid, sum(amount), avg(amount), sum(boxes) from sales s
join geo g on s.geoid = g.geoid group by g.geoid order by g.geoid;

select pr.category, p.team, sum(amount), sum(boxes)
from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.category, p.team
order by pr.category, p.team;

select pr.category, p.team, sum(amount), sum(boxes)
from sales s join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <> ''
group by pr.category, p.team
order by pr.category, p.team;

select pr.Product, sum(s.amount) as 'Total Amount'
from sales s join products pr on pr.pid = s.pid
group by pr.product
order by `Total Amount` desc;

select pr.Product, sum(s.amount) as 'Total Amount'
from sales s join products pr on pr.pid = s.pid
group by pr.product
order by `Total Amount` desc
limit 10;


