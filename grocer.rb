def consolidate_cart(cart)
  # code here
  dens_cart = {}
  cart.each do |list|
    list.each do |key,data|
      if(dens_cart.keys.include?(key))
        dens_cart[key][:count] +=1
      else
        dens_cart[key] = data.merge(:count=>1)
      end #if
    end #list
  end#cart
  dens_cart
end

def apply_coupons(cart, coupons)
  # code here
  
  coupons.each do |data|
    puts cart[data[:item]]
  end #coupons

  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

items = 	[
		{"AVOCADO" => {:price => 3.00, :clearance => true}},
		{"KALE" => {:price => 3.00, :clearance => false}},
		{"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
		{"ALMONDS" => {:price => 9.00, :clearance => false}},
		{"TEMPEH" => {:price => 3.00, :clearance => true}},
		{"CHEESE" => {:price => 6.50, :clearance => false}},
		{"BEER" => {:price => 13.00, :clearance => false}},
    {"AVOCADO" => {:price => 3.00, :clearance => true}},
		{"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
    {"TEMPEH" => {:price => 3.00, :clearance => true}},
		{"BEETS" => {:price => 2.50, :clearance => false}}
	]
coupons=
  	[
  		{:item => "AVOCADO", :num => 2, :cost => 5.00},
  		{:item => "BEER", :num => 2, :cost => 20.00},
  		{:item => "CHEESE", :num => 3, :cost => 15.00}
  	]

cart = consolidate_cart(items)
puts apply_coupons(cart,coupons)
