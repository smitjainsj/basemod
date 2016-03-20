class basemod::params {

######### NTP params

$ntp_package            = 'ntp'

########## MySQL Params
$mysql_package		= 'mysql-server'
$host                   = 'localhost'
$icinga2_package	= 'icinga2'
$icinga2_service	= 'icinga2'
$git_package		= 'git'
$icinga2_dbname         = 'icinga'
$icinga2_dbuser         = $icinga2_dbname
$icinga2_dbpass         = $icinga2_dbname
$icinga2_ido		= 'icinga2-ido-mysql'



case $::operatingsystem {

  'CentOS','Redhat': {

      $ntp_service    = 'ntpd'
      $ssh_service    = 'sshd'
      $mysql_service  = 'mysqld'
	

       }

  'Debian', 'Ubuntu': {

	$ntp_service = 'ntp'
	$ssh_service = 'ssh'
	$mysql_service  = 'mysql'

  	}
  default: {
          notify {"I don't know what kind of system you have!":}
          }
    }
}
