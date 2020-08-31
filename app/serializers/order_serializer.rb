class OrderSerializer
  # attributes :id, :order_id
  def self.all_orders(orders)
    {
      data: orders.map do |order|
        {
          type: 'order',
          id: order.id,
          attributes: {
            order: order.order_number
          },
          relationships: {
            items: order.items.map do |item|
              {
                data: {
                  type: 'item',
                  id: item.id,
                  name: item.name
                }
              }
            end
          }
        }
      end
    }
  end
end
