class Star < ActiveRecord::Base
has_many :chores
has_many :kids, through: :chores

end
