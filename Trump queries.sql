use trump;

# Popular Hour
select count(id) as 'num', hour
from trumptweets
group by hour
order by count(id) desc;

# Popular Date
select count(id) as  'num', date
from trumptweets
group by date
order by count(id) desc;

# Tweet times per day
select  count(id), hour,date
from trumptweets
group by  hour,date
order by count(id) desc;

# Likes per tweet
select favorites, hour, date,id
from trumptweets
order by (favorites) desc;

# Retweet per tweet
select retweets, hour, date,id
from trumptweets
order by (retweets) desc;

# Likes & Retweets by #id
select id,date,hour, retweets, favorites
from trumptweets
order by  favorites desc,retweets desc;

# Popular Hour 2016-2020
select count(id) as 'num', hour,date
from trumptweets
group by hour
having substr(hour,1,2) =21 or  substr(hour,1,2) =22
order by count(id) desc;
