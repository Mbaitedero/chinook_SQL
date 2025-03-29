USE rapport_de_vents;  
/* 8. Ventes par année :
Combien de factures y a-t-il eu en 2009 et
2011 ? Quels sont les montants totaux des ventes pour chacune de
ces années ? */

select 
    year(InvoiceDate) as Année,
    count(InvoiceId) as Nombre_factures,
	sum(Total) as Montant_total
from  invoice
where year(InvoiceDate) in (2009 ,2011)
group  by  Année
order  by Montant_total desc;  

/* 9. Articles pour une facture donnée :
Fournissez une requête
comptant le nombre d'articles (line items) pour l'ID de facture 37.*/

select  count(e.InvoiceLineId) as  Nombre_Articles
from  invoice f
join  invoiceline  e  on  f.InvoiceId= e.InvoiceId
where e.InvoiceId=37;  

/* Articles par facture :
Fournissez une requête comptant le nombre
d'articles (line items) pour chaque facture.
Astuce : utilisez GROUP BY. */

select f.invoiceId, 
      count(e.InvoiceLineId) as  Nombre_Articles
from  invoice f
join  invoiceline  e  on  f.InvoiceId= e.InvoiceId
group  by  f.InvoiceId;  



 