# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

class ActiveSupport::TestCase # rubocop:disable Style/ClassAndModuleChildren
  # 指定のワーカー数でテストを並列実行する
  parallelize(workers: :number_of_processors)

  # test/fixtures/*.ymlにあるすべてのfixtureをセットアップする
  fixtures :all

  # テストユーザーがログイン中の場合にtrueを返す
  def is_logged_in? # rubocop:disable Naming/PredicateName
    !session[:user_id].nil?
  end
end
