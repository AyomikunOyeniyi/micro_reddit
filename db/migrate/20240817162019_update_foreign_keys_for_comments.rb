class UpdateForeignKeysForComments < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :user_id, :integer, foreign_key: true
    change_column :comments, :post_id, :integer, foreign_key: true
  end
end
