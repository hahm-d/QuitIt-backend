class RenameWrongAnswersToChoices < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :wrong_answers, :choices
  end
end
