let main ((value1, value2), (storage1, storage2) : (int * int) * (int * int)) =
       let storage1 = storage1 + value1
       in let storage2 = storage2 + value2
       in ([] : operation list), (storage1, storage2)
