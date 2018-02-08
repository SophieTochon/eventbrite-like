class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :creator
      t.string :description
      t.datetime :date
      t.string :place

      t.timestamps
    end
  end
end