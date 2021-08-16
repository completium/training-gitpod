type couleur = 
| Blanc of nat
| Noir
| Rouge of nat

let main (param, intensiteBlanc : couleur * nat) =
    let newIntensiteBlanc = match param with
    | Noir -> intensiteBlanc
    | Blanc intensite -> intensiteBlanc + intensite
    | Rouge intensite -> intensiteBlanc
    in ([] : operation list), newIntensiteBlanc

