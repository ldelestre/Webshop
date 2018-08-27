class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 15, scale: 2
      t.string :image_url
    end
  end
end