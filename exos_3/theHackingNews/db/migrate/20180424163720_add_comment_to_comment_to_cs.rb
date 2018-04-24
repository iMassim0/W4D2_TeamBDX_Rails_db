class AddCommentToCommentToCs < ActiveRecord::Migration[5.2]
  def change
    add_reference :comment_to_cs, :comment, foreign_key: true
  end
end
