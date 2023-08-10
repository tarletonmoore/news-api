class NewsController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&from=2023-07-10&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api_key}")
    r = response.parse(:json)
    render json: r
  end
end
