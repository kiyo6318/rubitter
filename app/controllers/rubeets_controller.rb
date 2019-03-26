class RubeetsController < ApplicationController
before_action :set_rubeet,only:[:edit,:update]

  def index
  	@rubeets = Rubeet.all
  end

  def new
  	@rubeet = Rubeet.new
  end

  def create
  	@rubeet = Rubeet.new(rubeet_params)
  	if @rubeet.save
			redirect_to new_rubeet_path,notice:"つぶやきました！"
		else
			render 'new'
		end
  end

  def edit
  end

  def update
  	if @rubeet.update(rubeet_params)
  		redirect_to rubeets_path,notice:"つぶやきを編集しました"
  	else
  		render 'edit'
  	end
  end

  private
  def rubeet_params
  	params.require(:rubeet).permit(:content)
  end

  def set_rubeet
  	@rubeet = Rubeet.find(params[:id])
  end
end
