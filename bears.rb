class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def roar
    return "ROOAAARR"
  end

  def food_count
    return @stomach.length
  end

  def eat_fish(fish)
    @stomach << fish
  end

end
