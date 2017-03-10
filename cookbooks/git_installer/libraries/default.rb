require 'mixlib/shellout'
class Helper
	def self.getlibstatus
		puts "HEREEEEEEEEEEEEE"
		find = Mixlib::ShellOut.new("sudo yum update -y")
		find.run_command
		Chef::Log.info("@{find.stdout}")
	end

	def self.update_ubuntu
		find = Mixlib::ShellOut.new("apt-get update -y")
		find.run_command
		puts find.stdout
	end

end