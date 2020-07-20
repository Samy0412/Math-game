class Question
  attr_accessor :number_one, :number_two
  
  def initialize
    @number_one = rand(1...20)
    @number_two = rand(1...20)
  end

  def ask
    "What does #{@number_one} plus #{@number_two} equal?"
  end
  
  def verify_question(player, answer)
    
    if answer === @number_one + @number_two
      return "YES! You are correct."
    else
      player.lose_life
      return "Seriously? No!"
      
    end
  end

end

