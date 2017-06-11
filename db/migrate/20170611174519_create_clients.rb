class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name, null: false
      t.string :family_name, null: false
      t.date :born_on, null: false
      t.string :email, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
