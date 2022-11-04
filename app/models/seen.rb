class Seen < ApplicationRecord
  validates :account, uniqueness: { scope: :announcement }

  belongs_to :account
  belongs_to :announcement
end
