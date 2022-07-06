Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

	get "/test_post" => "statics#test_post"
	get "/test_index" => "statics#test_index"
  root "statics#test_index"
  # Defines the root path route ("/")
  # root "articles#index"
end
