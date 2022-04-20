def towerBuilder(n_floors)

  tower = []
  num_spaces = 0
  num_astrices = (n_floors * 2) - 1

  while n_floors.positive?
    space = ' ' * num_spaces
    asterisk = '*' * num_astrices
    tower.unshift("#{space}#{asterisk}#{space}")
    num_spaces += 1
    num_astrices -= 2
    n_floors -= 1
  end

  tower
end

p towerBuilder(1) == ['*']
p towerBuilder(2) == [' * ', '***']
p towerBuilder(3) == ['  *  ', ' *** ', '*****']
