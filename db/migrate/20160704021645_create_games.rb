class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.integer :min_players
      t.integer :max_players
      t.integer :length
      t.string  :url1
      t.string  :url1_desc
      t.string  :url2
      t.string  :url2_desc
      t.references :player, index: true, foreign_key: true
      t.integer :votes, default: 0
      t.timestamps null: false
    end
  end
end
