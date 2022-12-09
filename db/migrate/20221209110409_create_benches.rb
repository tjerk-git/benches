class CreateBenches < ActiveRecord::Migration[7.0]
  def change
    create_table :benches do |t|
      t.text :description
      t.float :lat
      t.float :lng 
      t.string :uuid
      t.timestamps
    end
  end
end
