use  rapport_de_vents  ;  
/*16. Factures et articles : Fournissez une requête affichant toutes les factures, avec le nombre d'articles par facture */
select  f.InvoiceId as  Numéro_facture , 
        count(i.InvoiceLineId) as  Nombre_Article
from   invoice  f 
join    invoiceline  i  on  f.InvoiceId  =i.InvoiceId  
group by  Numéro_facture; 
 
 
/* Ventes par agent de vente : Fournissez une requête affichant les ventes totales réalisées par chaque agent de vente */ 
 select  concat(e.LastName,' ', e.FirstName) as Nom_Client,
         count(f.InvoiceId) as Nombre_de_Ventes,
         ifnull(sum(f.Total),  0) as Vente_Total
from  invoice f 
join  customer  c on  c.CustomerId  =  f.CustomerId
join  employee e on  c.SupportRepId=e.EmployeeId
group by e.EmployeeId, Nom_Client 
order  by  vente_Total;  

/* Meilleur agent de 2009 : Quel agent de vente a réalisé le plus de vente en  2009*/
select  concat(e.LastName,' ', e.FirstName) as Nom_Agent,
         count(f.InvoiceId) as Nombre_de_Ventes
from  invoice f 
join  customer  c on  c.CustomerId  =  f.CustomerId
join  employee e on  c.SupportRepId=e.EmployeeId
where year(f.InvoiceDate)= 2009
group by e.EmployeeId, Nom_Agent
order  by  Nombre_de_Ventes
limit 1;  

/* Meilleur agent de 2010: Quel agent de vente a réalisé le plus de ventes en 2010 ? */
select  concat(e.LastName,' ', e.FirstName) as Nom_Agent,
         count(f.InvoiceId) as Nombre_de_Ventes
from  invoice f 
join  customer  c on  c.CustomerId  =  f.CustomerId
join  employee e on  c.SupportRepId=e.EmployeeId
where year(f.InvoiceDate)= 2010
group by e.EmployeeId, Nom_Agent
order  by  Nombre_de_Ventes
limit 1;

/* Meilleur agent global : Quel agent de vente a réalisé le plus de ventes en tout */

select  concat(e.LastName,' ', e.FirstName) as Nom_Agent,
         count(f.InvoiceId) as Nombre_de_Ventes
from  invoice f 
join  customer  c on  c.CustomerId  =  f.CustomerId
join  employee e on  c.SupportRepId=e.EmployeeId
group by e.EmployeeId, Nom_Agent
order  by  Nombre_de_Ventes
limit 1;






