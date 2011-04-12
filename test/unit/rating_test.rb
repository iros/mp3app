require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  test "basic create rating" do
    r = Rating.create!({
      :mp3 => mp3s(:one),
      :score => 3
    })
  end
  
  test "create fail - no mp3" do
    assert_raise ActiveRecord::RecordInvalid do
      r = Rating.create!({
        :mp3_id => 1225,
        :score => 3
      })
    end
  end
  
  test "create fail - score out of range" do
    assert_raise ActiveRecord::RecordInvalid do
      r = Rating.create!({
        :mp3 => mp3s(:one),
        :score => 30
      })
    end
  end
  
  test "create fail - score not int" do
    assert_raise ActiveRecord::RecordInvalid do
      r = Rating.create!({
        :mp3 => mp3s(:one),
        :score => 3.2
      })
    end
  end

end
