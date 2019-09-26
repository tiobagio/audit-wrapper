# encoding: utf-8
name 'audit-wrapper'
maintainer 'EMEA Tech CFT'
maintainer_email 'emea+techcft@chef.io'
license 'All Rights Reserved'
description 'Attribute override wrapper of Audit cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.7'

chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'audit', '~> 9.0'