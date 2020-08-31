class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :order_number
  has_many :items # now you will see the relationships in the response

  attribute :item_count do |object| #customer attribute see fastjson api docs 
    object.items.size
  end

end
