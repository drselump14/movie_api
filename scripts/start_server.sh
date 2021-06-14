rm -rf tmp/pids

bundle exec hanami db prepare
bundle exec rake db:seed
bundle exec hanami server --host=0.0.0.0
