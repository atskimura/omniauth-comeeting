require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class CoMeeting < OmniAuth::Strategies::OAuth2
      option :name, 'comeeting'
      
      option :client_options, {
        :site => 'https://www.co-meeting.com',
        :authorize_url => '/oauth/authorize',
        :token_url => '/oauth/token'
      }

      uid { raw_info["id"] }

      info do
        {
          'email' => raw_info['email'],
          'name' => raw_info['name'],
          'nickname' => raw_info['screen_name'],
          'image' => raw_info['icon_url']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/users/me').parsed["result"]
      end
    end
  end
end

OmniAuth.config.add_camelization 'comeeting', 'CoMeeting'