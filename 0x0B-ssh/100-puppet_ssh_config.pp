include stdlib

# Seting up my client config file
file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => '^[[:space:]]*PasswordAuthentication',
  replace => true,
}

file_line { 'Delare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^[[:space:]]*IdentityFile',
  replace => true,
}
