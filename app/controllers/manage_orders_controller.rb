class ManageOrdersController < ApplicationController
  before_action :set_manage_order, only: %i[ show edit update destroy ]

  def index
    @orders = Order.all
  end

end
