# frozen_string_literal: true

class AddResetToUsers < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_column :users, :reset_digest, :string
    add_column :users, :reset_sent_at, :datetime
  end
end
