name 		  "openssh"
maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs openssh"
version "1.3.5"



%w{ apt iptables }.each do |cb|
  depends cb
end
