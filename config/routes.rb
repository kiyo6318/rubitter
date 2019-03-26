Rails.application.routes.draw do
  resources :rubeets do
  	collection do
  		post :confirm
  	end
  end
end
