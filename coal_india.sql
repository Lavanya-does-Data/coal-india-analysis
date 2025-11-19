CREATE TABLE coal_india (
    date date,
    symbol text,
    pre_close numeric,
    open numeric,
    high numeric,
    low numeric,
    close numeric,
    volume numeric,
    turnover_lacs numeric,
    no_of_trades numeric,
    deliv_volume numeric,
    deliv_percent numeric
);

select * from coal_india limit 50;

select count(*) from coal_india;

select min(date) as start_date, max(date) as end_date
from coal_india;

select date, deliv_percent
from coal_india
order by date;

select *
from coal_india
order by deliv_percent desc limit 3;

select *
from coal_india
order by deliv_percent asc limit 3;

select extract(year from date) as year,
round(avg(deliv_percent), 2) as avg_delivery_percent
from coal_india
group by year
order by year;

select extract(year from date) as year,
round(avg(close), 2) as avg_close
from coal_india
group by year
order by year;

select date, volume, close
from coal_india
order by volume desc limit 10;

select date, high, low, (high-low) as intraday_range
from coal_india
order by intraday_range desc limit 10;

select date, close, avg(close) over ( order by date rows between 19 preceding and current row) as moving_avg
from coal_india
order by date;

select date, volume, deliv_volume, round(deliv_volume*100.0/volume, 2) as calc_delivery_percent
from coal_india
order by date;

select extract(year from date) as year,
count(*) as total_days,
round(avg(close), 2) as avg_close,
max(high) as year_high,
min(low) as year_low,
sum(volume) as total_volume,
round(avg(deliv_percent), 2) as avg_delivery
from coal_india
group by year
order by year;

select to_char(date, 'yyyy-mm') as month,
round(avg(close), 2) as avg_close,
sum(volume) as total_volume,
round(avg(deliv_percent), 2) as avg_delivery
from coal_india
group by month
order by month;







