
fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fishes)
  fishes.length.times do |i|
    return fishes[i] if fishes.all? do |other|
      fishes[i] == other || fishes[i].length > other.length
    end
  end
end

p 'sluggish_octopus'
p sluggish_octopus(fishes)

def dominant_octopus(fishes)
  sorted_fishes = fishes.sort_by {|el| el.length}
  return sorted_fishes[-1]
end

p 'dominant_octopus'
p dominant_octopus(fishes)

def clever_octopus(fishes)
  return nil if fishes.length < 1
  max = 0

  (1...fishes.length).each do |i|
    max = i if fishes[max].length < fishes[i].length
  end

  fishes[max]
end

p 'clever_octopus'
p clever_octopus(fishes)
