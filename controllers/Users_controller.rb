  class UsersController < ApplicationController
  get('/') do
    render(:erb, :"Users/index")
  end

  get('/new') do
    render(:erb, :"Users/new")
  end

  get('/edit') do
    render(:erb, :"Users/edit")
  end

  get('/show') do
    render(:erb, :"Users/show")
  end

  delete('/') do
  end

  post('/') do
  end
  end
