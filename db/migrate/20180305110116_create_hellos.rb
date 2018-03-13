class CreateHellos < ActiveRecord::Migration[5.1]
  def change
    create_table :hellos do |t|

      t.string :title
      t.date :date
      t.text :description
     

      t.timestamps
    end
  end
end
