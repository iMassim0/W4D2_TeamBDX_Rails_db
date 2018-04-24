class AddReferencesToCategory < ActiveRecord::Migration[5.2]
  def change
      add_reference(:categories, :post)
  end
end
