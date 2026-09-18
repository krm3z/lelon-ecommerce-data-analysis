# Analyse des données e-commerce LELON

## Présentation du projet

Ce projet simule l'environnement de données d'un e-commerce pendant sa période de premières ventes.

Le projet est construit autour de la question métier suivante :

**Quels facteurs influencent le plus les premières ventes d’un e-commerce ?**

LELON, une marque e-commerce de sacs utilisée comme environnement simulé, sert de cas d'étude pour ce projet.

L'objectif est de construire un workflow complet d'analyse de données avec :

* PostgreSQL
* SQL
* Excel
* Power BI

Le projet commence par la création d'une base de données relationnelle et de données e-commerce synthétiques. Les prochaines étapes seront consacrées à l'analyse SQL, à l'exploration des données dans Excel et à la création d'un dashboard Power BI.

---

## Conception de la base de données

Une base de données relationnelle PostgreSQL a été créée afin de représenter les principales activités d'un e-commerce.

La base contient actuellement 15 tables :

* `customers`
* `products`
* `colors`
* `product_variants`
* `seasons`
* `product_seasons`
* `marketing_campaigns`
* `orders`
* `order_items`
* `shipping`
* `payments`
* `website_traffic`
* `promotions`
* `product_promotions`
* `admin_users`

La base utilise des clés primaires et des clés étrangères afin de relier les différentes entités comme les clients, commandes, produits, variantes, campagnes marketing et promotions.
