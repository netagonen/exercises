def polyndrom
  (100...999).reverse_each do |i|
    (100...999).reverse_each do |j|
      number = i * j
      num_as_s = number.to_s
      if num_as_s == num_as_s.reverse
        return number
      end
    end
  end
  return false
end

puts polyndrom
