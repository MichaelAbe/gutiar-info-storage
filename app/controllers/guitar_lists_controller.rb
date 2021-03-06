class GuitarListsController < ApplicationController

  get '/guitar_lists' do
    @guitars = GuitarList.all
    # binding.pry
    erb :'guitar_lists/index'
  end

  get '/guitars/:id' do
    @guitar = GuitarList.find_by_id(params[:id])
    erb :'guitar_lists/show'
  end

  get '/guitar_lists/new' do
    erb :'guitar_lists/new'
  end

  post '/guitar_lists' do
    guitar = GuitarList.new(params[:guitar])
    if guitar.save
      #binding.pry
      redirect '/guitar_lists'
    else
      redirect '/guitar_lists/new'
    end
  end
 
 
  # GET: /guitar_lists
  get "/guitar_lists" do
    erb :"/guitar_lists/index.html"
  end

  # GET: /guitar_lists/new
  get "/guitar_lists/new" do
    erb :"/guitar_lists/new.html"
  end

  # POST: /guitar_lists
  post "/guitar_lists" do
    redirect "/guitar_lists"
  end

  # GET: /guitar_lists/5
  get "/guitar_lists/:id" do
    erb :"/guitar_lists/show.html"
  end

  # GET: /guitar_lists/5/edit
  get "/guitar_lists/:id/edit" do
    erb :"/guitar_lists/edit.html"
  end

  # PATCH: /guitar_lists/5
  patch "/guitar_lists/:id" do
    redirect "/guitar_lists/:id"
  end

  # DELETE: /guitar_lists/5/delete
  delete "/guitar_lists/:id/delete" do
    redirect "/guitar_lists"
  end
end
