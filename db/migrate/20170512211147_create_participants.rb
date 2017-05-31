class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.date :birthday, null: false

      t.timestamps null: false
    end
    add_index(:participants, [:name, :surname], unique: true)
  end
end
