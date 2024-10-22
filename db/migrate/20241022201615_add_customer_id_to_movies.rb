class AddCustomerIdToMovies < ActiveRecord::Migration[7.2]
  def change
    add_column :movies, :customer_id, :integer
  end
end
