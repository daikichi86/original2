class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|

      t.integer :category_id, null: false
      t.integer :country_id, null: false

      t.references :main, null: false, foreign_key: true
    end
  end
end
