# frozen_string_literal: true

class AddAdminToUsers < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_column :users, :admin, :boolean, default: false
  end
end
