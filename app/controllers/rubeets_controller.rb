class RubeetsController < ApplicationController
  def index
  	#@rubeets = Rubeet.all
  end

  def new
  	@rubeet = Rubeet.new
  end

  def create
  	@rubeet = Rubeet.new(rubeet_params)
  	#if @rubeet.save
		#	redirect_to new_rubeet_path,notice:"つぶやきました！"
		#else
		#	render 'new'
		#end
  end
  #private
  #def rubeet_params
  	#params.require(:rubeet).permit(:content)
  #end
end
