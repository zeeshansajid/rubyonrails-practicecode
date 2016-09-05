class AddPostIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :post_id, :string
    add_column :comments, :integer, :string
  end
end
