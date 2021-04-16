class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'sk_3e37f43ac77b4548a61e1b623b0478dc' )
    if params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    end
  end

  def about
  end

end
