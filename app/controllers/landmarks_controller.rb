class LandmarksController < ApplicationController

  get'/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmark/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  post '/landmark' do
    @landmark = Landmark.create(:name => params[:landmark][:name], :year_completed => params[:landmark][:year_completed])
    redirect to "/landmarks"
  end


end
