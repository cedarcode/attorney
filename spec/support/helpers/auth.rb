module Support
  module Helpers
    module Auth
      def authenticate
        username = Attorney.http_auth[:name]
        password = Attorney.http_auth[:password]
        credentials = ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
        page.driver.header('Authorization', credentials)
      end
    end
  end
end
