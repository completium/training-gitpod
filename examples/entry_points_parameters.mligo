type action =
| Increment of nat
| Decrement of nat

let add (oldStor, value: int * nat) : int = oldStor + value
let sub (oldStor, value: int * nat) : int = oldStor - value

let main (parameter, oldStor: action * int) =
 let newStor =
   match parameter with
   | Increment n -> add (oldStor, n)
   | Decrement n -> sub (oldStor, n)
 in ([] : operation list), newStor
