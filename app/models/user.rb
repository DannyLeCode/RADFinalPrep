class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :products
  validates :email, presence: true, length: { maximum: 100 },format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},uniqueness: { case_sensitive: false }
  before_save { self.email = email.downcase }
end
