class StaticPagesController < ApplicationController
  def home
    @goods = Good.all
    @goodtypes = GoodType.all
  end

  def help
  end

  def signup
  end

  def login
  end

  def start
  end

  def aboutus
  end

end
