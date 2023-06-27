#!/usr/bin/env bash
#Nginx should be listening on port 80
#When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!


file { 'Nginx default config file':
  ensure  => file,
  path    => '/etc/nginx/sites-enabled/default',
  content =>

#task 7 puppet task 

package { 'nginx':
  ensure     => 'installed',
}
