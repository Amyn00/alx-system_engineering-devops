#Install python3-pip package.

package { 'python3-pip':
  ensure => installed,
}

# Install flask version 2.1.0 using pip3.

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'],
}
