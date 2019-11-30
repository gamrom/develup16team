class Room < ApplicationRecord
  belongs_to :user
  belongs_to :room_category
    
  has_many :applies, dependent: :destroy
  
    
end
