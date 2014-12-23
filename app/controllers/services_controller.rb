class ServicesController < ApplicationController

	before_action :set_service, only: [:show, :edit, :update, :destroy]

	def index
		@services = Service.all
	end

	def new
		@service = Service.new
	end
	def show
	end

	def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Registro atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

	def create
		@service = Service.new(service_params)

		respond_to do |format|
	      if @service.save
	        format.html { redirect_to @service, notice: 'Registro criado com sucesso' }
	        format.json { render :show, status: :created, location: @service }
	      else
	        format.html { render :new }
	        format.json { render json: @service.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@service.destroy
  		respond_to do |format|
  			format.html {redirect_to services_url, notice: 'Registro excluido com sucesso'}
  		end
	end
	private
	
	def set_service
		@service = Service.find(params[:id])
	end

	def service_params
		params.require(:service).permit(:descricao, :valor, {:parts_ids => []})
	end
end
