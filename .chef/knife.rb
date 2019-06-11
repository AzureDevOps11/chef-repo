# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "azuredevops"
client_key               "#{current_dir}/azuredevops.pem"
chef_server_url          "https://api.chef.io/organizations/infyazuredevops"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:azure_tenant_id] = "b6e9546d-c64b-4c87-80d0-f81880935c1e"
knife[:azure_subscription_id] = "d2b2b79f-f2c8-438d-8205-24fe78a6d827"
knife[:azure_client_id] = "60e83162-dd79-4dfa-bf4b-276cbc65a2c1"
knife[:azure_client_secret] = ".s8G[efR7VFOfI01Lz.vDAWwW/:y-Kdy"
