require 'attorney/engine'

module Attorney
  def self.http_auth
    {
      name:     ENV['ATTORNEY_HTTP_AUTH_NAME'] || 'attorney',
      password: ENV['ATTORNEY_HTTP_AUTH_PASSWORD'] || 'secret'
    }
  end
end
