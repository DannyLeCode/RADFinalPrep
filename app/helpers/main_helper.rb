module MainHelper
   def total_cost(user_id)
    @cart = Cart.where(:user_id => user_id)
    @sum = 0
    @cart.each do |cartitem| 
      @product = Product.find_by id: cartitem.product_id
      @sum += (@product.price * cartitem.quantity)
    end
    return @sum.round(2)
  end  
end
