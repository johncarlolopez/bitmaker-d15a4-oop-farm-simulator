require_relative 'field'

# Farm class
class Farm

  def initialize
    @fields = []
    @total_crops_harvested = 0
  end

  def add_field(field)
    @fields << field
  end

  def harvest
    total_harvested_now = 0
    @fields.each {|field|
      total_harvested_now += field.harvest
    }
    @total_crops_harvested += total_harvested_now
    return total_harvested_now
  end

  def relax
    total_wheat = 0
    total_corn = 0
    @fields.each {|field|
      if field.type == 'wheat'
        total_wheat += field.hectare
      elsif field.type == 'corn'
        total_corn += field.hectare
      end
    }
    return "#{total_corn} hectares of tall green stalks rustling in the breeze fill your horizon.\n
    The sun hangs low, casting an orange glow on a sea of #{total_wheat} hectares of wheat."
  end

  def status
    return @total_crops_harvested
  end
end
