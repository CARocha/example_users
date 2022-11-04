class CreateSeens < ActiveRecord::Migration[6.1]
  def change
    create_table :seens do |t|
      t.references :account, null: false, foreign_key: true
      t.references :announcement, null: false, foreign_key: true

      t.timestamps
    end
    add_index :seens, [:account_id, :announcement_id], unique: true
  end
end
