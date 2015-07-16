class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :election_id, :null => false
      t.integer :question_id, :null => false
      t.string :answer, :null => false
      t.string :updid, :null => false

      t.timestamps
    end
  end
end
