def check_pin
  while true
    puts "> "
    pin_entry = gets.chomp.to_i
    pin = 6543
    if pin == pin_entry
      return "OK, Please choose an action"
    else
      puts "This is an ERROR, please type a four digits pin"
    end
  end
end

puts "Please enter your pin"
puts check_pin
