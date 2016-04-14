class basemod::params {

######### NTP params

$zone = 'Asia'
$city = 'Kolkata'


case $::operatingsystem {

  'CentOS','Redhat': {
	
      $ntp_package    = 'ntpd'	
      $ntp_service    =  $ntp_package 
	

       }

  'Debian', 'Ubuntu': {

	$ntp_package = 'ntp'
	$ntp_service = $ntp_package

  	}
  default: {
          notify {"I don't know what kind of system you have!":}
          }
    }
}
