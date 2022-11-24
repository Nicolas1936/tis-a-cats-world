class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cats = Cat.order(created_at: :desc).last(3)
  end
end
