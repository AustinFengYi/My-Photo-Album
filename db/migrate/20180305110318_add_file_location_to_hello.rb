class AddFileLocationToHello < ActiveRecord::Migration[5.1]
  def change
  	add_column :hellos, :file_location , :string
  end
end
