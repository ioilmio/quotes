require "net/http"

class QuotesController < ApplicationController
  def index
    uri = URI(
      "https://quotez-2020.herokuapp.com/api/v1/quotes/index"
    )
    @quote = Net::HTTP.get(uri)
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    p @quote
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    
    p JSON.parse(@quote)
    @quote
  end

  def show
    uri = URI("http://quotez-2020.herokuapp.com")
    @quote = Net::HTTP.get(uri)
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    p @quote
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    p'+++++++++++++++++++++'
    JSON.parse(@quote)
    @quote
  end

  def create
  end

  def update
  end

  def destroy
  end

  # private

  # def request_api(url)
  #   response = Net::HTTP.get(
  #     url
  #   )

  #   return nil if response.status != 200

  #   JSON.parse(response.body)
  # end

  # def get_quote
  #   request_api(
  #     # "https://quotez-2020.herokuapp.com/"
  #     "localhost:3000/api/v1/quotes"
  #   )
  # end
end
