class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    return @fish.length
  end

end
