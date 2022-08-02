class House < ActiveRecord::Base
  belongs_to :owner
  has_one :address
  has_many :rooms
  has_many :projects, through: :rooms
end
