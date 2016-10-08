require 'test_helper'

class VouchersControllerTest < ActionController::TestCase
  setup do
    @voucher = vouchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vouchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voucher" do
    assert_difference('Voucher.count') do
      post :create, voucher: { employee_id: @voucher.employee_id, feemision: @voucher.feemision, igv: @voucher.igv, local_id: @voucher.local_id, mtoTotal: @voucher.mtoTotal, room_id: @voucher.room_id, subtotal: @voucher.subtotal, user_id: @voucher.user_id }
    end

    assert_redirected_to voucher_path(assigns(:voucher))
  end

  test "should show voucher" do
    get :show, id: @voucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voucher
    assert_response :success
  end

  test "should update voucher" do
    patch :update, id: @voucher, voucher: { employee_id: @voucher.employee_id, feemision: @voucher.feemision, igv: @voucher.igv, local_id: @voucher.local_id, mtoTotal: @voucher.mtoTotal, room_id: @voucher.room_id, subtotal: @voucher.subtotal, user_id: @voucher.user_id }
    assert_redirected_to voucher_path(assigns(:voucher))
  end

  test "should destroy voucher" do
    assert_difference('Voucher.count', -1) do
      delete :destroy, id: @voucher
    end

    assert_redirected_to vouchers_path
  end
end
