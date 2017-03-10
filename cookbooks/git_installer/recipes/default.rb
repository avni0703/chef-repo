#
# Cookbook Name:: git_installer
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'git_installer::my_recipe'
include_recipe 'first_taste::default'

remote_file 'c:/chef/PortableGit-2.12.0-64-bit.7z.exe' do
 source 'https://github.com/git-for-windows/git/releases/download/v2.12.0.windows.1/PortableGit-2.12.0-64-bit.7z.exe'
 action :create
end

execute"" 'install_git' do
 command 'c:/chef/PortableGit-2.12.0-64-bit.7z.exe /SILENT'
 not_if{File::exist?("C:/chef/PortableGit/git-bash.exe")}
end

#Chef::Log.info("Platform is: #{node['platform']}")

#if node['platform'] == 'oracle'
	#Helper.getlibstatus
#elsif node['platform'] == 'ubuntu'
#	Helper.update_ubuntu
#end