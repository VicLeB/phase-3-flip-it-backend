

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/houses" do
    houses = House.all
    houses.to_json(include: [:owner, :address])
  end

  get "/houses/:id" do
    house=House.find(params[:id])
    house.to_json(include: {rooms: {include: {projects: {include: [:tools, :parts]}}}})
  end

  get "/houses/:id/projects" do
    House.find(params[:id]).projects.to_json
  end

  get "/houses/:id/projects/tools" do
    house = House.find(params[:id]).projects
    house.to_json(include: :tools)
  end

  get "/houses/:id/projects/parts" do
    house = House.find(params[:id]).projects
    house.to_json(include: :parts)
  end

  delete "/projects/:id" do
    project = Project.find(params[:id])
    project.destroy
    project.to_json
  end

  delete "/parts/:id" do
    part= Part.find(params[:id])
    part.destroy
    part.to_json
  end

  delete "/tools/:id" do
    tool= Tool.find(params[:id])
    tool.destroy
    tool.to_json
  end



end

