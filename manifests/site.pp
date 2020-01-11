node default {
}

node 'master.puppet.vm' {
  include role::master_server
  
  file { '/root/README.md':
    ensure  => file,
    content => "# Welcome to ${fqdn}\n",
  }
}

node 'mindtest.puppet.vm' {
  include role::mindcraft_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
