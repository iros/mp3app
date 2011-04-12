require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "perform succesful search" do
    get :result, { :name => 'two' }
    assert_equal(assigns(:mp3s).count, 2)
  end

end
