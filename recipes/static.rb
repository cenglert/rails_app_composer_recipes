## Ruby on Rails

HOST_OS = RbConfig::CONFIG['host_os']
say_wizard "Your operating system is #{HOST_OS}."
say_wizard "You are using Ruby version #{RUBY_VERSION}."
say_wizard "You are using Rails version #{Rails::VERSION::STRING}."


repo = 'https://raw.github.com/cenglert/application_builds/master/'
route_text = '\n match "action" => "static#action"\n'
insert_into_file 'config/routes.rb', route_text, :before => "\nend"

__END__

name: static
description: "Add static page functionality to your applicaiton"
author: Chris Englert

run_after: []
category: configuration