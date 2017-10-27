class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save!
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health > 0
			@pokemon.health -=10
			@pokemon.save!
		end

		redirect_to trainer_path(@pokemon.trainer_id)
	end

	def new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to trainer_path(@pokemon.trainer)
		else
			redirect_to new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	def heal
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health < 100
			@pokemon.health += 10
			@pokemon.save!
		end
		redirect_to trainer_path(@pokemon.trainer_id)
	end

	private
	def pokemon_params
		params.require(:pokemon).permit(:name)# require makes it so we need to give something, permit makes so no duplicates
	end

end
