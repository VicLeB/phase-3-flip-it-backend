

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

##used in HouseSearch.js
  get "/houses" do
    houses = House.all
    houses.to_json(include: [:owner, :address])
  end

  ##used in HouseForm.js
  get "/houses/:id" do
    house=House.find(params[:id])
    house.to_json(include: {rooms: {include: {projects: {include: [:tools, :parts]}}}})
  end

##used in HouseForm
  get "/houses/:id/address" do
    house= House.find(params[:id]).address
    house.to_json(include: :house)
  end

  get "/houses/:id/rooms" do
    house= House.find(params[:id]).rooms
    house.to_json
  end

##used in HouseForm
  get "/rooms/:id" do
    room= Room.find(params[:id])
    room.to_json(include: :projects)
  end

  ##Use is HouseForm
  get "/projects/:id" do
    project = Project.find(params[:id])
    project.to_json(include: [:parts, :tools])
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

  # get "/projects/:id" do
  #   project = Project.find(params[:id]).parts
  #   cost =project.map{|part| part.cost}
  #   cost.to_json
  # end

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

  delete "/rooms/:id" do
    room=Room.find(params[:id])
    room.destroy
    room.to_json
  end

  patch "/projects/:id" do
    project = Project.find(params[:id])
    project.update(
      status: params[:status]
    )
    project.to_json
  end

  post "/houses" do
    new= House.create(
      house_name: params[:house_name],
      image_url: params[:image_url]
    )
    new.to_json
    Address.create(
      street_name: params[:street_name],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      house_id: new.id
    ).to_json
  end

  post "/rooms" do
    new = Room.create(
      name: params[:name],
      house_id: params[:house_id]
    )
    new.to_json
  end

  post "/projects" do
    new = Project.create(
      name: params[:name],
      description: params[:description],
      room_id: params[:room_id],
      status: false
    )
    new.to_json
  end

  post "/tools" do
    new = Tool.create(
      name: params[:name],
      image_url: params[:image_url],
      project_id: params[:project_id]
    )
    new.to_json
  end

  post "/parts" do
    new = Part.create(
      name: params[:name],
      image_url: params[:image_url],
      cost: params[:cost],
      project_id: params[:project_id]
    )
    new.to_json
  end

end

