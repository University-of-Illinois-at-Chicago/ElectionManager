class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :title
      t.text :description
      t.string :contact
      t.integer :owner
      t.datetime :start
      t.datetime :finish
      t.string :updid

      t.timestamps
    end
  end
end
