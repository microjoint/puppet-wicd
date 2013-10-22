class wicd (
  $package_ensure    = $wicd::params::package_ensure,
  $package_name      = $wicd::params::package_name,
  $service_enable    = $wicd::params::service_enable,
  $service_ensure    = $wicd::params::service_ensure,
  $service_manage    = $wicd::params::service_manage,
  $service_name      = $wicd::params::service_name,
) inherits wicd::params {

  validate_string($package_ensure)
  validate_array($package_name)
  validate_bool($service_enable)
  validate_string($service_ensure)
  validate_bool($service_manage)
  validate_string($service_name)

  include '::wicd::install'
  include '::wicd::service'

  Class['::wicd::install'] ~> Class['::wicd::service']

}
