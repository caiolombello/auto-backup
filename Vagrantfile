Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision "file", source: "~/Projetos/VMCrontab/backup.sh", destination: "/home/vagrant/"
  config.vm.provision :shell, path: "cron.sh"
end
