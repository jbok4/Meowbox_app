User.create!(first_name: "Sam", last_name: "Sams", email: "sam@rails.com", password: "samsams", password_confirmation: "samsams", admin: true)
User.create!(first_name: "John", last_name: "Johns", email: "john@rails.com", password: "johnjohn", password_confirmation: "johnjohn")
User.create!(first_name: "Tom", last_name: "Toms", email: "tom@rails.com", password: "tomtoms", password_confirmation: "tomtoms")
User.create!(first_name: "Sho", last_name: "ShoSho", email: "sho@rails.com", password: "shosho", password_confirmation: "shosho")

Subscription.create!(plan_id: 1, user_id: 1)
Subscription.create!(plan_id: 2, user_id: 2)
Subscription.create!(plan_id: 3, user_id: 3)

Plan.create!(name: "basic", price: 10, description: "Basic plan. Casual boxes but your kitty will enjoy them.")
Plan.create!(name: "standard", price: 30, description: "Standard plan. Standard boxes and your kitty will be satisfied them.")
Plan.create!(name: "premium", price: 100, description: "Premium plan. Luxuary boxes and your kitty will be one of the most gorgeous kitties in the world!")


Box.create!(title: "Cool Basic", month_year: '2016-08-01'.to_date, plan_id: 1)
Box.create!(title: "Fun Basic", month_year: '2016-09-01'.to_date, plan_id: 1)
Box.create!(title: "Autumn Basic", month_year: '2016-10-01'.to_date, plan_id: 1)

Box.create!(title: "Cool Standard", month_year: '2016-08-01'.to_date, plan_id: 2)
Box.create!(title: "Fun Standard", month_year: '2016-09-01'.to_date, plan_id: 2)
Box.create!(title: "Autumn Standard", month_year: '2016-10-01'.to_date, plan_id: 2)

Box.create!(title: "Cool Premium", month_year: '2016-08-01'.to_date, plan_id: 3)
Box.create!(title: "Fun Premium", month_year: '2016-09-01'.to_date, plan_id: 3)
Box.create!(title: "Autumn Premium", month_year: '2016-10-01'.to_date, plan_id: 3)

BoxItem.create!(box_id: 1, item_id: 1)
BoxItem.create!(box_id: 1, item_id: 3)
BoxItem.create!(box_id: 1, item_id: 5)
BoxItem.create!(box_id: 2, item_id: 2)
BoxItem.create!(box_id: 2, item_id: 4)
BoxItem.create!(box_id: 2, item_id: 6)
BoxItem.create!(box_id: 3, item_id: 7)
BoxItem.create!(box_id: 3, item_id: 9)
BoxItem.create!(box_id: 3, item_id: 11)
BoxItem.create!(box_id: 4, item_id: 8)
BoxItem.create!(box_id: 4, item_id: 9)
BoxItem.create!(box_id: 4, item_id: 10)
BoxItem.create!(box_id: 5, item_id: 13)
BoxItem.create!(box_id: 5, item_id: 15)
BoxItem.create!(box_id: 5, item_id: 17)
BoxItem.create!(box_id: 6, item_id: 12)
BoxItem.create!(box_id: 6, item_id: 14)
BoxItem.create!(box_id: 6, item_id: 16)
BoxItem.create!(box_id: 7, item_id: 1)
BoxItem.create!(box_id: 7, item_id: 3)
BoxItem.create!(box_id: 7, item_id: 5)
BoxItem.create!(box_id: 8, item_id: 2)
BoxItem.create!(box_id: 8, item_id: 4)
BoxItem.create!(box_id: 8, item_id: 6)
BoxItem.create!(box_id: 9, item_id: 30)
BoxItem.create!(box_id: 9, item_id: 29)
BoxItem.create!(box_id: 9, item_id: 27)

Item.create!(item_name: "Cat Snack", description: "Cat Snack by Dr. Becker's Bites", image: "http://cdn6.bigcommerce.com/s-0seuy/products/77/images/435/Cat_new__63047.1445007600.100.100.jpg?c=2", size: "1oz", url: "http://www.drbeckersbites.com/search.php?search_query=cat%20snacl")
30.times do
  item_name = Faker::Commerce.product_name
  description = Faker::Lorem.sentence
  image = Faker::Avatar.image("cat_snack_and_toy", "50x50", "jpg")
  size = Faker::Number.between(1, 10)
  url = Faker::Internet.url
  Item.create!(item_name: item_name,
               description: description,
               image: image,
               size: "#{size} oz",
               url: url)
end
