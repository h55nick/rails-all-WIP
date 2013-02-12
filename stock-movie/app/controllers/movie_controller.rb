class MovieController < ApplicationController

def getmoviedata (movie)
  JSON(HTTParty.get('http://www.omdbapi.com/?t=' + movie.split().join("+").to_s).body)
end


def movie

if !(params[:movie_name].present?)
        @movie = "THE MATRIX"
      else
        @movie = params[:movie_name].upcase
     end

     #Get movie data
    @movie_data = getmoviedata(@movie)
    @movie_data.each do |key,data|
           case key
           when  "Poster" then @posterurl = data
           when "Title" then @title = data
           when "Plot" then @plot = data
            else #Nadda
           end
    end



end


end
