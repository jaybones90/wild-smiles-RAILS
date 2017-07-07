class AddForeignKeyToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :service_id, :integer
  end
end
