class StoreController < ApplicationController
# 付钱和买主交互的控制器
# 取出产品列表
  def index
  	@products = Product.find_products_for_sale
  end

  def add_to_cart
  	@cart = find_cart
  	product = Product.find(params[:id])
  	@cart.add_product(product)
  end

  private
  def find_cart
  	# unless session[:cart]
  	# 	session[:crat] = Cart.new
  	# end
  	# session[:cart]
  	session[:cart] ||= Cart.new
  end

end
