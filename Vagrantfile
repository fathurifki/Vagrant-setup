servers=[
  {
    :hostname => "webserver",
    :ip => "192.168.0.1",
    :box => "ubuntu/bionic64",
    :ram => 1024,
    :cpu => 2,
    :port => 8080,
  },
  {
    :hostname => "db1",
    :ip => "192.168.0.2",
    :box => "ubuntu/bionic64",
    :ram => 1024,
    :cpu => 2,
    :port => 3010,
  },
  {
    :hostname => "db2",
    :ip => "192.168.0.3",
    :box => "ubuntu/bionic64",
    :ram => 1024,
    :cpu => 2,
    :port => 3020,
  }
]

Vagrant.configure(2) do |config|
  servers.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip:machine[:ip]
      node.vm.network "forwarded_port", guest: 80, host:machine[:port]
      node.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", machine[:ram]]
        end
    end
  end 
end   
