file '/myfile' do
content 'Welcome to Chef Tutorial'
action :create
end

*********


package 'tree' do
action :install
end

file '/myfile2' do
content 'This is My Second Project code'
action :create
owner 'root'
group 'root'
end
