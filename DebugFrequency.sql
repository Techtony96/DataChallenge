select userId, YEAR(eventTime) as year, DAYOFYEAR(eventTime) as day, Count(*) as frequency 
from releventevents
group by userId, year, day
order by userId, year, day
