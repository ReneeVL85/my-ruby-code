require "./inventory"
require "./shoppingcart"

class Shop
  def initialize
    @inventory = Inventory.new
  end

  # def initialize
  #   @shoppingcart = Shoppingcart.new
  # end

  def what_is_in_store
    @inventory.list
  end

  def menu_options
    puts "Welcom to the Dutch Beerstore!

    What would you like to do?

    1) View the Beerstore inventory
    2) Order Beer
    3) View your Beercart
    4) Remove from your Beercart
    5) Pay your Beer
    6) Nothing"

    choice = gets.chomp.to_i

    if choice == 1
      what_is_in_store
      menu_options
    elsif choice == 2
      # puts "Please Select your beer by typing in the name"
      # name = gets.chomp
      # result = @inventory.get_product name
      # @shoppingcart.add_to_cart(product)
      # p @shoppingcart
      order_more
    elsif choice == 6
      puts "Goodbye!"
    else
     menu_options

    end
  end

  def order_more
    puts "Would you like to order more?

    1) Yes
    2) No
    3) View Shopping cart
    "

    order = gets.chomp.to_i

    if order == 1
      menu_options

    elsif order == 2
      puts "Thank you for your order please proceed to checkout"

    else order == 3
      show_cart

    end
  end

end



  #def shop_for_item
    #puts: "Select an Item to buy by product name"
    #name = gets.chomp
    #result =@inventory.get_product(name)
    #p result
  #end
