class CreateFilmParticipants < ActiveRecord::Migration
  def change
    create_table :film_participants do |t|
      t.string :role
      t.string :task, null: false
      t.references :film, index: true, foreign_key: true
      t.references :participant, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index(:film_participants, [:film_id, :participant_id], unique: true) 
  end
end
