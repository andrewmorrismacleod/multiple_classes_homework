class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(river)
    @stomach.push(river.fish[0]) #Assume bear eats the first fish
  end

  def roar
    return "Rar, I'm a scary bear"
  end

  def stomach_count
    return @stomach.length
  end

  def eat_multiple_fish(river, number)
    i = 0
    number.times do
      @stomach.push(river.fish[i])
      i +=1
    end
  end

end
