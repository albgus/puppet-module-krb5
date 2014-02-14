class krb5 (
    $logging_default      = 'FILE:/var/log/krb5libs.log',
    $logging_kdc          = 'FILE:/var/log/krb5kdc.log',
    $logging_admin_server = 'FILE:/var/log/kadmind.log',
    $default_realm        = undef,
    $dns_lookup_realm     = undef,
    $dns_lookup_kdc       = undef,
    $ticket_lifetime      = undef,
    $default_keytab_name  = undef,
    $forwardable          = undef,
    $proxiable            = undef,
    $realms               = undef,
    $appdefaults          = undef,
    $domain_realm         = undef,
    $package              = 'krb5-libs',
    $krb5conf_file        = '/etc/krb5.conf',
) {
  package{ $package:
    ensure  => present,
  }

  file{ 'krb5conf':
    path    => $krb5conf_file,
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('krb5/krb5.conf.erb'),
  }
}
