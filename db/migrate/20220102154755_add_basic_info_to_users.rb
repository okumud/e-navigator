# frozen_string_literal: true

# Append columns to table for registration
class AddBasicInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users, bulk: true do |t|
      t.string :name, null: false, default: ''
      t.date :birthday
      t.integer :sex, default: 0 # User.sex_type.none
      t.string :school, null: false, default: ''
    end
  end
end
