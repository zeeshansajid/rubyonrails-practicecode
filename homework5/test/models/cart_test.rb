require 'test_helper'

class CartTest < ActiveSupport::TestCase
  fixtures :products

  test "it should create a new line item while adding a new product" do
    cart = Cart.create
    cart.add_product(products(:ruby).id, products(:ruby).price).save!

    assert_equal cart.line_items.count, 1
    assert_equal cart.line_items[0].quantity, 1
    assert_equal cart.total_price, products(:ruby).price

  end

 test "it should create two line items while adding two different products" do
    cart = Cart.create
    cart.add_product(products(:ruby).id, products(:ruby).price).save!
    assert_equal cart.line_items.size, 1

    cart.add_product(products(:coffee).id, products(:coffee).price).save!
    assert_equal cart.line_items.size, 2

    assert_equal cart.line_items[0].quantity, 1
    assert_equal cart.line_items[1].quantity, 1

    assert_equal cart.total_price, products(:ruby).price + products(:coffee).price
  end

  test "it should update an existing line item while adding existing product" do
    cart = Cart.create

    cart.add_product(products(:coffee).id, products(:coffee).price).save!
    assert_equal cart.line_items.size, 1

    cart.add_product(products(:coffee).id, products(:coffee).price).save!
    assert_equal cart.line_items.size, 1

    assert_equal cart.line_items[0].quantity, 2
    assert_equal cart.total_price, products(:coffee).price * 2
  end

test "it should add a line item as well as update an existing line item" do
    cart = Cart.create

    cart.add_product(products(:coffee).id, products(:coffee).price).save!
    assert_equal cart.line_items.size, 1

    cart.add_product(products(:coffee).id, products(:coffee).price).save!
    assert_equal cart.line_items.size, 1

    cart.add_product(products(:ruby).id, products(:ruby).price).save!
    assert_equal cart.line_items.size, 2

    assert_equal cart.line_items[0].quantity, 2
    assert_equal cart.line_items[1].quantity, 1
    assert_equal cart.total_price, products(:coffee).price * 2 + products(:ruby).price
  end


end
