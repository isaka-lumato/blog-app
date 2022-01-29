class CreateJoinTableUserPost < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :posts, column_options: { null: true }, table_name: :likes do |t|
      t.index [:user_id, :post_id]

      t.timestamps
    end
  end
end
