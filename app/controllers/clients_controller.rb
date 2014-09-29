class ClientsController < ApplicationController

	before_action :set_client, only: [:show, :edit, :update, :destroy]


	def index
		@clients = Client.all
		
	end
		
	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)

		respond_to do |format|
	      if @client.save
	        format.html { redirect_to @client, notice: 'Registro criado com sucesso' }
	        format.json { render :show, status: :created, location: @client }
	      else
	        format.html { render :new }
	        format.json { render json: @client.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Registro atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@client.destroy
  	respond_to do |format|
  		format.html {redirect_to clients_url, notice: 'Registro excluido com sucesso'}
  	end
  end

	
private
	
	def set_client
		@client = Client.find(params[:id])
	end

	def client_params
		params.require(:client).permit(:nome, :endereco, :bairro, :cidade, :uf, :cep, :email, :tel)
	end

end
