# Crop class
class Field

  attr_reader :type, :hectare

  CORN_HARVEST = 20
  WHEAT_HARVEST = 30

  def initialize(type,hectare)
    @type = type.to_s.downcase
    @hectare = hectare.to_i
    @harvested = 0
  end

  def harvest
    case @type
    when 'corn'
      @harvested += CORN_HARVEST * @hectare
      return CORN_HARVEST * @hectare
    when 'wheat'
      @harvested += WHEAT_HARVEST * @hectare
      return WHEAT_HARVEST * @hectare
    end
  end

  def check
    return @harvested
  end
end
