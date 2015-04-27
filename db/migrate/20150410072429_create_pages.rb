class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.integer :service_cd

      t.timestamps null: false
    end
  end
end
