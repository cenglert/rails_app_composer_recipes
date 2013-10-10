


repo = 'https://raw.github.com/cenglert/application_builds/master/'

inject_into_file 'config/routes.rb', :before => "\nend" do <<-RUBY
\n  match ':action' => 'static#:action'

RUBY
end