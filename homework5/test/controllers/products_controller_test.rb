require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title:       'Rails Master',
      description: 'Master development in rails!',
      image_url:   'lorem.jpg',
      price:       69.95
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  # ...

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  # ...

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end


  test "product has following title" do
      get :show, id: @product
      assert_response :success

      assert_select '#main .products .list_description'
      assert_select 'dt', 'Rails Test Prescriptions'
  end

  test "product edit page validation" do
      get :edit, id: @product
      assert_response :success

      # At least one form element
      assert_select "form"

      # Form element includes four six fields
      assert_select "form input", 6

      assert_select "form textarea", 1

      # Page title is "Depot" and there is only one title element
      assert_select "title", {:count => 1, :text => "Depot"}, "Wrong title or more than one title element"

      # Page contains no forms
#      assert_select "form", false, "This page must contain no forms"

      # Test the content and style
#      assert_select "body div.header ul.menu"

      # Use substitution values
#      assert_select "ol>li#?", /item-\d+/

      # All input fields in the form have a name
#      assert_select "form input" do
#      assert_select "[id=?]", /.+/  # Not empty

#  end

  end


  test "product show page should not contain form" do
      get :show, id: @product
      assert_response :success

      # Page contains no forms
      assert_select "form", false, "This page must contain no forms"

  end



end