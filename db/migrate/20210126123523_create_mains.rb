class CreateMains < ActiveRecord::Migration[6.0]
  def change
    create_table :mains do |t|
      t.string :name,              null: false
      t.text :info,              null: false

      t.references :user, null: false, foreign_key: true
    end
  end
end
