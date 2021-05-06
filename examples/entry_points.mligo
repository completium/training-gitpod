type action =
| Increment
| Decrement

let increment (oldStorage) : int = oldStorage + 1
let decrement (oldStorage: int) : int = oldStorage - 1

let main (parameter, oldStorage : action * int) =
 let newStorage =
   match parameter with
   | Increment -> increment (oldStorage)
   | Decrement -> increment (oldStorage)
 in ([] : operation list), newStorage
