puts 'Cleaning database...'
Restaurant.destroy_all if Rails.env == 'development'

puts 'Creating restaurants...'
porridge = { name: 'Porridge', address: 'Wang Li Lane', phone_number: '04123123', category: 'chinese' }
pizza = { name: 'Pizza', address: '56A Shoreditch High St', phone_number: '04124123', category: 'italian' }
sushi = { name: 'Sushi', address: 'Takeshita Street', phone_number: '04124345', category: 'japanese' }
haloumi = { name: 'Haloumi', address: 'Rue du Moulint', phone_number: '041243', category: 'french' }
leeks = { name: 'Leeks', address: 'Passage du Chicon', phone_number: '04125523', category: 'belgian' }

[porridge, pizza, sushi, haloumi, leeks].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
