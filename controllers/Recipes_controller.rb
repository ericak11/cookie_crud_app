  class RecipesController < ApplicationController
  get('/') do
    render(:erb, :"recipes/index")
  end

  get('/new') do
    render(:erb, :"recipes/new")
  end

  get('/edit') do
    render(:erb, :"recipes/edit")
  end

  get('/show') do
    render(:erb, :"recipes/show")
  end

  delete('/') do
  end

  post('/') do
  end
  end
