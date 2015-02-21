# This migration comes from lannister_data (originally 20150221130845)
class CreateLannisterDataAccounts < ActiveRecord::Migration
  def change
    create_table :lannister_data_accounts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
