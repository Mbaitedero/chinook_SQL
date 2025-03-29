USE rapport_de_vents; 
/* 5. Pays uniques dans les factures
: Fournissez une requête affichant
une liste unique des pays de facturation présents dans la table Invoice */

select  DISTINCT BillingCountry as  Pays_Unique
from Invoice;  

/*  6. Factures par agent de vente :
Fournissez une requête affichant les
factures associées à chaque agent de vente.
Le tableau résultant doit inclure le nom complet de l'agent de
vente.*/
select   
       concat(e.LastName, ' ',e.FirstName) as  Nom_Agent_de_Ventes,
       count(f.InvoiceId) as Nombre_de_Ventes, 
       SUM(f.Total) as Total_ventes,
       max(f.InvoiceDate) as Dernière_Facture
from Invoice f
join  customer c on c.CustomerID=f.CustomerID
join employee e on  c.SupportRepId=e.EmployeeId
group  by  e.EmployeeId,  Nom_Agent_de_Ventes;

/*
7. Détails des factures
: Fournissez une requête affichant le total de
chaque facture, le nom du client, le pays et le nom de l'agent de vente.
*/
select  f.Total ,  
       concat(c.FirstName, ' ',c.LastName) as Nom_client,
       e.Country,  
       concat(e.LastName, ' ',e.FirstName) as  Nom_Agent_de_Ventes,
       f.InvoiceDate
from Invoice f
join  customer c on c.CustomerID=f.CustomerID
join employee e on  c.SupportRepId=e.EmployeeId
order by Nom_client, InvoiceDate desc;  








