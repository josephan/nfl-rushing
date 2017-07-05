class CreateRushingStats < ActiveRecord::Migration[5.1]
  def change
    create_table :rushing_stats do |t|
      t.string :player
      t.string :team
      t.string :pos
      t.integer :att
      t.float :att_per_game
      t.integer :yrds
      t.float :avg
      t.float :yrds_per_game
      t.integer :td
      t.string :lng
      t.integer :first_downs
      t.float :first_downs_perc
      t.integer :plus_twenty
      t.integer :plus_forty
      t.integer :fum

      t.timestamps
    end
  end
end
