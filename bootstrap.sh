#!/bin/bash

# alias hostname to local pc
if [[ $(cat /etc/hosts) != *"127.0.0.1  local.magento"* ]]; then
  printf "#Magento Local\n127.0.0.1  local.magento\n" | sudo tee -a /etc/hosts
fi

sleep 1

# launch app in default browser if user is using OSX
if [[ "$(uname -s)" == "Darwin" ]]; then
    open "http://local.magento/admin"
fi

echo "Magento Installed at http://local.magento"