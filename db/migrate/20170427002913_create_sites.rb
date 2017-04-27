class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :slug
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
