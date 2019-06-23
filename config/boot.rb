ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rails/commands/server'
module Rails
  class Server
    def default_options
      super.merge({
      	:Host		 => '0.0.0.0',
        :Port        => 8080,
        :environment => (ENV['RAILS_ENV'] || 'development').dup,
        :daemonize   => false,
        :debugger    => false,
        :pid         => File.expand_path('tmp/pids/server.pid'),
        :config      => File.expand_path('config.ru')
      })
    end
  end
end
