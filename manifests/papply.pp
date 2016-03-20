class basemod::papply {
	
	file { '/usr/local/bin/papply':
		ensure => 'file',
		source => 'puppet:///modules/basemod/papply.sh',
		mode => '0755',
		}
}
