# typed: false
# frozen_string_literal: true

module Web
  module Authentication
    def self.included(action)
      action.class_eval do
        before :authenticate!
        expose :current_user
      end
    end

    private

    def authenticate!
      self.format = :json
      halt 401 unless authenticated?
    end

    def authenticated?
      !!current_user
    end

    def authentication_token
      request.env["HTTP_AUTHORIZATION"]&.split(" ")&.last
    end

    def current_user
      return if authentication_token.blank?

      payload, = JWT.decode(authentication_token, nil, false).map(&:symbolize_keys)
      @current_user ||= UserRepository.new.find(payload[:user_id])
    rescue JWT::DecodeError => e
      puts e.message
      nil
    end
  end
end
