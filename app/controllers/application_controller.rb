class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/houses" do
    houses = House.all
    houses.to_json(include: :address)
  end

  get "/houses/:id" do
    house=House.find(params[:id])
    house.to_json(include: {rooms: {include: {projects: {include: [:tools, :parts]}}}})
  end

end
