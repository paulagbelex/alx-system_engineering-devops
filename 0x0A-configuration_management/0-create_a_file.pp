# Create file in /temp

file { '/tmp/schol' :
  path    =>  '/tmp/school',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
  }
