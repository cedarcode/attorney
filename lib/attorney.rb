require 'attorney/engine'

module Attorney
  def self.basic_auth
    settings[:admin][:basic_auth]
  end

  def self.settings
    @settings ||= begin
      config = YAML.load_file(Rails.root.join('config', 'attorney.yml'))[Rails.env]

      if config
        config.with_indifferent_access
      else
        raise "There's been an error while attempting to load config/attorney.yml for the #{Rails.env} environment. Make sure you have provided the proper configuration for #{Rails.env}."
      end
    end
  rescue SystemCallError
    raise "config/attorney.yml is missing. Please add the file in your application, check attorney's README for details."
  end
end
