Product.destroy_all
ActiveRecord::Base.connection.execute("DELETE from products")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'products'")
User.destroy_all
ActiveRecord::Base.connection.execute("DELETE from users")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")

Product.new
i1 = Product.new(name: "Product1", price: 8.99, itemdescription: "Description1", asseturl: "1.jpg")  
i2 = Product.new(name: "Product2", price: 18.99, itemdescription: "Description2", asseturl: "2.jpg")  
i3 = Product.new(name: "Product3", price: 28.99, itemdescription: "Description3", asseturl: "3.jpg")  
i4 = Product.new(name: "Product4", price: 38.99, itemdescription: "Description4", asseturl: "4.jpg")  
i5 = Product.new(name: "Product5", price: 48.99, itemdescription: "Description5", asseturl: "5.jpg")  

i1.save 
i2.save
i3.save
i4.save
i5.save

User.new
u1 = User.new(username: "Username1", email: "1@test.com", password: "Pane1234", password_confirmation: "Pane1234")
u2 = User.new(username: "Username1", email: "2@gmail.com", password: "Rails2021", password_confirmation: "Rails2021")
u1.save
u2.save