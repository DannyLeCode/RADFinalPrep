# RubyTestingPrep

rails new finalproject

Update Gemfile
bundle update spring
bundle install --without production

Remove /config/boot.rb:4:in

rails generate controller Main home about login registration products checkout

ls -l app/assets/stylesheets/
touch app/assets/stylesheets/custom.scss 

rails generate model User username:string email:string

rails generate model Product name:string price:float itemdescription:string asseturl:string

rails generate migration CreateCustomersProducts

rails generate model Cart 

t.belongs_to :producr, null: false
t.belongs_to :user, null: false

rails generate migration add_password_digest_to_user
add_column :users, :password_digest, :string