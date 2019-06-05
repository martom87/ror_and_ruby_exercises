change_something = :eur
change_to = :pln
my_key = "#{change_something}_#{change_to}".to_sym
my_hash = Hash[:eur_pln => 4, :eur_usd => 1]

puts my_hash[my_key]
puts my_hash[:eur_pln]
puts my_key