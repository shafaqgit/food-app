class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

 #field comment added 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
