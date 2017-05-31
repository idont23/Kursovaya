class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name, null: false
      t.string :duration, null: false
      t.string :country, null: false
      t.string :cinemacompany, null: false
      t.string :minage, null: false

      t.timestamps null: false
    end
  end
end
