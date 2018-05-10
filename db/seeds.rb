# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Owner.destroy_all
Stock.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end


jason_wu = Owner.create({
    name: 'Jason Wu',
    photo_url: 'https://i.imgur.com/kr9NhxJ.jpg?1',
    business_name:'Jason Wu, Inc',
    business_description: 'Curating collections of dresses for first ladies.'
    
})

marianna_hewitt = Owner.create({
    name: 'Marianna Hewitt',
    photo_url: 'https://i.imgur.com/GNbsodM.jpg?1',
    business_name: 'BlogWithMe',
    business_description: 'Curating a collection of nude heels.'
})

alexa_chung = Owner.create({
    name: 'Alexa Chung',
    photo_url: 'https://i.imgur.com/cc9SpS7.jpg?1',
    business_name: 'Alex Chung, Inc.',
    business_description: 'Curating collections of denim for Couture Houses.'
})


#stocks

jasonwu_stock = Stock.create({
supplier_name: 'Amazon',
supplier_address: '123 Silcon Street, Atlanta, GA 30308',
poc_name: 'Supriya Yerramilli',
poc_email: 'sups@amazon.com',
poc_phone: '7407084979',
inventory_category: 'Clothing',
inventory_name: "White A-line sleeveless dresses",
inventory_amount: '20 dresses',
owner_id: jason_wu.id

})

mariannahewitt_stock = Stock.create({
supplier_name: 'Amazon',
supplier_address: '123 Silcon Street, Atlanta, GA 30308',
poc_name: 'Supriya Yerramilli',
poc_email: 'sups@amazon.com',
poc_phone: '7407084979',
inventory_category: 'Shoes',
inventory_name: 'Four-inch nude stilettos',
inventory_amount: '50 pairs',
owner_id: marianna_hewitt.id

})
alexachung = Stock.create({
supplier_name: 'Amazon',
supplier_address: '123 Silcon Street, Atlanta, GA 30308',
poc_name: 'Supriya Yerramilli',
poc_email: 'sups@amazon.com',
poc_phone: '7407084979',
inventory_category: 'Clothing',
inventory_name: 'Cropped flared blue jeans',
inventory_amount: '100 pairs',
owner_id: alexa_chung.id

})