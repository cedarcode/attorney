class Attorney::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_migrations
    `bin/rails app:attorney:install:migrations`
  end

  def copy_attorney_yml
    copy_file 'config/attorney.yml.example', 'config/attorney.yml.example'
  end
end
