platform "el-5-x86_64" do |plat|
  plat.servicedir "/etc/rc.d/init.d"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "sysv"

  plat.add_build_repository "http://pl-build-tools.delivery.puppetlabs.net/yum/el/5/x86_64/pl-build-tools-release-5-1.noarch.rpm"
  plat.provision_with "yum install -y --nogpgcheck autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign rpm-build; echo '[build-tools]\nname=build-tools\nbaseurl=http://enterprise.delivery.puppetlabs.net/build-tools/el/5/$basearch\ngpgcheck=0' > /etc/yum.repos.d/build-tools.repo"
  plat.install_build_dependencies_with "yum install -y --nogpgcheck"
  plat.vmpooler_template "centos-5-x86_64"
end
