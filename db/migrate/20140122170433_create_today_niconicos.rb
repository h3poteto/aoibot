class CreateTodayNiconicos < ActiveRecord::Migration
  def change
    create_table :today_niconicos do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :priority
      t.boolean :used, default: false

      t.timestamps
    end
  end
end
