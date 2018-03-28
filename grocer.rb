def consolidate_cart(cart)
  # code here
  dens_cart = {}
  cart.each do |list|
    if(dens_cart.keys.include?(list.keys))
      dens_cart[list.keys][:count] +=1
    else
      dens_cart[list.keys] = list.merge(:count=>1)
    end
  end
  puts dens_cart
  dens_cart
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
