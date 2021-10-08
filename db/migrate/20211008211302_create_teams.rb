class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :leader
      t.string :description

      t.timestamps
    end
  end
end
