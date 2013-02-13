class CreateMountain < ActiveRecord::Migration
  def change
            create_table :mountains do |t|
                 t.string :name
                 t.text :image
                 t.float :height
                  t.text :location
                 t.timestamps
            end
          end
end
