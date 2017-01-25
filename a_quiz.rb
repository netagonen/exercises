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
  options: ["1) Melbourne", "2) Anchorage", "3) Juneau"],
  answer: ["3", "Juneau"],
  wrong_answer: "Sorry but the right answer is no. 3, Juneau"
  },
  {
  question: "Can you store the value 'cat' in a variable of type int?",
  options: ["1) Yes", "2) No"],
  answer: ["2", "No"],
  wrong_answer: "Sorry, 'cat' is a string. it can only store numbers."
  },
  {
  question: "Q3) What is the result of 9+6/3?",
  options: ["1) 5", "2) 11", "3) 15/3"],
  answer: ["2","11"],
  wrong_answer: "Sorry, you are wrong, the correct answer is no. 2, 11."
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
  question[:options].each {|option| puts option} 
  if question[:answer].include?(ask_the_user.capitalize)
    puts positive_responses.shuffle.pop
    score += 1
  else
    puts question[:wrong_answer]
  end
end
puts "Hi! Thanks for playing, you got a score of #{score} out of 3."
