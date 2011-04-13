require 'validates_url_format_of'
class Mp3 < ActiveRecord::Base  
  
  has_many :ratings
  
  validates_url_format_of :url, :allow_nil => false
  
  validates_presence_of :title
  validates_presence_of :url
  validates_presence_of :length
  validates_presence_of :artist
  validates_numericality_of :length
  
  def update_rating
    self.update_attributes({:average_rating => self.ratings.collect{|r| r.score}.sum / self.ratings.count})
  end
  
  def to_extinf
    return %[#EXTINF:#{self.length},#{self.title}
#{self.url}]
  end
  
end
