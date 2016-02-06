#!/bin/bash

# There is probably a better way to do this, but it is quick and easy for me
# to nuke a tripleO virt setup on my various boxes and grab the file from git.

sudo virsh undefine instack
sudo virsh undefine baremetalbrbm_0
sudo virsh undefine baremetalbrbm_1
sudo virsh undefine baremetalbrbm_2
sudo virsh destroy instack
sudo virsh destroy baremetalbrbm_0
sudo virsh destroy baremetalbrbm_1
sudo virsh destroy baremetalbrbm_2
sudo rm -rf /var/lib/libvirt/images/instack.qcow2
sudo rm -rf /var/lib/libvirt/images/baremetalbrbm_0.qcow2
sudo rm -rf /var/lib/libvirt/images/baremetalbrbm_1.qcow2
sudo rm -rf /var/lib/libvirt/images/baremetalbrbm_2.qcow2
sudo rm -rf ./instack.qcow2
sudo rm -rf ./baremetalbrbm_0.qcow2
sudo rm -rf ./baremetalbrbm_1.qcow2
sudo rm -rf ./baremetalbrbm_2.qcow2
