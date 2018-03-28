def consolidate_cart(cart)
  # code here
  dens_cart = {}
  cart.each do |list|
    dens_cart[list.key] = list.merge(:count=>1)

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
