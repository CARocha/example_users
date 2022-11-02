class Announcement < ApplicationRecord
    validates :account, presence: true
    validates :content, presence: true, length: { minimum: 140 }
    validates :date, presence: true

    belongs_to :account
end
