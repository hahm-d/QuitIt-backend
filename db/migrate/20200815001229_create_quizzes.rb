class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :unique_code
      t.string :teacher_name
      t.string :teacher_email
      t.string :title

      t.timestamps
    end
  end
end
