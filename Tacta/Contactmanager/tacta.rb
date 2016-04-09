require "json"
require "./contacts_file"


def index(contacts)
  contacts.each_with_index do |contact, i|
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

def action_show (contacts, i)
  contact = contacts [i-1]

  puts
  show(contact)
  puts
end

def action_delete(contacts)
   puts
   response = ask "Delete which contact? "

   i = response.to_i

   puts
   puts "Contact for #{contacts[i-1][:name]} deleted."

   contacts.delete_at( i-1 )

   puts
end

def action_error
   puts
   puts "Sorry, I don't recognize that command."
   puts
end


loop do
  contacts = read_contacts
  index(contacts)
  puts
  response = ask "Who would you like to see?
  Please press the number (to add new contact pres n,to delete press d, to exit press e)"
  puts
  break if
    response == "e"

  if
    response == "n"
    new_contact

  elsif
    response == "d"
    action_delete(contacts)

  elsif
    response =~ /[0-9]+/
    action_show(contacts, response.to_i)

  else
    action_error

  end
end


puts
puts "Goodbye!"
