# frozen_string_literal: true

class AddBasicInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false, default: ''
    add_column :users, :birthday, :date
    add_column :users, :sex, :integer, default: 0 # User.sex_type.none
    add_column :users, :school, :string, null: false, default: ''
  end
end
