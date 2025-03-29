Projet 5 : Automatiser les rapports de ventes avec SQL
Problématique métierUne entreprise souhaite produire un rapport détaillant les ventestotales par produit pour le dernier trimestre.

Objectif

Utiliser SQL pour extraire, filtrer et agréger les données nécessaires.Compétences à acquérir
Requêtes SQL de base : SELECT, WHERE, GROUP BY, HAVING.
Calculs d’agrégats : SOMME, MOYENNE pour des KPI.
Automatisation des rapports avec des vues SQL.
Base de donnéesChinook DatabaseExercices SQL avec la base de données Chinook

Introduction

Consolidons vos compétences en requêtes SQL avec un ensemble
d'exercices qui mettront vos connaissances à l'épreuve. 
Gardez la basede données Chinook et l'outil DB Browser for SQLite à portée demain.
Pour chaque exercice, fournissez la requête SQL appropriée etconservez vos réponses dans un fichier nommé chinook-queries.sql.

Exigence

sUtilisez la base de données Chinook.
Travaillez avec DB Browser for SQLite ou tout autreenvironnement de votre choix.

Exercices SQL

Requêtes de base

1 . Clients non américains
: Fournissez une requête affichant les
Clients (leurs noms complets, ID client et pays) qui ne sont pas aux
États-Unis.

2.Clients brésiliens :
Fournissez une requête affichant uniquement
les Clients provenant du Brésil.

4. Factures des clients brésiliens
: Fournissez une requête affichant
les factures des clients qui sont du Brésil.
Le tableau résultant doit inclure le nom complet du client, l'ID de la
facture, la date de la facture et le pays de facturation.

6. Agents de vente :
Fournissez une requête affichant uniquement
les employés qui sont des Agents de Vente
Agrégations et relations

8. Pays uniques dans les factures
: Fournissez une requête affichant
une liste unique des pays de facturation présents dans la table Invoice.

10. Factures par agent de vente :
Fournissez une requête affichant les
factures associées à chaque agent de vente.
Le tableau résultant doit inclure le nom complet de l'agent de
vente.

12. Détails des factures
: Fournissez une requête affichant le total de
chaque facture, le nom du client, le pays et le nom de l'agent de vente.

Analyse par année et lignes de facture

14. Ventes par année :
Combien de factures y a-t-il eu en 2009 et
2011 ? Quels sont les montants totaux des ventes pour chacune de
ces années ?

16. Articles pour une facture donnée :
Fournissez une requête
comptant le nombre d'articles (line items) pour l'ID de facture 37.

18. Articles par facture :
Fournissez une requête comptant le nombre
d'articles (line items) pour chaque facture.
Astuce : utilisez GROUP BY.

Détails des morceaux

20. Nom des morceaux
: Fournissez une requête incluant le nom du
morceau pour chaque ligne de facture.

22. Morceaux et artistes :
Fournissez une requête incluant le nom du
morceau acheté ET le nom de l'artiste pour chaque ligne de facture.

Comptages et regroupements

24. Nombre de factures par pays :
Fournissez une requête affichant
le nombre de factures par pays.
Astuce : utilisez GROUP BY.

26. Nombre de morceaux par playlist :
Fournissez une requête
affichant le nombre total de morceaux dans chaque playlist.
Le nom de la playlist doit être inclus dans le tableau résultant.

28. Liste des morceaux :
Fournissez une requête affichant tous les
morceaux (Tracks), mais sans afficher les IDs.
Le tableau résultant doit inclure le nom de l'album, le type de média
et le genre.

Analyse des ventes

30. Factures et articles :
Fournissez une requête affichant toutes les
factures, avec le nombre d'articles par facture.

32. Ventes par agent de vente
: Fournissez une requête affichant les
ventes totales réalisées par chaque agent de vente.

34. Meilleur agent de 2009
: Quel agent de vente a réalisé le plus de
ventes en 2009 ?

36. Meilleur agent de 2010
: Quel agent de vente a réalisé le plus de
ventes en 2010 ?

38. Meilleur agent global
: Quel agent de vente a réalisé le plus de
ventes en tout ?

Analyse des clients et des pays

40. Clients par agent de vente
: Fournissez une requête affichant le
nombre de clients attribués à chaque agent de vente.

42. Ventes totales par pays
: Fournissez une requête affichant les
ventes totales par pays.
Quel pays a dépensé le plus ?

Analyse des morceaux et des artistes

44. Morceau le plus acheté en 2013
: Fournissez une requête
affichant le morceau le plus acheté en 2013.

46. Top 5 des morceaux les plus achetés
: Fournissez une requête
affichant les 5 morceaux les plus achetés en tout.

48. Top 3 des artistes les plus vendus
: Fournissez une requête
affichant les 3 artistes les plus vendus.

50. Type de média le plus acheté
: Fournissez une requête affichant
le type de média le plus acheté.
