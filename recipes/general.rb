## Ruby on Rails
after_bundler do
  HOST_OS = RbConfig::CONFIG['host_os']
  say_wizard "Running the general"
  say_wizard "Your operating system is #{HOST_OS}."
  say_wizard "You are using Ruby version #{RUBY_VERSION}."
  say_wizard "You are using Rails version #{Rails::VERSION::STRING}."
  
  repo = 'https://raw.github.com/cenglert/application_builds/master/'
  
  insert_into_file 'config/environments/development.rb', "config.action_mailer.default_url_options = { :host => 'localhost:3000' }", :before => "\nend"


end
__END__

name: general
description: "General application changes"
author: Chris Englert

run_after: []
category: configuration