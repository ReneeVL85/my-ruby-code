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

when choice == 2
   add_to_cart

when choice == 3
  show_cart

when choice == 4

when choice == 5
