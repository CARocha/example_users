class Announcement < ApplicationRecord
    validates :account, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    validates :date, presence: true

    has_many :seens, dependent: :destroy
    belongs_to :account

end
