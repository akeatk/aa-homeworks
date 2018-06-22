class Map
  attr_reader :elements

  def initialize(*arrays)
    @elements = fixed_args(arrays) || []
  end

  def fixed_args(args)
    for el in args
      return nil if el.length != 2
    end
    args
  end

  def set(key, value)
    pair = elements.detect {|arr| arr[0] == key}
    if pair.nil?
      elements << [key, value]
    else
      pair[1] = value
    end
  end

  def get(key)
    pair = elements.select {|arr| arr[0] == key}[1]
  end

  def delete(key)
    idx = elements.index {|arr| arr[0] == key}
    elements.delete_at(idx)
  end

  def show
    p elements
  end
end

map1 = Map.new
map1.show
letters = ("a".."e").to_a
5.times {|i| map1.set(i + 1, letters[i])}
map1.show
3.times {|i| map1.set(i + 1, letters[4 - i])}
map1.show
5.times {|i| p map1.delete(i + 1)}
map1.show

map1 = Map.new([1,:a],[2,:b])
map1.show
