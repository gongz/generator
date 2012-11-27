class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.integer :roomNo
      t.string :when
      t.string :nMediaType
      t.string :nFeedback
      t.string :pMediaType
      t.string :pFeedback
      t.integer :buildingDamage
      t.integer :road
      t.integer :fire
      t.boolean :water
      t.boolean :chem
      t.boolean :elec
      t.boolean :gas
      t.integer :immediate
      t.integer :dead
      t.integer :minor
      t.integer :dalayed
      t.integer :trapped

      t.timestamps
    end
  end
end
