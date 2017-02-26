def is_prime?(number)
  i = 2
  begin
    if number % i == 0
      return false
    end
    i += 1
  end while i <= (number/2).floor
  true
end

def biggest_prime(number)
  i = (number/2).floor
  begin
    if number % i == 0 && is_prime?(i)
      return i
    end
    i -= 1
  end while i >= 2
end

puts biggest_prime(600851475143)
