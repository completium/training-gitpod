# Transactions 1

Écrivez un Smart contrat qui possède un point d’entrée collect, qui permet à son propriétaire de retirer une somme en tez de la balance, en attendant au moins 2 minutes entre chaque retrait, et en ne retirant pas plus, à chaque appel, qu’une somme maximale que l’on fixe dans le storage lors du déploiement.


# Transactions 2
Ajoutez un point d’entrée deposit, qui permet de faire un dépôt d’au moins 100 tez, tout en modifiant la limite de retrait maximal.

# Transactions 3
Plutôt qu’un maximum que l’on peut retirer, faire en sorte que l’on ne puisse retirer qu’un certain pourcentage de la balance disponible.  Ce pourcentage est à définir dans le storage, lors du déploiement du contrat.

Ajouter un point d’entrée deposit, qui permet de modifier ce pourcentage.
