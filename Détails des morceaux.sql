USE rapport_de_vents; 

/* Nom des morceaux : Fournissez une requête incluant le nom du  morceau pour chaque ligne de facture */
select  t.Name  as Nom_des_morceaux
from  track t  
join  InvoiceLine  i on  t.TrackId=i.TrackId; 
 
 /* Morceaux et artistes : Fournissez une requête incluant le nom du morceau acheté ET le nom de l'artiste pour chaque ligne de facture*/
 select m.Name as Nom_morceaux,
       a.Name as  nom_artiste
from  Track m
join album t on  m.AlbumId=t.AlbumId
join  artist a on  t.ArtistId=a.ArtistId;  

/*  */







