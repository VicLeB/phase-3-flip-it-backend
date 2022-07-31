class Project < ActiveRecord::Base
    has_many :tools
    has_many :parts
    belongs_to :room
end