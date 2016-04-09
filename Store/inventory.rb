require "./product.rb"

class Inventory
  def initialize
    @products = []
    @products <<  Product.new("Ale", 2.50 ,20)
    @products <<  Product.new("Blond",3.50 ,25)
    @products <<  Product.new("IPA",2.75 ,35)
    @products <<  Product.new("Pils",3.50 ,30)
  end


  def get_product product_name
    @products.each do |product|
      if product.name == product_name
        return product
      end
    end
    puts "We dont have it"
  end


  def list
    @products.each do |product|
      puts "--#{product.name}"
      puts "--We have #{product.amount} in stock"
      puts "--The price of the beer is #{product.price} EUR"
    end
  end
end
