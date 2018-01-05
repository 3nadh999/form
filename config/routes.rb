Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :test do
	collection do
		get 'list' 
	end
end

root 'test#signup'
get 'test/register'
post 'test/register'



end
