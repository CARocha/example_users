class HomeController < ApplicationController
  def index
    @anuncios = Announcement.all.order(created_at: :desc)
  end
end
