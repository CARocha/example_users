class HomeController < ApplicationController
  def index
    ad_ids = []
    if account_signed_in?
      tags = current_account.seens
      tags.each do |single|
        ad_ids.append(single.announcement.id)
      end
    end
    if ad_ids.count > 0
      @anuncios = Announcement.where.not('id IN (?)', ad_ids).order(created_at: :desc)
    else
      @anuncios = Announcement.order(created_at: :desc)
    end
  end

  def about
  end
end
