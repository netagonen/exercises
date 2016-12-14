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

array = (1..100).to_a
array.each do |n|
  case 
  when n%3 == 0 && n%5 == 0
    n = "FizzBazz"
  when n%3 == 0
    n = "Fizz"
  when n%5 == 0
    n = "Bazz"
  end
  puts n
end
