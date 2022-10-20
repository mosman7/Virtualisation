#create a virtual machine using vagrant
#virtual box
#vagrant
#ruby - dev-kit
#test installation
#vagrant
#ruby --version

#creating a vm with linux OS using ubuntu 16.04LTS
# telling vagrant 
# Vagrant.configure("2") do |config|
#     config.vm.define "app" do |app|
# # creating a virtual machine
#         app.vm.box = "ubuntu/bionic64"  using ubuntu 
#         # creates private network
#         app.vm.network "private_network", ip: "192.168.10.100"
#         app.vm.synced_folder ".", "/home/vagrant/app"
#     #                           host path       destination
#         #automated script to run vm using specified .sh file
#         app.vm.provision "shell", path: "provision.sh"

#     end

#     config.vm.define "db" do |db|
#         db.vm.box = "ubuntu/bionic64"
#         db.vm.network "private_network", ip: "192.168.10.150"
    
#     end
# end 

Vagrant.configure("2") do |config|

    config.vm.define "app" do |app|
      app.vm.box = "ubuntu/bionic64"
      app.vm.network "private_network", ip: "192.168.10.100"
      app.vm.synced_folder ".", "/home/vagrant/app" # change it to your home location 
      app.vm.provision "shell", path: "app/provsion.sh"

      #app.vm.provision "shell", path: "C:\Users\moham\eng130_virtualisation\app\provsion.sh", privileged: false
                                     # provide path for your provision.sh 
#C:\Users\moham\eng130_virtualisation\environment\spec-tests\spec\provsion.sh
    end

    config.vm.define "db" do |db|
      db.vm.box = "ubuntu/bionic64"
      db.vm.network "private_network", ip: "192.168.10.150"
    end

  end


