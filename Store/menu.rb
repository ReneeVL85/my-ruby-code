

class Menu
  def initialize

    @menu_options = "What would you like to do?
    1) View the Beerstore inventory
    2) Order Beer
    3) View your Beercart
    4) Remove from your Beercart
    5) Pay your Beer
    6) Nothing"
  end

  def menu_options
    p @menu_options
    choice = gets.chomp.to_i

    if choice == 1
      what_is_in_store

    elsif choice == 6
      puts "Goodbye!"
    else
     menu_options

    end
  end
end
