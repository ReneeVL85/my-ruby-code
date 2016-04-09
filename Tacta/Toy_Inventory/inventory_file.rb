require "json"

def read_toyinventory
   json = File.read( "toyinventory.json" )
   array = JSON.parse( json, { :symbolize_names => true } )
end

def write_toyinventory( toyinventory )
   File.open( "contacts.json", "w" ) do |f|
      json = JSON.pretty_generate( toyinventory )
      f.write( json  )
   end
end
