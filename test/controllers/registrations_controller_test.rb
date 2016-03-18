require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { address1: @registration.address1, address2: @registration.address2, city: @registration.city, email: @registration.email, first_name: @registration.first_name, last_name: @registration.last_name, phone_number: @registration.phone_number, plus_one_number: @registration.plus_one_number, state: @registration.state }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { address1: @registration.address1, address2: @registration.address2, city: @registration.city, email: @registration.email, first_name: @registration.first_name, last_name: @registration.last_name, phone_number: @registration.phone_number, plus_one_number: @registration.plus_one_number, state: @registration.state }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
