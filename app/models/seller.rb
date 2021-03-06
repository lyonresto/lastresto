class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :offers, dependent: :destroy
  has_many :reservations, through: :offers

  validates :name, presence:true
  validates :address, presence:true
  validates :zip_code, presence:true
  validates :city, presence:true
  validates :phone_number, presence:true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
