require 'attorney/engine'

module Attorney
  mattr_accessor :application_layout do
    'application'
  end

  def self.http_auth
    {
      name:     ENV['ATTORNEY_HTTP_AUTH_NAME'] || 'attorney',
      password: ENV['ATTORNEY_HTTP_AUTH_PASSWORD'] || 'secret'
    }
  end
end
