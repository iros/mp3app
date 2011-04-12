class Rating < ActiveRecord::Base
  
  belongs_to :mp3

  validates :mp3,    :existence => true
  validates_numericality_of :score, :only_integer => true, :message => "must be a whole number."
  validates_inclusion_of :score, :in => 1..5, :message => "must be between 1 and 5."
  
  after_save do |rating|
    rating.mp3.update_rating
    rating.mp3.save!
  end

end
