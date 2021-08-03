require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get status" do
    get reservations_status_url
    assert_response :success
  end
end
