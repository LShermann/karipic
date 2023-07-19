class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
