def prompting
  while true
    puts "> "
    answer = gets.chomp
    answer_as_i = answer.to_i
    answer_as_s = answer_as_i.to_s
    if answer == answer_as_s && answer_as_i >= 0 && answer_as_i < 10
      return answer_as_i
    else
      puts "This is an ERROR, you typed #{answer}, please type a positive integer"
    end
  end
end

def gessing_game
  while true
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    number = numbers.sample
    user_num = prompting
      if
       user_num == number
       puts "Amazing, you guessed right, the number was #{number}!"
       return
     else
      puts "Sorry, wrong answer.. the number was #{number}. Let's try again!"
    end
  end
end

puts "Welcome to the worst gessing game in the world!"
puts "I'm thinking of a number from 0 to 9. What is your guess?"
gessing_game
