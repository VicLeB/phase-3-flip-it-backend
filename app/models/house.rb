class House < ActiveRecord::Base
  has_one :address
  has_many :rooms
  has_many :projects, through: :rooms
end
