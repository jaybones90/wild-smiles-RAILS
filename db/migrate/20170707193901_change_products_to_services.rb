class ChangeProductsToServices < ActiveRecord::Migration[5.1]
  def change
    rename_table "products", "services"
  end
end
