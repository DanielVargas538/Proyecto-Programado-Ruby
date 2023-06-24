class ManageOrdersController < ApplicationController
  before_action :set_manage_order, only: %i[ show edit update destroy ]

  def index
    @manage_orders = ManageOrder.all

    @q = ManageOrder.ransack(params[:q])
    @manage_orders = @q.result(distinct: true)
  end
  

end
