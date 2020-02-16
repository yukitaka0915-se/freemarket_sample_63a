class Address < ApplicationRecord
    # associations
    belongs_to    :area
    belongs_to    :user

    has_many      :shippings
  
end