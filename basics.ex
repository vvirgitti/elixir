
#every function needs to be enclosed in a module 
defmodule Account do
    
    #every function is defined by def and encased in a do/end => like Ruby
    def balance(initial, spending) do
        #no need to add the type for the arguments
        #no return => Elixir always return the last value
        initial - spending    
    end

end

#to invoke a function, we use the dot notation => Module name acts as a namespace
current_balance = Account.balance(1000, 200)

#use IO. to print to the console and Elixir accept string interpolation like Ruby
IO.puts "Current balance: US $#{current_balance}"


#use the pipe operator to avoid onions function calls
#const can be piped as well as values returned from functions
"Elixir" |> String.upcase() |> IO.puts

# <> is used to concatenate strings (like + in JS)
# = is a match operator => it evaluates the 2 sides but it can also assign a variable if the left side is empty
#ex:
language = "Elixir"
IO.puts language
# => in this case, it will display the string Elixir as the language is an empty variable - so it will match the string on the right

#Another example

"Andre " <> last_name = "Andre Vaillant"
IO.puts last_name
# => will print out Vaillant

#Elixir uses pattern matching to read from a list
data = ["Elixir", "Valim"]
IO.puts data
#returns ElixirValim

[lang, author] = data
IO.puts "#{lang}, #{author}"
#returns Elixir, Valim

#There are no arrays as such in Elixir - instead, we use Enum to perform maps or reduce
#For example:
perform_operation = fn 
    (values, :addition) -> Enum.reduce(values, &(&1 + &2))
    (values, :multiplication) -> Enum.reduce(values, &(&1 * &2))
end


