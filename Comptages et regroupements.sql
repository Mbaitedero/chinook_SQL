use  rapport_de_vents;  

/*   Nombre de factures par pays : Fournissez une requête affichant le nombre de factures par pays. Astuce : utilisez GROUP BY*/ 
select  BillingCountry as Pays ,  
       count(invoiceId)  as  Nombre_de_Factures
from  Invoice  
group by  pays  
order by  Nombre_de_Factures   desc;  

/*  Nombre de morceaux par playlist : Fournissez une requête affichant le nombre total de morceaux dans chaque playlist.
Le nom de la playlist doit être inclus dans le tableau résultant.*/ 

select p.Name as  Nom_Playlist,
      count(t.trackId) as Nombre_Morceaux
from playlist  p
join  playlisttrack  t  on  p.PlaylistId  =  t.PlaylistId
group by Nom_Playlist  
order by  Nombre_Morceaux desc ;  


/*  Liste des morceaux : Fournissez une requête affichant tous les morceaux (Tracks), mais sans afficher les IDs.
Le tableau résultant doit inclure le nom de l'album, le type de média et le genre */
select  t.Name as  Nom_morceau,
        a.Title as  Nom_album ,
        m.Name  as  Nom_type_Média,
        g.Name  as  Nom_genre
from  track  t 
join  Album  a on  t.AlbumId  =  t.AlbumId
join  mediatype  m  on  t.MediaTypeId=m.MediaTypeId
join  genre  g  on  t.GenreId=g.GenreId;  








