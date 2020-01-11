class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  host { 'web.puppet.vm':
    ip           => '172.18.0.2',
    ensure       => present,
    host_aliases => 'web',
  }
  host { 'db.puppet.vm':
    ip           => '172.18.0.3',
    ensure       => present,
    host_aliases => 'db',
  }
}
