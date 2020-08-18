class AddColumnsToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :incorrect1, :string
    add_column :questions, :incorrect2, :string
    add_column :questions, :incorrect3, :string
  end
end
