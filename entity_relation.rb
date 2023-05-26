class Shop < ActiveRecord::Base
  has_many :products
end

class Product < ActiveRecord::Base
  belongs_to :shop
  has_and_belongs_to_many :categories
  has_many :prices
end

class Category < ActiveRecord::Base
  has_and_belongs_to_many :products
end

class Price < ActiveRecord::Base
  belongs_to :product
end
