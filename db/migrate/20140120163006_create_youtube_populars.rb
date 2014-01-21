class CreateYoutubePopulars < ActiveRecord::Migration
  def change
    create_table :youtube_populars do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :priority
      t.boolean :used, default: false
      t.boolean :disabled, default: false

      t.timestamps
    end
  end
end
