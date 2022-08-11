class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

 #field comment added 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :subordinates, class_name: "Admin",foreign_key: "manager_id"

  belongs_to :manager, class_name: "Admin", optional: true

end
