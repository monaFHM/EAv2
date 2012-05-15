class Artist < ActiveRecord::Base

  has_many :descriptions
  has_many :pictures
  belongs_to :genre


 validates :name, :presence => true
 validates :name, :uniqueness => true
 validates :founded_in, :numericality => { :greater_than => 1750 }


  def getDescriptionText()
    localeID = Country.where(:name => I18n.locale.to_s.upcase!).first
    puts "HALLO LOCALE : " + I18n.locale.to_s.upcase!
    puts localeID.id
    description = self.descriptions.where(:country_id => localeID.id).first
    if description.nil?
      return ""
    end
    description.text
  end

  def getDescriptionCountry()
    localeID = Country.where(:name => I18n.locale.to_s.upcase!).first
    if localeID.nil?
      return ""
    end
    description = self.descriptions.where(:country_id => localeID.id).first
    if description.nil?
      return ""
    end
    description.home_country
  end


end

