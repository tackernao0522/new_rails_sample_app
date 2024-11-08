# frozen_string_literal: true

class AddActivationToUsers < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
  end
end
