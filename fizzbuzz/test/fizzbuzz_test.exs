defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "can return a number" do
    assert Fizzbuzz.fizzy(1) == 1
  end

  test "can return fizz when the number is 3" do
    assert Fizzbuzz.fizzy(3) == "fizz"
  end

  test "can return buzz when the number is 5" do
    assert Fizzbuzz.fizzy(5) == "buzz"
  end

  test "can return fizzbuzz when the number is 15" do
    assert Fizzbuzz.fizzy(15) == "fizzbuzz"
  end

  test "can return fizz when the number can be divided by 3" do
    assert Fizzbuzz.fizzy(6) == "fizz"
  end

  test "can return buzz when the number can be divided by 5" do
    assert Fizzbuzz.fizzy(10) == "buzz"
  end

  test "can return fizzbuzz when the number can be divided 15" do
    assert Fizzbuzz.fizzy(30) == "fizzbuzz"
  end

end
