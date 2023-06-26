class ManageOrdersController < ApplicationController
  before_action :set_manage_order, only: %i[ show edit update destroy ]
  before_action :set_clients

  def index

    if params[:q].present?
      @q = ManageOrder.ransack(params[:q])
      
      @q.client_id_eq = params[:q][:client_id] if params[:q][:client_id].present?
      @q.state_eq = params[:q][:state] if params[:q][:state].present?
      
      start_date = params[:q][:date_gteq].to_date if params[:q][:date_gteq].present?
      end_date = params[:q][:end_date].to_date if params[:q][:end_date].present?

      if start_date && end_date
        @q.date_between(start_date.beginning_of_day..end_date.end_of_day)
      elsif start_date
        @q.date_gteq(start_date.beginning_of_day)
      elsif end_date
        @q.date_lteq(end_date.end_of_day)
      end

    else
      @q = ManageOrder.ransack
    end
    @manage_orders = @q.result(distinct: true)

  end
  
  
  
  def show; end

  def new
    @manage_order = ManageOrder.new
  end

  def edit; end

  def create
    @manage_order = ManageOrder.new(manage_order_params)

    if @manage_order.save
      redirect_to manage_order_url(@manage_order), notice: t('application.create_message', model: t('activerecord.modules.manage_order.one')) 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @manage_order.update(manage_order_params)
        redirect_to manage_order_url(@manage_order), notice: t('application.update_message', model: t('activerecord.modules.manage_order.one')) 
      else
        render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @manage_order.destroy
    redirect_to manage_orders_url, notice: t('application.delete_message', model: t('activerecord.modules.manage_order.one')) 
  end

  private
    def set_manage_order
      @manage_order = ManageOrder.find(params[:id])
    end

    def manage_order_params
      params.require(:manage_order).permit(:date, :state, :client_id, :dish_id)
    end

    def set_clients
      @clients= ManageClient.all.map {|client| ["#{client.first_name} #{client.last_name}", client.id]}
    end

end
