class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'sk_3e37f43ac77b4548a61e1b623b0478dc' )
    if params[:ticker] == ''
      @nothing = "Hey, you forgot to enter a symbol!!"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue
        @stock = nil
      end
      if !@stock
        @error = "Hey, that symbol doesn't seem to exist! Try again!"
      end
    end
  end

  def about
  end

end
