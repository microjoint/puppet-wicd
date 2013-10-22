#
class wicd::install inherits wicd {

  package { 'wicd':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
