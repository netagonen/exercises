def collatz(n)
  numbers =[]
  num_of_loops = 0
  while n>1 do
    (n%2 == 0) ? (n = n/2) : (n = (3*n)+1)
    numbers << n
    num_of_loops +=1
  end
  print numbers
  puts
  puts "the loop terminated after #{num_of_loops} and the largest value was #{numbers.max}"
end

collatz(6)
