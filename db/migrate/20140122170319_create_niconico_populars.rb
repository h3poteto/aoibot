class CreateNiconicoPopulars < ActiveRecord::Migration
  def change
    create_table :niconico_populars do |t|
      t.string :title
      t.string :url
      t.string :description
      t.integer :priority
      t.boolean :used, default: false
      t.boolean :disabled, default: false

      t.timestamps
    end
  end
end
