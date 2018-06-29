tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
  "left",  "left-up" ]

def slow_dance(dir, tiles)
  tiles.each_with_index do |tile, i|
    return i if tile == dir
  end
  nil
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

tiles_hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4,
  "left-down"=>5, "left"=>6, "left-up"=>7}

def fast_dance(dir, tiles)
  return tiles[dir]
end

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
