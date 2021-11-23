class CreateJoinTableCategoryTransaction < ActiveRecord::Migration[6.1]
  def change
    create_join_table :categories, :transactions do |t|
      t.index [:category_id, :transaction_id]
    end
  end
end
