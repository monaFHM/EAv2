class Genre < ActiveRecord::Base
  has_many :artists


   validates :name, :presence => true
end

