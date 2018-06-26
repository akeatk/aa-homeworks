class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @players = [name1, name2]
    @cups = Array.new(14){[]}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each {|i| 4.times {@cups[i] << :stone}}
    (7..12).each {|i| 4.times {@cups[i] << :stone}}
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos == 6 || start_pos > 12 || start_pos < 0
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    hand, @cups[start_pos] = @cups[start_pos], []
    current = start_pos
    until hand.empty?
      case current
      when 0..4, 6..11
        current += 1
      when 5
        current = current_player_name == @players[0] ? 6 : 7
      when 12
        current = current_player_name == @players[1] ? 13 : 0
      when 13
        current = 0
      end
      @cups[current] << hand.pop
    end
    render
    next_turn(current)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    case ending_cup_idx
    when 6, 13
      :prompt
    else
      @cups[ending_cup_idx].length == 1? :switch : ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? {|i| @cups[i].empty?} || (6..11).all? {|i| @cups[i].empty?}
  end

  def winner
    return :draw if @cups[6] == @cups[13]
    @cups[6].length > @cups[13].length ? @players[0] : @players[1]
  end
end
