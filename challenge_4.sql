select count(a1.address), c1.first_name from address a1
 left join customer c1
 on a1.address_id = c1.address_id
where c1.first_name  is null
group by c1.first_name