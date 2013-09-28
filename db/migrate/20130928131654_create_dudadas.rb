class CreateDudadas < ActiveRecord::Migration
  def change
    create_table :dudadas do |t|
      t.integer :aaa

      t.timestamps
    end
  end
end
