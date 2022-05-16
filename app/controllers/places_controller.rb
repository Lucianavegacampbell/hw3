class PlacesController < ApplicationController
    def index
        @places = Place.all 
    end
   #render/views/places/index.htlm.erb

   def show
    @place = Place.find_by({ "id" => params["id"] })
    @posts = Post.where({ "place_id" => @place["id"] })
    #render/views/companies/show.htlm.erb
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place.save
    redirect_to "/places"
  end

    


end  
