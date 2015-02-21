# This migration comes from lannister_data (originally 20150221130855)
class CreateLannisterDataTrades < ActiveRecord::Migration
  def change
    create_table :lannister_data_trades do |t|
      t.references :account, index: true
      t.decimal :amount
      t.date :date

      t.timestamps null: false
    end
    add_foreign_key :lannister_data_trades, :accounts
  end
end
