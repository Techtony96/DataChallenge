select eventType, count(*) as freq 
from Events 
where eventType LIKE Debug% 
group by eventType
order by freq desc;
