# automating my work using puppet

package { 'nginx':
  ensure => installed,
}
file_line { 'install':
  ensure => 'present',
  path   => '/etc/nginx/sites-enables/default',
  after  => 'lisen 80 default_server;',
  line   => 'rewirte ^/redirect_me https://github.com/amyn00 permanent;'
}
file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
