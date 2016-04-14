class basemod::ntp inherits basemod::params
 {

	package { $ntp_package: ensure => installed, }

	service {$ntp_service:
		ensure => running,
		enable => true,
		require => Package[$ntp_package],
		}
	file {'/etc/ntp.conf':
		source => 'puppet:///modules/basemod/ntp.conf',
		owner => 'root',
		ensure => 'file',
		group =>  'root',
		mode => '0644',
		require => Package[$ntp_package],
		notify => Service[$ntp_service],
		}

    exec { $title :
  		command => ["unlink /etc/localtime ; \
  			 ln -s /usr/share/zoneinfo/${zone}/${city} /etc/localtime ; "],	
  		path => ['/usr/bin','/bin'],
  		require  => Service[$ntp_service],
  	}
}
