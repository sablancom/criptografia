class SearchController < ApplicationController
  def create
  	palabra = "%#{params[:keyword]}%"

  	#@pets = Pet.where("name LIKE ? OR race LIKE ?",palabra,palabra)
  	@pets = Pet.where("name LIKE '#{params[:keyword]}%' OR race LIKE '#{params[:keyword]}%'")
  	#@pets = Pet.find(:all, :conditions =>"name LIKE palabra")
  	respond_to do |format|
  		format.html {redirect_to root_path}
  		format.json {render json: @pets}
  		format.js
  	end
  	#render json: @pets
  	#raise @pets.to_yaml
  	#@pets = Pet.where("name = #{palabra} OR race = ?",palabra,palabra)
  end
end
