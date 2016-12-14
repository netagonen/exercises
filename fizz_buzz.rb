for n in 1..100
  if n%3 == 0 && n%5 == 0
    n = "FizzBazz"
  elsif n%3 == 0
    n = "Fizz"
  elsif n%5 == 0
    n = "Bazz"
  end
  puts n
end

(1..100).each do |n|
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

1.upto(100) do |n|
  fizz = n%3 == 0
  buzz = n%5 == 0

  puts case
  when fizz && buzz
    'fizzbuzz'
  when fizz
    'fizz'
  when buzz
    'buzz'
  else n
  end

end
