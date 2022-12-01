class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @last_cats = Cat.order(created_at: :desc).last(3)
    @cats = Cat.all
  end
end
