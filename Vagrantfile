Vagrant.configure("2") do |config|
  # не копировать приват ключ в хостовую машину
  # изменить объем памяти для виртуальной машины по умолчанию
   config.vm.provider :virtualbox do |vb|
    config.ssh.insert_key = false
    vb.customize ["modifyvm", :id, "--memory", "2048"]
   # config.vm.synced_folder "./", "/vagrant"
   end

  # Application server 1
  config.vm.define "app1" do |app1|
    app1.vm.hostname = "orc-app2.dev"
    app1.vm.box = "geerlingguy/centos7"
    app1.vm.network :private_network, ip: "192.168.60.7"
#     config.vm.provision "shell", path: "./provision/centos_provision.sh"
  end

  #      # Application server 2
  #  config.vm.define "app2" do |app2|
  #   app2.vm.hostname = "orc-db.dev"
  #   app2.vm.box = "hashicorp/bionic64"
  #   app2.vm.network :private_network, ip: "192.168.60.5"
  #  end

    # # Provision configuration for Ansible
    # config.vm.provision  :ansible do |ansible|
    #   ansible.playbook = "playbook.yml"
    #   ansible.become = true
    #  end

end