#!/usr/bin/env bash
#Puppet to make changes to our configuration file.

file_line { "identity file":
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '     Identity File ~/.ssh/school',
  replace => true,
}

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  replace => true,
}

