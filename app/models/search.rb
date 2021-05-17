class Search < ApplicationRecord

  with_options presence: true do
    validates :maker
    validates :vehicle_type
    validates :grade
    validates :model
    validates :model_year
    validates :mileage
    validates :market_price
  end
  
end
