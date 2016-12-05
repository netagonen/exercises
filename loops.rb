def collatz(n)
  numbers =[]
  while n>1 do
    n = n.even? ? n/2 : (3*n)+1
    numbers << n
  end
  print numbers
  puts
  puts "the loop terminated after #{numbers.length} and the largest value was #{numbers.max}"
end

collatz(25)
