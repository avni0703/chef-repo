Chef::Log.info("I am in chef recipe of my_recipe")

Chef::Log.info("Attribute installer name #{node["git_installer"]["installer_name"]}")
Chef::Log.info("Sample number #{node["git_installer"]["Sample_number"]}")
Chef::Log.info("Sample number first_taste #{node["first_taste"]["Sample_number"]}")

file node["git_installer"]["path"] do 
  content '<html>This is a placeholder for the home page.</html>'
end

cookbook_file 'C:/Chef/index.php' do
  source 'Test.php'
  action :create
end

directory 'C:/Chef/Index' do
  action :create
  recursive true
end

cookbook_file 'C:/Chef/Index/index.php' do
  source 'Test.php'
  action :create
end

template 'C:/Chef/Test' do
  source 'Test.erb'
end

template 'C:/Chef/sudoers' do
  source 'sudoers.erb'
  variables({
    sudoers_groups: node['git_installer']['sudo']['groups'],
    sudoers_users: node['git_installer']['sudo']['users']
  })
end