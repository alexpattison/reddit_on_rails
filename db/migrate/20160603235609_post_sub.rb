class PostSub < ActiveRecord::Migration
  def change
    create_table :post_subs do |t|
      t.integer :post_id
      t.integer :sub_id

      t.timestamps
    end 
  end
end
