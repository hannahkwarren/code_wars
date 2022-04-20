# CodeWars url: https://www.codewars.com/kata/54da539698b8a2ad76000228/train/ruby

def is_valid_walk(walk)
  return false unless walk.length == 10

  results = walk.each_with_object({ x: 0, y: 0 }) do |direction, hash|
    case direction
    when 'n'
      hash[:x] += 1
    when 's'
      hash[:x] -= 1
    when 'e'
      hash[:y] += 1
    when 'w'
      hash[:y] -= 1
    else
      return false
    end
  end

  results[:x] == 0 && results[:y] == 0

  # OPTION 2 with if statements, if you like:
  # walk.each do |block|
  #     if block.downcase == 'n'
  #         y += 1
  #     elsif block.downcase == 's'
  #         y -= 1
  #     elsif block.downcase == 'w'
  #         x -= 1
  #     elsif block.downcase == 'e'
  #         x += 1
  #     end
  # end

  # x == 0 && y == 0

  # OPTION 3 with tally:
  # results = walk.tally
  # results['n'] == results['s'] && results['w'] == results['e']
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
p !is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])
p !is_valid_walk(['w'])
p !is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])
