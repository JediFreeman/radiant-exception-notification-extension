# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'radiant-exception_notification-extension'

Gem::Specification.new do |s|
  s.name        = 'radiant-exception_notification-extension'
  s.version     = RadiantExceptionNotificationExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Josh French']
  s.email       = ['josh@vitamin-j.com']
  s.homepage    = 'http://github.com/digitalpulp'
  s.summary     = %q{Exception notification extension for Radiant CMS}
  s.description = %q{Adds exception notification with Radiant-managed error pages}
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-exception-notification', :version => '#{RadiantExceptionNotificationExtension::VERSION}'
  }
end
