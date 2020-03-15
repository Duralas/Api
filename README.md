# Dùralas

[Dùralas][1] est un forum français de rôle-play dans un univers médiéval-fantastique. 
Le principe est d'écrire des récits mettant en scène son propre personnage afin d'interagir avec d'autres joueurs.

## Database

Des informations sont déportées sur une base de données : les lieux, le bestiaire, les équipements et objets utilisables, les quêtes et donjons ainsi que les personnages, entre autre. Ces informations ont surtout un objectif de références pour les joueurs pour les mécanismes RP de Dùralas (notamment les combats).


# API

Ce projet réalisé en Symfony 5 décrit une role-based RESTful API pour joindre les données via des requêtes HTTP **et** selon les rôles utilisateur :

* Anonyme
* Contributeur
* Modérateur
* Administrateur
* Tungstène

Ce projet décrit seulement la mise à disposition des données et les potentielles actions de contribution. L'implémentation graphique est à faire ou à trouver dans un autre projet de l'équipe [Dùralas]

## Fonctionnalités attendues

Plusieurs fonctionnalités sont attendues afin de répondre aux différents besoins du forum RPG et notamment concernant le respect des rôles.

- [ ] Schéma
  - [x] Carte : régions, zones, sous-zones + type (ville, compétition, faction, guilde, métier, événement)
  - [ ] Bestiaire : créatures + type (abominations, humanoïdes, superstitieux, etc.) + localisation + butins 
  - [ ] Objets : équipements + type (épée, heaume, respirateur), restrictions, obtention (recette, capture, guilde, faction, etc.)
  - [ ] Utilisateurs
  - [ ] Personnages
- [ ] Lecture des données
- [ ] Authentification - token JWT
- [ ] Gestion des permissions
  - [ ] Schéma (string role, ?int utilisateur)
  - [ ] Service d'accès aux ressources selon la permission accordée
- [ ] Statistiques du phénix
  - [ ] Schéma
  - [ ] Rôle rédacteur : insertion / modification / suppression (statistiques seulement)


[1]: http://www.lemondededuralas.org/
[Dùralas]: https://github.com/Duralas
