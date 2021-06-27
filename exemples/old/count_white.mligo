type couleur = 
| Blanc
| Noir
| Rouge

let main (param, nbBlancs : couleur * int) =
	let newNbBlancs = match param with
	| Noir -> nbBlancs
        | Blanc -> nbBlancs + 1
	| Rouge -> nbBlancs
	in ([] : operation list), newNbBlancs

