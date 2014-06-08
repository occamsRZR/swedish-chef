# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "occamsrzr"
client_key               "#{current_dir}/occamsrzr.pem"
validation_client_name   "fulk-validator"
validation_key           "#{current_dir}/fulk-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/fulk"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_email           'bf@the42.com'
cookbook_copyright       'Brandon Fulk'
knife[:editor] = '/usr/bin/emacs'
