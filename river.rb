class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    return @fish.length
  end

  def add_fish(fish)
    @fish << fish
  end

  def move_fish_from_river(bear, fish)
    @fish.delete(fish)
    bear.eat_fish(fish)
  end

end
