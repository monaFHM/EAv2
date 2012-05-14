class Description < ActiveRecord::Base
  belongs_to :artist
  belongs_to :country

  validates :text, :country, :presence => true
  #validates :country_id, :uniqueness => true
  validates :country_id, :uniqueness => { :scope => :artist_id,
    :message => "Sprache ist bereits vorhanden!" }
end

