for n in 1..100
  if n%3 == 0 && n%5 == 0
    n = "FizzBazz"
  elsif n%3 == 0
    n = "Fizz"
  elsif
     n%5 == 0
    n = "Bazz"
  end
  puts n
end
