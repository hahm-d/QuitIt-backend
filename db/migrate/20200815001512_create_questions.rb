class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.string :statement
      t.string :answer
      t.string :wrong_answers, array: true, default: []

      t.timestamps
    end
  end
end
