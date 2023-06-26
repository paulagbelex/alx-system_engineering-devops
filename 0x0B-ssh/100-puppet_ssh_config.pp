#!/usr/bin/env bash
#Puppet to make changes to our configuration file.


file_line { 'Turn off passwd auth':
 12   ensure => present,
 13   path   => '/etc/ssh/ssh_config',
 14   line   => '    PasswordAuthentication no',
 15   replace => true,
 16 }

file_line { "identity file":
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '     Identity File ~/.ssh/school',
  replace => true,
}
