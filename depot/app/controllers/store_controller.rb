class StoreController < ApplicationController
# 付钱和买主交互的控制器
# 取出产品列表
  def index
  	@products = Product.find_products_for_sale
  end
end
