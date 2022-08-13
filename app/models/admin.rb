class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

 #field comment added 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :employees, class_name: "Admin",foreign_key: "manager_id"

  belongs_to :manager, class_name: "Admin", optional: true
  has_one :restaurant, class_name: "Restaurant", foreign_key: "manager_id"
  belongs_to :restaurant, class_name:"Restaurant", foreign_key:"restaurants_id"
end
