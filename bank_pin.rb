puts "Please enter your pin"
attempt = 0
while true
  print "> "
  pin_entry = gets.chomp.to_i
  pin = 6543
  if pin == pin_entry
    puts "OK, Please choose an action"
    break
  else
    if attempt < 3
      puts "This is an ERROR, please type a four digits pin"
      attempt += 1
    else
      puts "Sorry, you tryed too many times"
      break
    end
  end
end
