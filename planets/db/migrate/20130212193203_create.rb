class Create < ActiveRecord::Migration
  def change
      create_table :planets do |t|
          t.string :name
          t.text :image
          t.float :orbit
          t.float :mass
          t.integer :moons
          t.float :diameter
          t.timestamps
      end
  end
end
