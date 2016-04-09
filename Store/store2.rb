@inventory = [{:name => "Ale",:amount => 5, :price => "2.50"}, {:name => "Blond",:amount =>8, :price => "3"},
  {:name => "Weiss" ,:amount => 15, :price => "3.50"}, {:name => "IPA",:amount => 9, :price => "2.50"},
  {:name => "Pils" ,:amount => 15,:price => "1.50"}]

@cart = {}

puts"Welcome to the Dutch Beerstore!"

def show_inventory

    puts "Here is our Inventory:"
    @inventory.each do |product|
    	puts "Product #{product [:name]}} "
      puts "Amount #{product[:amount]}"
      puts "Price #{product[:price]} EUR"
    end
 end

def welcome
  puts "What would you like to do?
  1) View the Beerstore inventory
  2) Order Beer
  3) View your Beercart
  4) Remove from your Beercart
  5) Pay your Beer
  6) Nothing

  choice = gets.chomp.to_i

  when choice == 1
    show_inventory
    welcome
   when choice == 2
     add_to_cart

  when choice == 3
    show_cart

  when choice == 4

  when choice == 5

  when choice == 6
   puts "Goodbye!"

  else
    welcome

  end
end



def add_to_cart(item)
  if confirm(item)
  puts "How many {item}s would you like to order"
  number = gets.chomp.to_i
   if confirm(number)
     @cart[item] = number + @cart[item].to_i
     if number > 1
       puts "{number} {item}s has been added to your cart"
     elsif number == 1
       puts "{number} {item} has been added to your cart"
     end
     order more
   end
 end



def show_cart
  puts "Here is your order so far:"
  @cart.each do |name, amount|
    puts "{@cart[:name][:amount]} "
  end
  puts "Total cart value"

end

def order_more
  puts "Would you like to order more?
  1) Yes
  2) No
  3) View Shopping cart
  "

  order = gets.chomp.to_i

  if order == 1
    show_inventory

  elsif order == 2
    puts "Thank you for your order please proceed to checkout"

  else order == 3
    show_cart

  end

end

welcome
