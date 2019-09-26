#
# Cookbook:: audit-wrapper
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


if node['platform'] == 'redhat'
  log "plaftform rhel"
  node.override['audit']['profiles'] = [ {"name" => "linux-baseline", "compliance" => "delivery/cis-rhel7-level1-server-emea-sa"}]
end

if node['platform'] == 'oracle'
  log "platform oracle"
  node.override['audit']['profiles'] = [ {"name" => "linux-baseline", "compliance" => "delivery/cis-oraclelinux7-level1"}]
end
if node['os'] == 'windows'
  log "os windows"
  node.override['audit']['profiles'] = [ {"name" => "windows-baseline", "compliance" => "delivery/windows-baseline"}]
end


include_recipe 'audit'
