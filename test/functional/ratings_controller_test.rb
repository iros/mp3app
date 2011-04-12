require 'test_helper'

class RatingsControllerTest < ActionController::TestCase
  test "submit rating success" do
    post :create, { :mp3_id => mp3s(:one), :score => 2}
    m = Mp3.find(mp3s(:one).id)
    assert_equal(m.ratings.count, 1, "There should be 1 rating for this track, but there isn't.")
    assert_equal(m.average_rating, 2.0, "The average rating should be 2.0")
  end
  
  test "rating submission fail - mp3 id not provided" do
    post :create, { :score => 2}
    assert_equal "Can't rate a song if I don't have its id.", flash[:notice]
  end
  
  test "rating submission fail - score not provided" do
    post :create, { :mp3_id => 2 }
    assert_equal "Need a score", flash[:notice]
  end
  
  test "rating submission fail - mp3 doesn't exist" do
    post :create, { :mp3_id => 2344, :score => 3 }
    assert_equal "This is not a real track!", flash[:notice]
  end
  
  
end
