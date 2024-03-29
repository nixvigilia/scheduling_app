class User < ApplicationRecord
# name_of_person gem
has_person_name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meetings, dependent: :destroy
  has_many :comments, dependent: :destroy
  
end
