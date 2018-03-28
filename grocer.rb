def consolidate_cart(cart)
  # code here
  dens_cart = {}
  cart.each do |list|
    if(dens_cart.keys.include?(list.key))
      dens_cart[list.key][:count] +=1
    else
      dens_cart[list.key] = list.merge(:count=>1)
    end

  puts


end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
