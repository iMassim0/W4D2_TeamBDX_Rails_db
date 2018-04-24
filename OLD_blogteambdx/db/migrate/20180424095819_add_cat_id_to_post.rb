class AddCatIdToPost < ActiveRecord::Migration[5.2]
  def change


    change_table :posts do |t|

      t.references(:categories, index: true)

    end

  end
end
