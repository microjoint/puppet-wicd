class wicd::params {

  $config          = '/etc/wicd.conf'
  $config_template   = 'wicd/wicd.conf.erb'
  $package_ensure    = 'present'
  $package_name      = ['wicd']
  $service_enable    = true
  $service_ensure    = 'running'
  $service_manage    = true
}
