require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Cloud66 < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => "https://app.cloud66.com/api/2",
        :authorize_url => "https://app.cloud66.com/oauth/authorize" ,
        :token_url => "https://app.cloud66.com/oauth/token"
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          %w[scope client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'cloud66', 'Cloud66'
