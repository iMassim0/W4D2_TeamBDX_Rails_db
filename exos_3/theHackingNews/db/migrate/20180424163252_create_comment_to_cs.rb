class CreateCommentToCs < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_to_cs do |t|
      t.text :content

      t.timestamps
    end
  end
end
