class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :netid
      t.string :updid

      t.timestamps
    end
  end
end
