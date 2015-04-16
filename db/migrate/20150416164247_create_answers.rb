class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :election_id
      t.integer :question_id
      t.string :answer
      t.string :updid

      t.timestamps
    end
  end
end
