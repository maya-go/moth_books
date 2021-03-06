class StaticPagesController < ApplicationController

  include Cartable

  def home
    # Returns 5 bestsellers by ordered book count in the database.
    @books = BestsellerService.new.call(5)
    # Returns last 6 books added to the database.
    @arrivals = ArrivalService.new.call(6)
    @cart_item = add_cart_item
  end

  def help
  end

  def about
  end

  def contact
  end
end
