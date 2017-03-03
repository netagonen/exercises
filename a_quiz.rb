def ask_the_user
  print "> "
  gets.chomp
end

def get_y_n?
  while true
    answer = ask_the_user.capitalize
    if answer == "Yes"
      return true
    elsif answer == "No"
      return false
    else
      puts "This is an ERROR, you typed #{answer}, please type 'Yes' or 'No'."
    end
  end
end

questions = [{
  question: "What is the capital of Alaska?",
  options: ["Melbourne", "Anchorage", "Juneau"],
  answer: "Juneau",
  wrong_answer: "Sorry but the right answer is Juneau"
  },
  {
  question: "Can you store the value 'cat' in a variable of type int?",
  options: ["Yes", "No"],
  answer: "No",
  wrong_answer: "Sorry, 'cat' is a string. it can only store numbers."
  },
  {
  question: "Q3) What is the result of 9+6/3?",
  options: ["5", "11", "15/3"],
  answer: "11",
  wrong_answer: "Sorry, you are wrong, the correct answer is 11."
  }]

positive_responses = ["That's right!", "Very nice", "Well done", "You are correct" ]



puts "Are you ready for a quiz? (Please answer 'yes' or 'no')."
if get_y_n?
  puts "Ok, here it comes"
else
  exit
end
score = 0
questions.each do |question|
  puts question[:question]
  shuffled_opt = question[:options].shuffle
  option_index = 1
  shuffled_opt.each do |option|
    puts "#{option_index}) #{option}"
    option_index +=1
  end
  user_input = ask_the_user.capitalize
  if question[:answer] == user_input || shuffled_opt.index(question[:answer]) == (user_input.to_i - 1)
    puts positive_responses.shuffle.pop
    score += 1
  else
    puts question[:wrong_answer]
  end
end
puts "Hi! Thanks for playing, you got a score of #{score} out of 3."
