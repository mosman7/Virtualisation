#create a virtual machine using vagrant
#virtual box
#vagrant
#ruby - dev-kit
#test installation
#vagrant
#ruby --version

#creating a vm with linux OS using ubuntu 16.04LTS
# telling vagrant 
Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial64"
# creating a virtual machine ubuntu 
    # creates private network
    config.vm.network "private_network", ip: "192.168.10.100"
 

    config.vm.synced_folder ".", "/home/vagrant/app"
#                           host path       destination

end


