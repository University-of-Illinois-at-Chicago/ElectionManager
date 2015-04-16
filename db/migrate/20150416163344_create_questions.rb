class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :election_id
      t.string :question
      t.integer :limit
      t.boolean :write_in
      t.string :updid

      t.timestamps
    end
  end
end
