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



end
