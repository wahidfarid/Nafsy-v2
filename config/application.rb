require_relative "boot"

require "rails/all"

require 'active_graph/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1


    config.neo4j.driver.url = 'bolt://neo:7687'
    config.neo4j.driver.username = 'neo4j'
    config.neo4j.driver.password = 'password'
    config.neo4j.driver.encryption = false

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
