
sum_of_squeres = 0
(1..100).each { |n| sum_of_squeres += n**2}
puts sum_of_squeres

puts squere_of_sum = ((1..100).reduce(:+))**2

puts squere_of_sum - sum_of_squeres
