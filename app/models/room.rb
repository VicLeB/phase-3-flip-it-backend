class Room < ActiveRecord::Base
    has_many :projects
    has_many :tools, through: :projects
    has_many :parts, through: :projects

    belongs_to :house

end