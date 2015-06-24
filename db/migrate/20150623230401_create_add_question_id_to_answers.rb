class CreateAddQuestionIdToAnswers < ActiveRecord::Migration
  def change
    create_table :add_question_id_to_answers do |t|
      add_column :answers, :question_id, :integer

      t.timestamps null: false
    end
  end
end
