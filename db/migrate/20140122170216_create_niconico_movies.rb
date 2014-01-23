class CreateNiconicoMovies < ActiveRecord::Migration
  def change
    create_table :niconico_movies do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :priority
      t.boolean :disabled, default: false

      t.timestamps
    end
  end
end
