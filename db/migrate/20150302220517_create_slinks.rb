class CreateSlinks < ActiveRecord::Migration
  def change
    create_table :slinks do |t|
      t.text :url

      t.timestamps
    end
  end
end
