require 'test_helper'

class DetailPurchaseReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_purchase_receipt = detail_purchase_receipts(:one)
  end

  test "should get index" do
    get detail_purchase_receipts_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_purchase_receipt_url
    assert_response :success
  end

  test "should create detail_purchase_receipt" do
    assert_difference('DetailPurchaseReceipt.count') do
      post detail_purchase_receipts_url, params: { detail_purchase_receipt: { cantidad: @detail_purchase_receipt.cantidad, valor_total: @detail_purchase_receipt.valor_total } }
    end

    assert_redirected_to detail_purchase_receipt_url(DetailPurchaseReceipt.last)
  end

  test "should show detail_purchase_receipt" do
    get detail_purchase_receipt_url(@detail_purchase_receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_purchase_receipt_url(@detail_purchase_receipt)
    assert_response :success
  end

  test "should update detail_purchase_receipt" do
    patch detail_purchase_receipt_url(@detail_purchase_receipt), params: { detail_purchase_receipt: { cantidad: @detail_purchase_receipt.cantidad, valor_total: @detail_purchase_receipt.valor_total } }
    assert_redirected_to detail_purchase_receipt_url(@detail_purchase_receipt)
  end

  test "should destroy detail_purchase_receipt" do
    assert_difference('DetailPurchaseReceipt.count', -1) do
      delete detail_purchase_receipt_url(@detail_purchase_receipt)
    end

    assert_redirected_to detail_purchase_receipts_url
  end
end
