-- select victim.name, victim.id as victim_id, zombie.type, zombie.id as zombie_id, attack.attack_date from 
-- select * from
-- victim, zombie, attack
-- where attack_date = '10 Jan 2016'
-- and victim.id = attack.victim_id
-- and zombie.id = attack.zombie_id;\q

select victim.name, victim.id as victim_id, zombie.type, zombie.id as zombie_id, attack.attack_date
from victim
inner join attack on 
victim.id = attack.victim_id
inner join zombie on
attack.zombie_id = zombie.id
where attack.attack_date = attack.date

select count(*)
from victim
inner join attack on 
victim.id = attack.victim_id
inner join zombie on
attack.zombie_id = zombie.id
where attack.attack_date = attack.datei