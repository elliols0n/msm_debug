class DirectorsController < ApplicationController
  
  def index
    @list_of_directors = Director.order(:created_at => :desc)
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
  end

  def create_row
    @director = Director.new
    @director_dob = params[:dob]
    @director_name = params[:name]
    @director_bio = params[:bio]
    @director_image_url = params[:image_url]

    @director.save

    render("show")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[":dob"]
    @director.name = params[":name"]
    @director.bio = params[":bio"]
    @director.image_url = params[":image_url"]

    @director.save

    render("show")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
