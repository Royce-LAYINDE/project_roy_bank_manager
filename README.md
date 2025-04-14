# Plateforme de Prédiction d'Éligibilité à un Prêt Bancaire – Roy Bank Manager

Ce projet consiste en la création d’une plateforme web permettant aux gestionnaires de comptes bancaires d’évaluer l’éligibilité des clients à un prêt, grâce à des modèles de machine learning. Il a été réalisé en juillet 2024 dans un contexte pédagogique et pratique.

## Objectifs du projet

- Prédire si un client est éligible à un prêt bancaire à partir de ses données.
- Fournir aux gestionnaires une interface simple pour consulter les clients, leurs historiques et effectuer des demandes de prêt.
- Mettre en œuvre des algorithmes d’IA dans un cas d’usage bancaire concret.

## Fonctionnalités principales

- Formulaire de demande de prêt avec prédiction immédiate de l’éligibilité.
- Tableau de bord récapitulatif (statistiques globales, graphiques).
- Fiche détaillée par client (transactions, historiques de prêts).
- Authentification des utilisateurs (employés de banque).
- Base de données relationnelle (MySQL) pour stocker les données.
- Déploiement via Docker.

## Technologies utilisées

### Backend & Machine Learning

- Python
- Flask (framework web)
- scikit-learn (modèles ML : KNN, régression logistique)
- pandas, NumPy, Seaborn (prétraitement et visualisation)

### Frontend

- HTML / CSS / JavaScript
- Chart.js (visualisation des données)

### Base de données

- MySQL (via MySQL Workbench)

### Déploiement

- Docker
- docker-compose

## Installation locale

1. Cloner le dépôt :
   ```bash
   git clone https://github.com/Royce-LAYINDE/project_roy_bank_manager.git
   cd project_roy_bank_manager
2. Lancer l’environnement avec Docker :

  ```bash
  docker-compose up --build
  ```
3. Accéder à l’application :

  ```bash
  http://localhost:5000
  ```
## Structure du projet
- model/ : scripts d'entraînement des modèles prédictifs
- static/ : fichiers CSS et JavaScript
- templates/ : pages HTML (Flask)
- app.py : serveur Flask principal
- Dockerfile, docker-compose.yml : pour le déploiement
- db/ : scripts SQL et structure de la base de données

## Données
Le jeu de données provient d’Analytics Vidhya et contient des informations sur les clients, leurs revenus, leurs situations personnelles, leur historique de crédit, etc. Ces données ont été nettoyées, prétraitées (normalisation, encodage, gestion des valeurs manquantes) avant d’être utilisées pour l'entraînement.

## Résultats
- Régression logistique : précision ~78.86 % (test)
- KNN : précision ~79.67 % (test)
Très bons résultats sur la prédiction des prêts acceptés, mais tendance à générer des faux positifs.

## Perspectives
- Ajout de nouveaux modèles plus avancés (Random Forest, réseaux de neurones).
- Enrichissement du jeu de données.
- Intégration d'un système de notification.
- Interface plus interactive avec filtres avancés.

## Auteur
Projet réalisé par [Malick Royce LAYINDE](https://roylab.xyz/).
