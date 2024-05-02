# frozen_string_literal: true

class AddRememberDigestToUsers < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_column :users, :remember_digest, :string
  end
end
