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
    end
  end

  def about_us
  end
end
