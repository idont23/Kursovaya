class CreateFilmGenres < ActiveRecord::Migration
  def change
    create_table :film_genres do |t|
      t.references :film, index: true, foreign_key: true, null: false
      t.references :genre, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
    add_index(:film_genres, [:film_id, :genre_id], unique: true)
  end
end
