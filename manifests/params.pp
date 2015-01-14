class logrotate::params {
	
	# CONF #############################
	case $osfamily {
		# Debian #######################
		debian: {
			case $operatingsystem {
				ubuntu: {
					$default_user  = "root"
					if $operatingsystemmajrelease =~ /^1[0-3].*/ {
						$default_group = "root"
					} else {
						$default_group = "syslog"
					}
				}
				default: {
					$default_user  = "root"
					$default_group = "root"
				}
			}
		}
		# DEFAULT #######################
		default: {
			$default_user  = "root"
			$default_group = "root"
		}
	}

}