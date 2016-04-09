@inventory = [{:name => "Ale", :price => "2.50"}, {:name => "Blond", :price => "3"},
  {:name => "Weiss" , :price => "3.50"}, {:name => "IPA", :price => "2.50"}, {:name => "Pils" ,:name => "1.50"}]
@cart = []

def welcome
  puts "Welcom to the Dutch Beerstore. Would you like to order beer?
  1) Yes
  2) No"

  choice = gets.chomp.to_i

  if choice == 1
    show_inventory

  elsif choice == 2
    puts "Goodbye!"
  else
    welcome

  end
end

def show_inventory

  puts "Here is our Inventory:
  1) Ale
  2) Blond
  3) Weiss
  4) IPA
  5) Pils

  Make your choice [1-5]"

  choice = gets.chomp.to_i

  if choice == 1
  puts "You have chosen Ale"
  @cart << "Ale"


  elsif choice == 2
    puts "You have chosen Blond"
    @cart << "Blond"


  elsif choice == 3
    puts "You have chosen Weiss"
    @cart << "Weiss"

  elsif choice == 4
    puts "You have chosen IPA"
    @cart << "IPA"

  elsif choice == 5
    puts "You have chosen Pils"
    @cart << "Pils"

  else
    show_inventory

  end

end
welcome

puts @cart

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
    puts @cart

  end

end

order_more










#Print out the age
