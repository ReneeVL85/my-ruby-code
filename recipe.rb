omelet_ingredients = {"eggs" => "3", "bacon" => "2 slices", "cheese " => "3 slices", "tomato" => "3", "bread" => "2 pieces" }

def show_omelet_ingredients(ingredients)
  puts "You will be making an omelet and these are the ingredients:"
  ingredients.each do |name, amount|
    puts "You will use #{name} and #{amount}"
  end
end

show_omelet_ingredients(omelet_ingredients)

def continues
  puts "Do you whish to continue?
  1) Yes
  2) No"

  choice = gets.chomp.to_i

  if choice == 1
    return true
  elsif choice == 2
    return false
  else
    continues
  end
end

while choice != 1 && choice != 2
  return 

end

continues

def break_eggs(ingredients)
  number_of_eggs = ingredients["eggs"]
  for counter in 1..number_of_eggs.to_i
    puts "break egg #{counter} and put in a bowl"
  end
  puts "start whisking!"
end

break_eggs(omelet_ingredients)

def baking_bacon(ingredients)
  pieces_of_bacon = ingredients["bacon"]
  for counter in 1..pieces_of_bacon.to_i
    puts "put #{counter} in pan"
  end
  puts "start baking!"
end

baking_bacon(omelet_ingredients)
