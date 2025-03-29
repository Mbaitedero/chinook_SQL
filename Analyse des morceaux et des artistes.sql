use rapport_de_vents  ;  
/*Morceau le plus acheté en 2013 : Fournissez une requête affichant le morceau le plus acheté en 2021  */ 
select  t.Name  as  Morceau ,
        count(i.InvoiceLineId)  as  Nombre_ventes  
from  track  t  
join  InvoiceLine  i  on  t.TrackId=  i.TrackId
join  Invoice  e  on  i.InvoiceId = e.InvoiceId
where year(e.InvoiceDate)=2021
group by Morceau
order by Nombre_ventes desc 
limit 1;  

/*Top 5 des morceaux les plus achetés : Fournissez une requête affichant les 5 morceaux les plus achetés en tout */

select  t.Name  as  Morceau ,
        count(i.InvoiceLineId)  as  Nombre_ventes  
from  track  t  
join  InvoiceLine  i  on  t.TrackId=  i.TrackId
group by Morceau
order by Nombre_ventes desc 
limit 5;  



/*Top 3 des artistes les plus vendus : Fournissez une requête affichant les 3 artistes les plus vendus */
select a.Name  as  Nom_artiste,
       count(i.InvoiceLineId)  as  Nombre_ventes
from  artist  a 
join Album  b  on  a.ArtistId=b.ArtistId
join  track  t  on  b.AlbumId=t.AlbumId
join  InvoiceLine  i on  t.trackId  =  i.trackId  
group by Nom_artiste
order by Nombre_ventes desc
limit  3;  


/* Type de média le plus acheté : Fournissez une requête affichant le type de média le plus acheté. */
select a.Name  as  Type_Média,
       count(i.InvoiceLineId)  as  Nombre_ventes
from  mediatype  a 
join  track  t  on  a.MediaTypeId= t.MediaTypeId
join  InvoiceLine  i on  t.trackId  =  i.trackId  
group by Type_Média
order by Nombre_ventes desc
limit  1; 









