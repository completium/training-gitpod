# Charité : limites

## Étape 1 : 2 minutes !

Modifiez le contrat d'exemple charity, et en particulier le point d'entrée Collect, en ajoutant les contraintes suivantes :

- le propriétaire doit attendre deux minutes après un retrait, pour retirer de nouveau.
- le propriétaire ne peut pas retirer en une fois, plus qu'une certaine valeur, que l'on fixe dans le storage

## Étape 2 : au moins 100 tez

Modifiez le point d'entrée Donate, pour ne permettre que les dépôts d'au moins 100 tez.

Lors d'un dépôt, on peut spécifier la nouvelle valeur du retrait maximal

## Étape 3 : limite en pourcentage.

Plutôt qu’un maximum que l’on peut retirer, faire en sorte que l’on ne puisse retirer qu’un certain pourcentage de la balance disponible.

Ce pourcentage est dans le storage, et peut être modifié par l'appel à Donate
