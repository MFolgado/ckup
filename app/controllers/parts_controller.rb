class PartsController < ApplicationController

	before_action :set_part, only: [:show, :edit, :update, :destroy]

	def index
		@parts = Part.all
	end

	def new
		@part = Part.new
	end

	def create 
		@part = Part.new(part_params)

		respond_to do |format|
	      if @part.save
	        format.html { redirect_to @part, notice: 'Registro criado com sucesso' }
	        format.json { render :show, status: :created, location: @part }
	      else
	        format.html { render :new }
	        format.json { render json: @part.errors, status: :unprocessable_entity }
	      end
	    end
	end


	private

	def set_part
		@part = Part.find(params[:id])
	end

	def part_params
		params.require(:part).permit(:descricao, :modelo, :p_compra, :p_venda, :quantidade, :lucro)
	end

end