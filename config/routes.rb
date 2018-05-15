Rails.application.routes.draw do
  get '/' => 'client/recipes#index'
  namespace :client do
    get '/recipes' => 'recipes#index'
    get '/recipes/new' => 'recipes#new'
    post '/recipes' => 'recipes#create'
    get '/recipes/:id' => 'recipes#show'
    get '/recipes/:id/edit' => 'recipes#edit'
    patch '/recipes/:id' => 'recipes#update'
    delete '/recipes/:id' => 'recipes#destroy'
  end
end







def show
  recipe_id[:id]
  response = Unirest.get("http://localhost:3000/api/recipes#{recipe_id}")
  @recipe = response.body
  render 'show.html.erb'
end