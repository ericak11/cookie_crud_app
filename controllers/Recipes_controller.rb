  class RecipesController < ApplicationController
  get('/') do
    render(:erb, :"Recipes/index")
  end

  get('/new') do
    render(:erb, :"Recipes/new")
  end

  get('/edit') do
    render(:erb, :"Recipes/edit")
  end

  get('/show') do
    render(:erb, :"Recipes/show")
  end

  delete('/') do
  end

  post('/') do
  end
  end
