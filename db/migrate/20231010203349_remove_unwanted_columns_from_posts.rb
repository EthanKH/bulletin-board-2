class RemoveUnwantedColumnsFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column(:posts, :user_id)
    remove_column(:posts, :integer)
    remove_column(:boards, :user_id)
    remove_column(:boards, :integer)
  end
end
