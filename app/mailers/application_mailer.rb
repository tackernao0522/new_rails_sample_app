# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base # rubocop:disable Style/Documentation
  default from: 'user@realdomain.com'
  layout 'mailer'
end
