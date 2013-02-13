class MountainController < ApplicationController

def index
    @mountain =  Mountain.all
end
def new
end
def create
  Mountain.create(params[:mountain])
  redirect_to(mountain_path)
end
def view
   @mountain = Mountain.find(params[:id])
  @h={ "Name" => @mountain.name,
    "Height" => @mountain.height,
    "Location" => @mountain.location,
  }

end


def delete
  Mountain.find(params[:id]).delete
  redirect_to(mountain_path)
end

def edit
  @mountain = Mountain.find(params[:id])
  @h={ "Name" => @mountain.name,
    "Height" => @mountain.height,
    "Location" => @mountain.location,
    "Image" => @mountain.image
  }

  @id = @mountain.id
end

def update
  Mountain.find(params[:id]).update_attributes(params[:mountain])
  redirect_to(mountain_path)
end



end