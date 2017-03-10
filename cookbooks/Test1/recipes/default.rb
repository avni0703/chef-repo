#
# Cookbook Name:: Test1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("In version 0.4.0")
my_bag = data_bag("credentials")
my_bag = search("credentials","id:oracle_soft_node")
puts "hereee"
Chef::Log.info("#{my_bag.inspect}")



=begin
admins = data_bag('credentials')
admins.each do |login|
  admin = data_bag_item('credentials', login)
  if node.name == admin.id
  	Chef::Log.info("I am in #{node.name}")
  end
 end
=end
