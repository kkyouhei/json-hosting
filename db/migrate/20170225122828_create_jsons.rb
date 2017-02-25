class CreateJsons < ActiveRecord::Migration[5.0]
  def change
    create_table :jsons do |t|
      t.string :key
      t.text :json

      t.timestamps
    end
  end
end
