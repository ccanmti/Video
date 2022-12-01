class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name,              null: false, default: ""
      t.integer :genre_id,              null: false, default: ""
      t.text :introduction,              null: false, default: ""
      t.string :video
      t.timestamps
    end
  end
end