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

## Génération des données

Les données utilisées dans ce projet sont **synthétiques**.

Elles ont été créées spécifiquement pour ce projet portfolio et ne représentent pas de véritables clients ni de véritables ventes.

Le jeu de données synthétique contient notamment :

* Les produits
* Les variantes de produits
* Les couleurs
* Les saisons
* Les clients
* Les commandes
* Les articles commandés
* Les campagnes marketing
* Le trafic du site web
* Les promotions

Ces données simulent les premières activités d'un e-commerce et seront ensuite utilisées pour étudier les facteurs pouvant être associés aux performances des premières ventes.

---

## Données produits

La base de données contient dix produits utilisés pour le catalogue LELON simulé :

* ELEA
* MIRA
* NOVA
* SOLEA
* LYRA
* LUNA
* ALYA
* LILA
* VERA
* NAYA

Un produit peut posséder plusieurs variantes selon différents attributs comme la couleur.

Chaque variante peut contenir des informations telles que :

* Le prix actuel
* Le prix d'achat
* Le stock
* Le matériau
* La taille
* La couleur

---

## Données marketing

Des données marketing ont également été ajoutées à la base afin de pouvoir analyser la relation entre les canaux d'acquisition et les ventes.

La base contient des informations sur les campagnes marketing telles que :

* Le nom de la campagne
* La plateforme
* La date de début
* La date de fin
* Le budget
* Le montant dépensé
* Les impressions
* Les clics
* Les likes
* Les partages

Les données de trafic du site web sont enregistrées séparément et peuvent être reliées aux campagnes marketing.
