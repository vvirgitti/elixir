defmodule Fizzbuzz do

  def fizzy(number) do
    cond do
      rem(number, 3) == 0 && rem(number, 5) == 0 ->
          "fizzbuzz"
      rem(number, 3) == 0 -> 
        "fizz"
      rem(number, 5) == 0 -> 
        "buzz"
      number ->
        number
    end

  end


end
