class Api::V1::OrdersController < ApplicationController
  def index
    render json: OrderSerializer.all_orders(Order.all)
  end
  def show
    render json: Order.find(params[:id])
  end
end
