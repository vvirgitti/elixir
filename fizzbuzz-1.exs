defmodule Fizzbuzz do



end


defmodule FizzbuzzTest do
    use ExUnit.case
    doctest Fizzbuzz

test "it can return a number" do
    assert Fizzbuzz.doIt(1) == 1    
end

end
