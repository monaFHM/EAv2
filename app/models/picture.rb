class Picture < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :avatar #,:styles => { :medium => "300x300>", :thumb => "100x100>" }, :url  => "/assets/products/:id/:style/:basename.:extension"
    #,:processors => [:thumbnail, :time_stamper],
     #:date_format => "%Y%m%d%H%M%S"

 validates :name, :presence => true
 #validates :url, uniqueness => true
end

