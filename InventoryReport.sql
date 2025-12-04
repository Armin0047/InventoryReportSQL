select k.code,k.FaName,d.Dastdaroie,g.DrugGroup,dbo.Milady2Shams(routt.insert_date),dbo.Milady2Shams(rinn.insert_date),abs(DATEDIFF(MONTH,rinn.insert_date,routt.insert_date)),m.Mojodi from Kala k
left join (select kalacode,max(id) as id from fac_radif
Where state=1 
group by KalaCode) inn on inn.kalacode=k.code
left join (
select kalacode,max(id) as id from fac_radif
Where state=6
group by KalaCode) outt on outt.KalaCode=k.code
inner join mojodi m on m.code=k.code and m.anbcode=2
left join Fac_Radif rinn on rinn.id=inn.id
left join Fac_Radif routt on routt.id=outt.id
inner join Dastedaroie D on d.idDastdaroie=isnull(k.DasteDaroo,0)
inner join DrugGroup G on G.CodeGroup=isnull(k.CodeGroup,0)
where m.Mojodi>0
and isnull(inn.id,0)>isnull(outt.id,0)
