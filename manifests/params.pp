# Class: vsftpd::params
#
class vsftpd::params {

  # vsftpd.conf options
  $anonymous_enable        = 'NO'
  $local_enable            = 'YES'
  $local_root              = undef
  $write_enable            = 'NO'
  $local_umask             = '022'
  $anon_upload_enable      = 'NO'
  $anon_mkdir_write_enable = 'NO'
  $dirmessage_enable       = 'YES'
  $xferlog_enable          = 'YES'
  $connect_from_port_20    = 'YES'
  $chown_uploads           = 'NO'
  $chown_username          = undef
  $xferlog_file            = '/var/log/vsftpd.log'
  $xferlog_std_format      = 'YES'
  $idle_session_timeout    = '600'
  $data_connection_timeout = '120'
  $nopriv_user             = undef
  $async_abor_enable       = 'NO'
  $ascii_upload_enable     = 'NO'
  $ascii_download_enable   = 'NO'
  $ftpd_banner             = undef
  $chroot_local_user       = 'YES'
  $chroot_list_enable      = 'YES'
  $ls_recurse_enable       = 'NO'
  $listen                  = 'YES'
  $listen_port             = undef
  $pam_service_name        = 'vsftpd'
  $userlist_enable         = 'YES'
  $userlist_deny           = undef
  $tcp_wrappers            = 'YES'
  $hide_file               = undef
  $hide_ids                = 'NO'
  $setproctitle_enable     = 'NO'
  $text_userdb_names       = 'NO'
  $max_clients             = undef
  $max_per_ip              = undef
  $pasv_min_port           = undef
  $pasv_max_port           = undef
  $pasv_enable             = undef
  $ftp_username            = undef
  $banner_file             = undef

  case $::operatingsystem {
    'RedHat','CentOS': { $confdir = '/etc/vsftpd' }
    'Debian', 'Ubuntu': { $confdir = '/etc' }
    default: { $confdir = '/etc/vsftpd' }
  }

  $user_config_dir         = "${confdir}/user_conf"
  $chroot_list_file        = "${confdir}/chroot_list"

}

