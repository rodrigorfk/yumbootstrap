#!/bin/bash

make clean
rm  yumbootstrap-0.0.3-1.el7.centos.src.rpm
sudo yum remove yumbootstrap* -y
make srpm
rm -rf /home/vagrant/rpmbuild/RPMS/*/yumbootstrap-*.rpm
rpmbuild --rebuild yumbootstrap-*.src.rpm
sudo yum localinstall --nogpgcheck /home/vagrant/rpmbuild/RPMS/*/yumbootstrap-*.rpm -y    
