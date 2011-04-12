require 'test_helper'

class Mp3Test < ActiveSupport::TestCase
  test "create mp3 - basic scenario" do
    mp3 = Mp3.create!({
      :title => 'test_track',
      :artist => 'test_artist',
      :url => 'http://myurl.com/mysong.mp3',
      :length => 20
    })
    assert_not_equal(Mp3.where(:id => mp3.id), nil, "Can't find Mp3!")
  end

  test "create mp3 - fail - title missing" do
    assert_raise ActiveRecord::RecordInvalid do
      mp3 = Mp3.create!({
        :artist => 'test_artist',
        :url => 'http://myurl.com/mysong.mp3',
        :length => 20
      })
    end
  end
  
  test "create mp3 - fail - url missing" do
    assert_raise ActiveRecord::RecordInvalid do
      mp3 = Mp3.create!({
        :artist => 'test_artist',
        :title => 'test_track',
        :length => 20
      })
    end
  end
  
  test "create mp3 - fail - length missing" do
    assert_raise ActiveRecord::RecordInvalid do
      mp3 = Mp3.create!({
        :artist => 'test_artist',
        :title => 'test_track',
        :url => 'http://myurl.com/mysong.mp3'
      })
    end
  end
  
  test "create mp3 - fail - artist missing" do
    assert_raise ActiveRecord::RecordInvalid do
      mp3 = Mp3.create!({
        :length => 20,
        :title => 'test_track',
        :url => 'http://myurl.com/mysong.mp3'
      })
    end
  end
  
  test "create mp3 - fail - url not of the correct format" do
    assert_raise ActiveRecord::RecordInvalid do
      mp3 = Mp3.create!({
        :length => 20,
        :artist => 'test_artist',
        :title => 'test_track',
        :url => 'test'
      })
    end
  end
  
  test "EXTINF format generation" do
    mp3 = Mp3.create!({
      :length => 20,
      :artist => 'test_artist',
      :title => 'test_track',
      :url => 'http://myurl.com/mysong.mp3'
    })
    assert_equal(mp3.to_extinf, %[#EXTINF:20,test_track
http://myurl.com/mysong.mp3])
  end
end
