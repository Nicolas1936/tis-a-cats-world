class CatsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @cats = Cat.all
  end
end
