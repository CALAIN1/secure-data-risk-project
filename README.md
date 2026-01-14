# Secure Data & IA Responsable — Mini-projet d’analyse du risque



## Présentation du projet

Ce mini-projet présente une analyse simplifiée du risque de crédit à partir de données entièrement fictives et anonymisées, inspirées d’un contexte bancaire.

L’objectif est de démontrer la capacité à :

- structurer des données relationnelles,

- effectuer des jointures SQL,

- raisonner sur des indicateurs de risque simples,

- tout en respectant strictement les principes de confidentialité et d’usage responsable de l’IA.

Ce projet se concentre sur la méthode et la logique métier, et non sur l’exploitation de données réelles.




## Sécurité des données et éthique

- Toutes les données sont 100 % fictives et anonymisées

- Aucun client réel, aucun nom, aucun montant réel

- Aucune donnée personnelle ou sensible n’est utilisée

- L’IA est utilisée uniquement comme outil d’aide à la structuration et au raisonnement

- Aucune donnée confidentielle n’est transmise ou traitée par un modèle d’IA

Ce cadre respecte les bonnes pratiques attendues dans un environnement bancaire ou financier.




## Modèle de données

Le projet repose sur quatre tables relationnelles :

- \*\*clients\*\* : profil client (tranche d’âge, statut professionnel, secteur, pays)

- \*\*loans\*\* : caractéristiques des prêts

- \*\*risk\_indicators\*\* : indicateurs de risque simulés (PD / LGD)

- \*\*decisions\*\* : décision finale de crédit (acceptée ou refusée)

Les relations entre les tables sont assurées par des clés primaires et étrangères, définies dans le fichier `schema.sql`.




## Analyses SQL

Le fichier `queries.sql` contient plusieurs requêtes illustrant :

- des jointures entre clients, prêts, indicateurs de risque et décisions,

- une analyse simple des décisions en fonction du niveau de risque,

- l’exposition par secteur d’activité,

- le profil type des prêts refusés.

Ces requêtes permettent de démontrer une compréhension claire de la logique relationnelle et du raisonnement risk.




## Synthèse Excel

Un fichier Excel (`analysis.xlsx`) présente des tableaux de synthèse simples :

- décisions par niveau de risque,

- décisions par secteur d’activité.

L’objectif de cet Excel est la communication et la lisibilité, et non la modélisation avancée.




## Contexte global

Ce mini-projet complète d’autres travaux orientés macro-économie et pipelines de données, en se concentrant ici sur :

- la gestion de données sensibles,

- la logique micro-économique client / prêt,

- les enjeux de sécurité et d’IA responsable dans un contexte bancaire.



