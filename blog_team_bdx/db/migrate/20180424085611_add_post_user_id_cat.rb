class AddPostUserIdCat < ActiveRecord::Migration[5.2]
  def change

    # change_table :posts do |t|

      add_reference  :categories, :post, :index true

    # end

  end
end
