# librarries/helper.rb
module MyHelper
  def create_file do
	File.open('/etc/properties', 'w+') { |file| file.write('hello=hello') }
  end
end

Chef::Recipe.send(:include, MyHelper)
Chef::Resource.send(:include, MyHelper)