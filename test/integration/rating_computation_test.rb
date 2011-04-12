require 'test_helper'

class RatingComputationTest < ActiveSupport::TestCase
  
  test "submit 2 ratings, verify score" do
    mp3 = Mp3.create!({
      :title => 'test_track',
      :artist => 'test_artist',
      :url => 'http://myurl.com/mysong.mp3',
      :length => 20
    })
    r  = Rating.create!({ :mp3 => mp3, :score => 1 })

    mp3 = Mp3.where(:id => mp3.id).first # reload mp3
    r2 = Rating.create!({ :mp3 => mp3, :score => 3 })

    assert_equal(mp3.average_rating, 2.0)
  end

end