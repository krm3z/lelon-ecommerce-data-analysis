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

Par exemple :

* Les clients sont reliés aux commandes.
* Les commandes sont reliées aux articles commandés.
* Les articles commandés sont reliés aux variantes de produits.
* Les variantes sont reliées aux produits et aux couleurs.
* Les commandes peuvent être reliées aux campagnes marketing.
* Les produits peuvent être reliés aux promotions et aux saisons.

Cette structure permet d'analyser plusieurs parties de l'activité sans stocker toutes les informations dans une seule table.

---

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

Parmi les facteurs qui pourront être analysés :

* Les performances des produits
* Les variantes de produits
* Les prix
* Les promotions
* Les campagnes marketing
* Les plateformes publicitaires
* Le trafic du site web
* Le comportement des clients
* Le volume de commandes

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

Cela permettra ensuite de calculer différents indicateurs marketing comme :

* Le taux de clic
* Le coût par clic
* Le taux de conversion
* Le coût d'acquisition client
* Le retour sur dépenses publicitaires

---

## Promotions

La base contient une promotion de lancement simulée.

Le prix standard des produits est de :

**40 €**

Le prix de lancement simulé est de :

**35 €**

Une promotion de lancement a été créée afin de représenter la période initiale des ventes.

Ces données pourront ensuite être utilisées pour comparer les performances commerciales pendant et en dehors de la période promotionnelle.

---

## État actuel du projet

Étapes terminées :

* Installation et configuration de PostgreSQL
* Création de la base de données
* Conception du schéma relationnel
* Création de 15 tables
* Mise en place des clés primaires
* Mise en place des clés étrangères
* Insertion des produits
* Insertion des variantes de produits
* Insertion des couleurs
* Insertion des saisons
* Insertion des clients
* Insertion des commandes
* Insertion des articles commandés
* Insertion des campagnes marketing
* Insertion du trafic du site web
* Insertion des promotions
* Création des relations entre produits et promotions

Notions SQL actuellement étudiées :

* Les jointures SQL (`JOIN`)
* Les fonctions d'agrégation
* `COUNT()`
* `SUM()`
* `GROUP BY`

---

## Prochaines étapes

La prochaine phase du projet sera consacrée à l'analyse SQL.

L'analyse inclura progressivement :

* Les ventes par produit
* Le chiffre d'affaires par produit
* Le chiffre d'affaires par commande
* Les performances des variantes
* Le comportement d'achat des clients
* Les performances des campagnes marketing
* L'analyse du trafic du site web
* L'impact des promotions
* Les métriques de conversion

Les résultats des analyses SQL seront ensuite utilisés dans Excel et Power BI.

L'objectif final sera d'utiliser le jeu de données simulé pour répondre à la question principale :

**Quels facteurs influencent le plus les premières ventes d’un e-commerce ?**

Les données étant synthétiques, les conclusions décriront les tendances observées dans le scénario simulé et ne seront pas présentées comme une preuve de causalité dans le monde réel.
