class CreateRecommenders < ActiveRecord::Migration
  def change
    create_table :recommenders do |t|

      t.timestamps null: false
    end
  end
end
