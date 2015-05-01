class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :election_id
      t.string :question, :null => false
      t.integer :limit, :null => false, :default => 1
      t.boolean :write_in
      t.string :updid, :null => false

      t.timestamps
    end
  end
end
