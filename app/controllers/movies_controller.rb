require 'httparty'
require 'pp'

class MoviesController < ApplicationController

    def index

            movie.title = response_body['Title']
            movie.genre = response_body['Genre']
            movie.release_year = response_body['Year']
            movie.synopsis = response_body['Synopsis']
        end
    end

    def destroy
        FavoriteMovie.find_by(user_id: current_user.id, movie_id: @movie.id).delete
        redirect_to movies_url, notice: 'Movie was successfully destroyed.'
      end
    end
