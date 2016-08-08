puts "Destroying all flats first..."
Flat.destroy_all

puts "Creating a flat for Paris"
Flat.create address: '16 villa gaudelet', zip_code: 75011, city: 'Paris', country: 'FR'

puts "Creating a flat for London"
Flat.create address: '14-22 Elder St', zip_code: 'E1 6BT', city: 'London', country: 'GB'
