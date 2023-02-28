class CreateGrandparents < ActiveRecord::Migration[7.0]
  def change
    create_table :grandparents do |t|
      t.string :name
      t.integer :age
      t.string :abilities
      t.string :contradictions
      t.string :language
      t.references :user, null: false, foreign_key: true
      t.integer :phone_number
      t.string :location

      t.timestamps
    end
  end
end
