require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = []
    alphabet = ('a'..'z').to_a
    10.times do
      @letters << alphabet.sample
    end
  end

  def score

    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    api_word = URI.parse(url).open.read
    @jason = JSON.parse(api_word)
  end

  
end
