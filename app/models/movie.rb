class Movie < ApplicationRecord

    has_many :favorite_movies
    has_many :users, through: :favorite_movies

    attr_accessor :title, :genre, :release_year, :synopsis
end
