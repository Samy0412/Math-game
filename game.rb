class Game
  attr_accessor :current_player, :player1, :player2

  def initialize(player1, player2)
    @p1 = Player.new(player1)
    @p2 = Player.new(player2)
    @current_player = @p1

    start_game
    
  end

  def start_game
    while (!@p1.is_dead? && !@p2.is_dead?)
      new_turn
      if validate_game_over
        game_over(validate_game_over)
      else
        puts "------ NEW TURN ------"
      end
    end
  end

  def new_turn
    q = Question.new
    puts "#{@current_player.name}: #{q.ask}"
    answer = gets.chomp.to_i
    puts "#{@current_player.name}: #{q.verify_question(@current_player, answer)}"
    puts "#{@p1.name}: #{@p1.life}/3 vs #{@p2.name}: #{@p2.life}/3"
    @current_player = @current_player === @p1 ? @p2 : @p1
  end

  def validate_game_over
    if (@p1.is_dead? || @p2.is_dead?)
      winner = @p1.is_dead? ? @p2 : @p1
    end
    return winner
  end

  def game_over(winner)
    puts "#{winner.name} wins with a score of #{winner.life}/3"
    puts "------ GAME OVER ------"
    puts "Good bye!"
  end

end





