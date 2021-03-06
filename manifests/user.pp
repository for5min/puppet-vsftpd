#Class vsftpd::user
#
define vsftpd::user (
  $user,
  $path,
  $gid,
  $dir = $vsftpd::params::user_config_dir,
) {

  user { $user :
    ensure => present,
    gid    => $gid,
    home   => $path,
  } ->

  file { $path :
    ensure => directory,
  } ->

  file{ "${dir}/${user}" :
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("vsftpd/user_conf.erb")
  }

}
