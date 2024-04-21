# frozen_string_literal: true

class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_column :users, :password_digest, :string
  end
end
