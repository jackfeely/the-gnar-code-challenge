class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :poster
      t.string :category
      t.string :location
      t.string :status

      t.timestamps null: false
    end
  end
end
