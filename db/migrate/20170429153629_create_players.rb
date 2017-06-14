class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nationality
      t.integer :age
      t.string :img_url
      t.integer :team_id
      # For foreign keys, use
      # t.references :team, foreign_key: true
    end
  end
end
