class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    until @game_over
      take_turn
      sleep 1
    end
    game_over_message
    reset_game
  end

  def take_turn
    starting_warning
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def starting_warning
    system "clear"
    print "starting"
    4.times do |i|
      sleep(1.0/4.0)
      print "."
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |el|
      system "clear"
      sleep(1.0/4.0)
      print "#{el}"
      sleep 1
    end
    system "clear"
    $stdout.flush
  end

  def require_sequence
    input = nil
    while true
      print "Please enter the sequence of colors: "
      input = gets.downcase.split
      if input.all? {|el| COLORS.include?(el)}
        break
      end
      puts "Improper input. Please check spelling."
    end
    for i in 0...@seq.length
      @game_over = true if @seq[i] != input[i]
    end
  end

  def add_random_color
    @seq << COLORS[rand(0..3)]
  end

  def round_success_message
    puts "You successfully completed a #{@sequence_length} color sequence."
  end

  def game_over_message
    puts "Game over. You failed on a #{@sequence_length} color sequence."
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end

#used for testing the full game
#game = Simon.new
#game.play
