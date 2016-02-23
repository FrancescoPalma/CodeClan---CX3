class Bear

  attr_accessor(:roar, :name, :type, :tummy)

  def initialize(roar, name, type, tummy)
    @roar = roar
    @name = name
    @type = type
    @tummy = tummy
  end

  def remove_fish_from_river(river, *fish)
    first_fish = []
    first_fish << fish.each do |x| 
      river.delete(x) 
    end
    return fish
  end

  def add_fish_to_tummy(*fish)
    fish.each do |x|
      @tummy << fish
    end
    return @tummy
  end
  
end