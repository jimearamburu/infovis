select ST_Relate(a.geom, b.geom), count(*)
from cabaxrdatos a, cabaxrdatos b
group by ST_Relate(a.geom, b.geom)
order by count(*) DESC

select barrios.barrio, count(suaci.id)
from suaci, barrios
where st_contains (barrios.geom,suaci.geom)
group by barrios.barrio
order by count(suaci.id)DESC 

