class StockController < ApplicationController
def stock

  if params[:ticker].present? then
        @ticker = params[:ticker]
  else
        @ticker = "GOOG"
  end

YahooFinance.get_quotes(YahooFinance::StandardQuote, @ticker) {|i|
  @change =  i.change
  @changepts = i.changePoints
  @percent = i.changePercent
  @time =  i.time
  @price = i.bid.to_s
}


end


end
