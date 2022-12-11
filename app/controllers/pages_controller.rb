class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @last_cats = Cat.order(created_at: :asc).last(4)
    @cats = Cat.all

    @orgs = User.where(is_org: true)

    @markers = @orgs.geocoded.map do |org|
      {
        lat: org.latitude,
        lng: org.longitude,
        info_window: render_to_string(partial: "info_window_org", locals: { org: org }),
        image_url: helpers.asset_url("logo_cat.png")
      }

    # @markers = @cats.geocoded.map do |cat|
    #   {
    #     lat: cat.latitude,
    #     lng: cat.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { cat: cat }),
    #     image_url: helpers.asset_url("marker.png")
    #   }
    end
  end
end
