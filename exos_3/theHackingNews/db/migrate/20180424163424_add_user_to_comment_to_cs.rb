class AddUserToCommentToCs < ActiveRecord::Migration[5.2]
  def change
    add_reference :comment_to_cs, :user, foreign_key: true
  end
end
