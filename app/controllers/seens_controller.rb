class SeensController < ApplicationController
    def create
      Seen.create(announcement: announcement, account: current_account)
      redirect_to root_path
    end

    def index
      @announcements = Announcement.joins(:seens).where({ seens: {account_id: current_account}})
    end

    private

    def announcement
      Announcement.find(params[:announcement_id])
    end
  end