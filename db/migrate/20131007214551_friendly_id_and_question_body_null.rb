class FriendlyIdAndQuestionBodyNull < ActiveRecord::Migration
  def change
    change_column :questions, :body, :text, null:true
    add_column :questions, :slug, :string
    add_index :questions, :slug, unique: true
  end


end
