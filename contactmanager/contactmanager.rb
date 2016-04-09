contactlist = []

contactlist << {name: "Billy the Clown", phone: "+31632165987", email:"billy@thehappyclown.com" }
contactlist << {name: "Benji the Dog", phone: "+31612345789", email: "benji@thedog.com"}
contactlist << {name: "Sally the Cat", phone: "+31698765321", email: "sally@thecat.com"}

def index(contactlist)
  contactlist.each_with_index do |contact, i|
    puts "#{i+1} #{contact[:name]}"
  end
end

def show(contact)
   puts "#{contact[:name]}"
   puts "phone: #{contact[:phone]}"
   puts "email: #{contact[:email]}"
end

def ask(prompt)
   print prompt
   gets.chomp
end

def new_contact
  contact = {}

  puts
  puts "Please enter contact information:"
  contact [:name] = ask "Name?"
  contact [:phone] = ask "Phone number?"
  contact [:email] = ask "Email?"

  contact

end

def action_show (contactlist, i)
  contact = contacts [i-1]

  puts
  show(contact)
  puts
end


def use(contactlist)
    loop do
    index(contactlist)
    puts
    response = ask "Who would you like to see?
    Please press the number (to add new contact pres n, to exit press e)"
    puts
    break if
      response == "e"

    if
      response == "n"
      new_contact

    else
      action_show(contactlist, response.to_i)

    end
  end
end


use(contactlist)
puts
puts "Goodbye!"
