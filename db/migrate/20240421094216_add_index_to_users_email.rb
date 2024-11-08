# frozen_string_literal: true

class AddIndexToUsersEmail < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_index :users, :email, unique: true
  end
end
