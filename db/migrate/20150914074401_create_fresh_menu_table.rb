class CreateFreshMenuTable < ActiveRecord::Migration
  def change
    create_table :freshmenus do |t|
      t.string :cuisine
      t.string :orientate

      t.timestamps null: false
    end
  end
end
