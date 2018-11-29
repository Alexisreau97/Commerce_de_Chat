class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item

def total
  #quantity = 1
  item.price * quantity
  
end



end
