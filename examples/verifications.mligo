let owner : address = ("tz1eGd1Gzh9cpZjW1hpzre2fLSnMAsXqRdJy" : address)
type storage = int * timestamp 
type action = | Increment of nat | Decrement of nat

let add ((total, lastSubDate), param: storage * nat) : storage = total + param, lastSubDate
let sub ((total, lastSubDate): storage) : storage = 
    if Tezos.sender <> owner then
        (failwith("Seul le proprietaire peut retirer") : storage)
    else if Tezos.now < lastSubDate + 300 then
        (failwith("Vous devez attendre 5 minutes avant de retirer 1") : storage)
    else
        total - 1, Tezos.now

let main (p,s: action * storage) =
 let stor =
   match p with 
   | Increment n -> add (s, n)
   | Decrement -> sub (s)
 in ([] : operation list), stor
