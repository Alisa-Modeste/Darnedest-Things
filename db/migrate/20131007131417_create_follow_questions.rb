class CreateFollowQuestions < ActiveRecord::Migration
  def change
    create_table :follow_questions do |t|
      t.integer  :user_id,  :null => false
      t.integer  :question_id,  :null => false

      t.timestamps
    end

    add_index :follow_questions, :question_id
    add_index :follow_questions, :user_id
    add_index :follow_questions, [:user_id, :question_id]
  end
end
