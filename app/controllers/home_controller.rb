class HomeController < ApplicationController
  def index
    if account_signed_in?
      ad_ids = []
      tags = current_account.seens
      tags.each do |single|
        ad_ids.append(single.announcement.id)
      end

      @anuncios = Announcement.where.not('id IN (?)', ad_ids).order(created_at: :desc)
    else
      @anuncios = Announcement.order(created_at: :desc)
    end
  end
end
