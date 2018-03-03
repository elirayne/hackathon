class AddLikeButtons < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :likes, :integer
    add_column :movies, :dislikes, :integer
  end
end
