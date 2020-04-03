class CreateAmusementParks < ActiveRecord::Migration[5.1]
  def change
    create_table :amusement_parks do |t|
      t.string :name
      t.string :admission
      t.string :ride_1
      t.string :ride_2
      t.string :ride_3

      t.timestamps
    end
  end
end
