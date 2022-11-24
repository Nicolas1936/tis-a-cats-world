class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cats = Cat.order(created_at: :desc).take(5)
  end
end
