class RemoveColumnFromQuestions < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :choices
  end
end
