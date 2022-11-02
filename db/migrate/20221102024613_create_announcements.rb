class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.text :content
      t.datetime :date
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
