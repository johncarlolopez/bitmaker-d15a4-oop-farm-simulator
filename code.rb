require_relative 'farm'

my_farm = Farm.new()

def selection(num,my_farm)
  case num.to_i
  when 1
    field(my_farm)
  when 2
    harvest(my_farm)
  when 3
    status(my_farm)
  when 4
    relax(my_farm)
  when 5
    system exit
  else
    puts 'Invalid option'
  end
end

def field(my_farm)
  print 'What kind of field is it(corn,wheat)? '
  crop_type = gets.chomp.to_s.downcase
  case crop_type
  when 'corn','wheat'
    print 'How large is the field in hectares? '
    hectares = gets.chomp.to_i
    field = Field.new(crop_type,hectares)
    my_farm.add_field(field)
    puts "Added a #{crop_type} field of #{hectares} hectares"
  else
    puts 'Invalid crop type'
  end
end

def harvest(my_farm)
  puts "Harvested #{my_farm.harvest} food"
end

def status(my_farm)
  puts "The farm has harvested #{my_farm.status} food in total."
end

def relax(my_farm)
  puts my_farm.relax
end

while true
  puts '--------------------'
  puts 'Options:'
  puts '1. field -> adds a new field'
  puts '2. harvest -> harvests crops and adds to total harvested'
  puts '3. status -> displays some information about the farm'
  puts '4. relax -> provides lovely descriptions of your fields'
  puts '5. exit -> exits the program'
  puts '--------------------'
  print 'Select an option [1-5]: '
  option = gets.chomp
  selection(option,my_farm)
end
