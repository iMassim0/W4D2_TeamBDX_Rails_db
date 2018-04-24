class AddPinToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :pin, foreign_key: true
  end
end
