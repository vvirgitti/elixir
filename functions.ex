#Functions are first-class citizens and they can be assigned to variables and passed as arguments


#Anynomous function has no name and no modules
max_balance = fn(amount) -> "Max: #{amount}" end

#call it with .() and we must pass an argument
max_balance.(500)

#shorthand for anonymous functions
deposit = &(&1 + &2)
#is equivalent to 
deposit = fn(balance, amount) -> balance + amount end

#Shorthand anonymous functions can be inline when used as an argument
Account.run_transaction(1000, 20, &(&1 + &2)) 
