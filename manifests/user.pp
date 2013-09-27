class vsftpd::user inherits vsftpd::params {


   define add ($user, $path, $dir=$vsftpd::params::user_config_dir) {
    user { "${user}" :
      ensure => present,
      home   => $path,
    } ->

    file{ "${dir}/${user}" :
      owner   => 'root',
      group   => 'root',
      mode    => 0644,
      ensure  => present,
      content => template("vsftpd/user_conf.erb")
    }

    }
  create_resources('vsftpd::user::add', hiera_hash(vsftpd::user_path))
}
