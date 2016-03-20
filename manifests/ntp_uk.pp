class basemod::ntp_uk inherits basemod::ntp {

	File ['/etc/ntp.conf'] {
	#	source => undef,
		source => 'puppet:///modules/basemod/ntp_uk.conf',
	#	content => 'server 0.uk.pool.ntp.org',
	}

}
