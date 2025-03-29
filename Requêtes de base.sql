USE rapport_de_vents;  
/*
1. Clients non américains
: Fournissez une requête affichant les
Clients (leurs noms complets, ID client et pays) qui ne sont pas aux
États-Unis.
*/  
SELECT CustomerId,FirstName, LastName, Country
FROM customer
where  Country !='USA';  

/*
2.Clients brésiliens :
Fournissez une requête affichant uniquement
les Clients provenant du Brésil
*/
SELECT * 
FROM customer
where Country='Brazil';  

/*
Factures des clients brésiliens
: Fournissez une requête affichant
les factures des clients qui sont du Brésil.

Le tableau résultant doit inclure le nom complet du client, l'ID de la
facture, la date de la facture et le pays de facturation
*/
select  I.InvoiceId,c.FirstName, c.LastName,  I.InvoiceDate,  I.BillingCountry 
from  invoice  I  
join customer  c  on I.CustomerId=c.CustomerId
where  c.Country='Brazil';  

/*
Agents de vente :
Fournissez une requête affichant uniquement
les employés qui sont des Agents de Vente
*/
select * 
from  employee 
where  Title='Sales Support Agent';  


