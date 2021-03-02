Vagrant.configure("2") do |config|
  # не копировать приват ключ в хостовую машину dd
  # изменить объем памяти для виртуальной машины по умолчанию
   config.vm.provider :virtualbox do |vb|
     config.ssh.insert_key = false
     vb.customize ["modifyvm", :id, "--memory", "2048"]

   # config.vm.synced_folder "./", "/vagrant"
   end

  # Application server
  config.vm.define "app" do |app|
    app.vm.hostname = "alex-VM"
    app.vm.box = "geerlingguy/centos7"
    app.vm.network :private_network, ip: "192.168.60.4", virtualbox__intnet: "mynetwork"
    app.vm.network "forwarded_port", guest: 7777, host: 8080, host_ip: "127.0.0.1", guest_ip: "192.168.60.4"

    config.vm.provision "ansible" do |ansible|
        ansible.verbose = "v"
        ansible.playbook = "./provision/ansible-playbooks/playbook.yml"
      end

#     config.vm.provision "shell", path: "./provision/centos_provision.sh"
  end

   # Node server
   config.vm.define "app2" do |app2|
     app2.vm.hostname = "alex-node"
     app2.vm.box = "geerlingguy/centos7"
     app2.vm.network :private_network, ip: "192.168.60.5", virtualbox__intnet: "mynetwork"
      app2.vm.network "forwarded_port", guest: 80, host: 8088, host_ip: "127.0.0.1", guest_ip: "192.168.60.5"

   end

    # # Provision configuration for Ansible
    # config.vm.provision  :ansible do |ansible|
    #   ansible.playbook = "playbook.yml"
    #   ansible.become = true
    #  end

end
