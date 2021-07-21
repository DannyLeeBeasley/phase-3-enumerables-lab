require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map {|food| food[:name]}
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter{|food| food[:heat_level] > 5}
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find {|food| food[:cuisine] == cuisine}
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort do |food, next_food|
    food[:heat_level] <=> next_food[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  spiciest_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods)
end

# def average_heat_level(spicy_foods)
#   sum_of_heat_levels = 0
#   spicy_foods.each do |food|
#     sum_of_heat_levels += food[:heat_level]
#   end
#   sum_of_heat_levels / spicy_foods.length
# end


def average_heat_level(spicy_foods)
  sum_of_heat_levels = spicy_foods.sum {|food| food[:heat_level]}
  sum_of_heat_levels / spicy_foods.length
end