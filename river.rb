class River

  attr_reader :name, :fish

  def initialize(name, fish = [])
    @name = name
    @fish = fish
  end

  def lose_fish(number)
    #Remove the first number of fish
    number.times do
        @fish.shift
    end

  end

end
