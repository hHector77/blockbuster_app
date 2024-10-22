class ChangeMovieIdInCustomers < ActiveRecord::Migration[7.2]
  def change
    change_column_null :customers, :movie_id, true
  end
end
