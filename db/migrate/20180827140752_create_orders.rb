class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
