class User < ApplicationRecord

    devise :database_authenticatable, :registerable,
    :recoverable, :rememerable, :trackable, :validatable


    has_many :favorite_movies
    has_many :movies, through: :favorite_movies
end