class CreateUsewrs < ActiveRecord::Migration
  def change
    create_table :usewrs do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
