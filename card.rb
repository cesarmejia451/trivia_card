class Card

  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer[0]
  end

  def check_answer(user_answer)
    if user_answer.downcase == answer.downcase
      puts "Correct!"
    else
      puts "Incorrect!"
    end
  end

end