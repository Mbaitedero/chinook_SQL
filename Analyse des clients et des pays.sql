use  rapport_de_vents  ;  

/*Clients par agent de vente: Fournissez une requête affichant le nombre de clients attribués à chaque agent de vente */
select concat(e.LastName,' ', e.FirstName) as Nom_Agent,
         count(c.SupportRepId) as Nombre_de_Clients 
from  employee e 
join  customer c on  c.SupportRepId=e.EmployeeId
group by Nom_Agent; 

/*  Ventes totales par pays : Fournissez une requête affichant les ventes totales par pays. Quel pays a dépensé le plus*/
select BillingCountry as  pays  ,
  count(InvoiceId) as  nombre_ventes
from  invoice 
group by pays 
order by nombre_ventes  desc;  

