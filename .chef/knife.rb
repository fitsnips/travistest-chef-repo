cache_type 'BasicFile'
cache_options(:path => "#{ENV['HOME']}/.chef/checksums")

knife[:bootstrap_version] = "11.12.4-1"

# Digital Ocean Creds
knife[:digital_ocean_client_id] = ENV['DIGITALOCEAN_CLIENT_ID']
knife[:digital_ocean_api_key] = ENV['DIGITALOCEAN_API_KEY']
knife[:digital_ocean_ssh_key_ids] = ENV['DIGITALOCEAN_SSH_KEY_IDS']


knife[:chef_server_backup_dir] = "~/.chef/chef_backups2"
transfer_repo = File.expand_path('..', File.dirname(__FILE__))
repo_mode 'everything'
versioned_cookbooks true
chef_repo_path transfer_repo

# AWS support
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
# Optional if you're using Amazon's STS
#knife[:aws_session_token] = ENV['AWS_SESSION_TOKEN']
knife[:aws_ssh_key_id] = ENV['AWS_MYPEM']
knife[:region] = ENV['AWS_REGION']

