# Projet FaaS

Le but de ce projet est le développement d'un POC visant la validation de différent élément technique pour la mise en place d'une solution FaaS


## Role Docker

Le role docker permet l'ajout de l'ensemble des fonctionnalités nécessaires au bon fonctionnement de docker sur un environnement ubuntu 16.04


## Role OpenFaas

Le role OpenFaas permet l'ajout des fonctionnalités nécessaires au fonctionnement d'OpenFaas sur un serveur principal manager


## Role DockerWorker

Le role DockerWorker permet l'ajout de worker au swarm par la récupération du token sur le serveur de management du swarm


## Role DockerClean

Le role DockerManager permet l'ajout de manager au swarm par la récupération du token sur le serveur de management du swarm


## Role DockerManager

Le role DockerClean permet de relancer un swarm depuis le début et de nettoyer les artefacts restant du précedent swarm


## Role Hostname

Le role Hostname permet de changer l'hostname des machines selon le hostname_prefix situé dans le playbook, afin d'éviter les duplicata de nom


## Role Kong

Le role Kong permet de rajouter des sécurités ( cf doc Kong ) 


## Role Kubernetes

Le role Kubernetes permet l'installation de Kubernetes avec OpenFaas, il n'est pas fonctionnel pour l'instant.
Il est ici afin de montrer des pistes en cas de suivi dans cette voie
