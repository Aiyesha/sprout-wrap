link "#{ENV['HOME']}/.git-authors" do
  to "#{ENV['HOME']}/.pairs"
  only_if { File.exists?("#{ENV['HOME']}/.pairs") }
end

#default_ruby = node['rbenv']['default_ruby']
#bash "gem install git-duet" do
#  environment 'PATH' => "#{ENV['HOME']}/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin",
#              'HOME' => ENV['HOME'],
#              'USER' => node['current_user'],
#              'RBENV_VERSION' => default_ruby
#  user node['current_user']
#  cwd ENV['HOME']
#  only_if { (! `echo "$PATH" | grep "shims"`.empty?) && `#{ENV['HOME']}/.rbenv/versions/#{default_ruby}/bin/gem list | grep 'git-duet'`.empty? }
#end

