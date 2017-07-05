import Html exposing (text)

boss = {name = "Alice", salary = 200000 }
worker = {name = "Bob", salary = 50000, supervisor = boss}
newWorker = {worker | name = "Carol" }

payrollTax : {a | salary : Float} -> Float
payrollTax {salary} =
    salary * 0.15

main = text <| toString <| if List.all ((==) True)
    [ .name boss == "Alice"
    , worker.supervisor == boss
    , payrollTax worker == 7500.0
    , newWorker.supervisor == boss
    ] then () else Debug.crash ""
