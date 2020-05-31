select * from players;

--Basic Information Table:

select p.player, p.height, p.weight, p.college, p.born,
s.pos,s.tm 
from players as p
inner join season_stats as s on
p.id = s.id;

--Percent Stats:
select * from season_stats;

select p.college, s.year, s.pos, s.ts_percent, s.fg_percent, s.two_point_percent, s.ft_percent
from season_stats as s
inner join players as p on
s.id = p.id;