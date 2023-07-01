require 'test_helper'

class Api::V1::ThirdPartyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_third_party_index_url
    assert_response :success
  end

end
