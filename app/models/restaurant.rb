class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :city

  has_many   :reviews,
             :dependent => :destroy

  has_many   :kind_of_foods,
             :foreign_key => "restaurants_id",
             :dependent => :destroy

  # Indirect associations

  has_one    :photos,
             :through => :reviews,
             :source => :review

  has_one    :neighborhood,
             :through => :restaurants,
             :source => :city

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
