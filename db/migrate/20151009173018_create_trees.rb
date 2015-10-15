class CreateTrees < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :mom_id, :int
      t.column :dad_id, :int

      t.timestamps
    end
  end
end
