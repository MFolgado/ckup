class OrderServicesController < ApplicationController

	before_action :set_order_service, only: [:show, :edit, :update, :destroy]

	def index
		@order_services = OrderService.all

	end

	def new
		@order_service = OrderService.new


	end

	def create
	
		@order_service = OrderService.new(order_service_params)
		@p_service = @order_service.parts
				
		respond_to do |format|
	      if @order_service.save
	        format.html { redirect_to @order_service, notice: 'Registro criado com sucesso' }
	        format.json { render :show, status: :created, location: @order_service }
	      else
	        format.html { render :new }
	        format.json { render json: @order_service.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def update
	  respond_to do |format|
      if @order_service.update(order_service_params)
        format.html { redirect_to @order_service, notice: 'Registro atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @order_service }
      else
        format.html { render :edit }
        format.json { render json: @order_service.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
		@order_service.destroy
  		respond_to do |format|
  			format.html {redirect_to order_services_url, notice: 'Registro excluido com sucesso'}
  		end
	end

	private

	def set_order_service
		@order_service = OrderService.find(params[:id])

	end

	def order_service_params
		params.require(:order_service).permit(:client_id, :date, {:service_ids => []}, {:part_ids => []})
	end
end
