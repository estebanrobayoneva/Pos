require 'test_helper'

class PurchaseReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_receipt = purchase_receipts(:one)
  end

  test "should get index" do
    get purchase_receipts_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_receipt_url
    assert_response :success
  end

  test "should create purchase_receipt" do
    assert_difference('PurchaseReceipt.count') do
      post purchase_receipts_url, params: { purchase_receipt: { cantidad: @purchase_receipt.cantidad, costu_unitario: @purchase_receipt.costu_unitario, fecha: @purchase_receipt.fecha, numero_factura: @purchase_receipt.numero_factura, valor_total: @purchase_receipt.valor_total } }
    end

    assert_redirected_to purchase_receipt_url(PurchaseReceipt.last)
  end

  test "should show purchase_receipt" do
    get purchase_receipt_url(@purchase_receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_receipt_url(@purchase_receipt)
    assert_response :success
  end

  test "should update purchase_receipt" do
    patch purchase_receipt_url(@purchase_receipt), params: { purchase_receipt: { cantidad: @purchase_receipt.cantidad, costu_unitario: @purchase_receipt.costu_unitario, fecha: @purchase_receipt.fecha, numero_factura: @purchase_receipt.numero_factura, valor_total: @purchase_receipt.valor_total } }
    assert_redirected_to purchase_receipt_url(@purchase_receipt)
  end

  test "should destroy purchase_receipt" do
    assert_difference('PurchaseReceipt.count', -1) do
      delete purchase_receipt_url(@purchase_receipt)
    end

    assert_redirected_to purchase_receipts_url
  end
end
