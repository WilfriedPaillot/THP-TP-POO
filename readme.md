# Projet non-validant POO

## Calendrier en Ruby

### Objectif: 

Coder une application où tu pourras créer des événements avec une date de début, une durée, et un nom. Tu pourras leur rattacher un lieu, des utilisateurs (qui y assisteront), et on affichera la liste totale des rendez-vous.

### Contraintes:

Spécifications Class User

- Un User a 2 variables d'instance, un @email (string) et un @age (Integer), que l'on peut lire et modifier à sa guise (indice : attr_accessor).
- Dès la création d'un User, on veut définir son e-mail et son âge. En d'autres terme, on veut pouvoir faire julie = User.new("julie@email.com", 32)
- Réaliser des méthodes de classes pour afficher tous les utilisateurs et un utilisateur par son email

Nous allons faire une classe Event qui aura plusieurs variables d'instance : 
- une date de début
- une durée 
- un titre
- des participants 

À partir de la date de début et de la durée, nous pourrons calculer (via des méthodes d'instance) si l'événement est passé ou s'il est prévu pour bientôt

