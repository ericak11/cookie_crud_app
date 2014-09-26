class RecipesController < ApplicationController
  get('/') do
    render(:erb, :"recipes/index")
  end

  get('/new') do
    @user = User.find(id: session[:current_user][:id])
    render(:erb, :"recipes/new")
  end

  get('/edit') do
    render(:erb, :"recipes/edit")
  end

  get('/:id') do
    render(:erb, :"recipes/show")
  end

  delete('/') do
  end

  post('/') do
    Recipe.create({
    name: params[:name],
    ingredients: params[:ingredients],
    total_cookies: params[:total_cookies],
    cost: params[:cost],
    user_id: session[:current_user][:id]
    })
    redirect ("/")
  end
end
