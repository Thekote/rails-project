# frozen_string_literal: true

class AddUniqueUsersName < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :name, unique: true
  end
end
