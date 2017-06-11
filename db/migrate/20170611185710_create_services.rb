class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :description, null: false
      t.date :service_date, null: false
      t.decimal :price, :precision => 8, :scale => 2, null: false
      t.references :client, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
