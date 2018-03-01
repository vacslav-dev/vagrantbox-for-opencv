root_dir = "/srv/projects/opencv-images-handler"

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision "shell", path: "vagrant/provision.sh", env: { "ROOT_DIR" => root_dir }
  config.vm.synced_folder ".", "/srv/projects/opencv-images-handler", type: "rsync", rsync__exclude: ["Vagrant", ".git"]
  config.vm.network "private_network", ip: "176.16.1.2"
end