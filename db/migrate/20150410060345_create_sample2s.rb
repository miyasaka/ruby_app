class CreateSample2s < ActiveRecord::Migration
  def change
    create_table :sample2s do |t|
      t.text :col1

      t.timestamps null: false
    end
  end
end
