
def polyndrom?(number)
  num_as_s = number.to_s
  if num_as_s == num_as_s.reverse
    return true
  end
end

def highest_polyndrom
  polyndroms = []
  (100...999).reverse_each do |i|
    (100...999).reverse_each do |j|
      number = i * j
      if polyndrom?(number)
         polyndroms << number
      end
    end
  end
  puts polyndroms.max
end

highest_polyndrom
