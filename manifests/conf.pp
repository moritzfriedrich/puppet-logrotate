class logrotate::conf (
	$default_user  = $logrotate::params::default_user,
	$default_group = $logrotate::params::default_group,
	) inherits logrotate::params {

	file { '/etc/logrotate.conf':
		ensure => file,
		mode   => '0444',
		owner   => 'root',
		group   => 'root',
		content => template('logrotate/etc/logrotate.conf.erb')
	}

}