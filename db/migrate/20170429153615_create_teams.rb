class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :coach
      t.string :log
      # be careful of spelling errors, for example, :log above should be :logo
    end
  end
end
