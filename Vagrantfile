# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "lucid32-up"
  config.vm.box_url = "http://dl.dropbox.com/u/8188492/lucid32-up.box"
  config.vm.host_name = "elasticsearch"
  config.vm.network :hostonly, "192.168.31.46"
  config.vm.share_folder "modules/elasticsearch", "/tmp/vagrant-puppet/modules/elasticsearch", ".", :create => true

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "tests"
    puppet.manifest_file = "vagrant.pp"
    puppet.options = ["--modulepath", "/tmp/vagrant-puppet/modules"]
  end
end
