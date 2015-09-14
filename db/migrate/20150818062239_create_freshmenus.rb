class CreateFreshmenus < ActiveRecord::Migration
  def change
    create_table :freshmenus do |t|
      t.string :cuisine
      t.text :orientate

      t.timestamps null: false
    end
  end
end
