class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  has_many :rooms, dependent: :destroy
  has_many :applies, dependent: :destroy
  MALE = 0
  FEMALE = 1
  # enum sex: ["남","여"]
end
