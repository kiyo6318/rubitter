class RubeetsController < ApplicationController
before_action :set_rubeet,only:[:edit,:update,:destroy]

  def index
  	@rubeets = Rubeet.all
  end

  def new
  	if params[:back]
  		@rubeet = Rubeet.new(rubeet_params)
  	else
  		@rubeet = Rubeet.new
  	end
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

  def destroy
  	@rubeet.destroy
  	redirect_to rubeets_path,notice:"つぶやきを削除しました"
  end

  def confirm
  	@rubeet = Rubeet.new(rubeet_params)
  	render :new if @rubeet.invalid?
  end

  private
  def rubeet_params
  	params.require(:rubeet).permit(:content)
  end

  def set_rubeet
  	@rubeet = Rubeet.find(params[:id])
  end
end
