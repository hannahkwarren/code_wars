# CodeWars url: https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/ruby
# You live in the city of Cartesia where all roads are laid out in a perfect grid.
# You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk.

# The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends
# you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']).

# You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one
# city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes
# (you don't want to be early or late!) and will, of course, return you to your starting point.
# Return false otherwise.

# limitation: array will never be empty
# limitation: array will contain only single-character strings

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
