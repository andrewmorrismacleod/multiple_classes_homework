class River

  attr_reader :name, :fish

  def initialize(name, fish = ["Stand-of", "Stock", "Monk"])
    @name = name
    @fish = fish
  end

end
