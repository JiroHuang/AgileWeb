class Product < ActiveRecord::Base
	# 检测字段存在且不为空
	validates_presence_of :title, :description, :image_url
	validates_numericality_of :price
	validate :price_must_be_at_least_a_cent

	# 希望在某个类的基础上条用，使用类方法
	# 方法前面加上“self”，就变成了类方法
	def self.find_products_for_sale
		# Find is no longer supported with the :all, :order, and many other options.
		# Product.find(:all, :order => "title") 
		# find方法返回的是一个数组,find方法不同的是，where方法返回的结果不是数组而是ActiveRelation，
		# 这意味着我们可以基于当前的查询结果继续设置条件进行查询。
		# 如果使用find先查询再按title排序可以使用
    	# @products = Product.find(:all)       
   		# @products.sort! { |a,b| a.title.downcase < => b.title.downcase }    
		Product.order("title asc").all
	end

	protected
	def price_must_be_at_least_a_cent
		errors.add(:price, 'should be at least 0.01') if price.nil? || price < 0.01
	end
end
