num1=0
num2=1
even_fib = []
begin
  num = num1 + num2
  num.even? ? even_fib << num :
  num1 = num2
  num2 = num
end while num < 4000000
puts even_fib.reduce(:+)

num1=0
num2=1
even_fib = []
(1..400).each do |n|
  num = num1 + num2
  num.even? ? even_fib << num :
  num1 = num2
  num2 = num
end 
puts even_fib.reduce(:+)
