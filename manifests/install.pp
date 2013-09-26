class vsftpd::install inherits vsftpd {

   package { 'vsftpd' : ensure => installed }

   service { 'vsftpd' :
      require   => Package['vsftpd'],
      enable    => true,
      ensure    => running,
      hasstatus => true,
    }

   file { "${confdir}/vsftpd.conf" :
      require   => Package['vsftpd'],
      content   => template('vsftpd/vsftpd.conf.erb'),
      notify    => Service['vsftpd'],
   }

   file { "${confdir}/chroot_list" :
      ensure     =>   present,
      content    =>  template('vsftpd/chroot_list.erb'),
      notify     =>  Service['vsftpd'],
   }

   file { "${user_config_dir}"  :
     ensure  => directory,
     require => Package['vsftpd'],
   }

}
