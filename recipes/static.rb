


repo = 'https://raw.github.com/cenglert/application_builds/master/'

insert_into_file 'config/routes.rb', "\n  match ':action' => 'static#:action'", :before => "\nend"

__END__
