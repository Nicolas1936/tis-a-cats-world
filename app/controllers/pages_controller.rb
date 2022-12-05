class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @last_cats = Cat.order(created_at: :desc).last(3)
    @cats = Cat.all

    @markers = @cats.geocoded.map do |cat|
      {
        lat: cat.latitude,
        lng: cat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cat: cat }),
        image_url: helpers.asset_url("marker.png")
      }
    end
  end
end
