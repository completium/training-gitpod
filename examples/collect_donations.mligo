type storage = int
let owner : address = ("tz1eGd1Gzh9cpZjW1hpzre2fLSnMAsXqRdJy" : address)
type action = | Collect of tez

let collect (reqAmount: tez) = 
    let receiver : unit contract =
    match (Tezos.get_contract_opt (owner): unit contract option) with
        Some contract -> contract
      | None -> (failwith "Contract not found." : unit contract) in
    let op : operation = Tezos.transaction unit reqAmount receiver in
    [op]

let main (p,s: action * storage) =
 let ops =
   match p with
   | Collect n -> collect (n)
 in (ops : operation list), s
