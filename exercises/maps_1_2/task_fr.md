# Visiteurs

## Étape 1 : ajouter des tests

Créez un scénario de test pour le contrat exemple visitors, pour tester :
- l’enregistrement d’un nouvel utilisateur
- plusieurs visites de cet utilisateur
- vérifier qu’on les compte bien.

## Étape 2 : 

Modifiez maintenant le smart contrat pour :

- Utiliser l’adresse de l’appelant plutôt qu’un login pour identifier les utilisateurs.
- Faire payer la visite 5 tez à la première visite d’un utilisateur, 3 tez aux suivantes.
- Imposer un délai de 10 jours minimum entre deux visites du même utilisateur.

Testez ensuite ces modifications.
