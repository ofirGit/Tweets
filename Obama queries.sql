use obama;

# Popular Hour
select count(id) as  'num', Hour
from obamatweets
group by Hour
order by count(id) desc;

# Popular Date
select count(id) as  'num', Date
from obamatweets
group by Date
order by count(id) desc;

# Tweet times per day
select  count(id), Hour,Date
from obamatweets
group by  Hour,Date
order by count(id) desc;

# Likes per tweet
select Likes, Hour, Date,id
from obamatweets
order by (Likes) desc;

# Retweet per tweet
select Retweets, Hour, Date,id
from obamatweets
order by (Retweets) desc;

# Likes & Retweets by #id
select id,Date,Hour, Retweets, Likes
from obamatweets
order by Likes desc ,Retweets desc;

# Popular Hour 2016-2020
select count(id) as 'num', Hour,Date,Likes
from obamatweets
group by Hour
having substr(Hour,1,2) =17
order by count(id) desc;

# Popular Hour 2012-2016
select count(id) as 'num', Hour,Date,Likes
from obamatweets
group by Hour
having substr(Hour,1,2) =17
order by count(id) desc;