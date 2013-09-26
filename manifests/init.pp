# Class: vsftpd
#
class vsftpd (
  # vsftpd.conf options
  $anonymous_enable        = $vsftpd::params::anonymous_enable,
  $confdir                 = $vsftpd::params::confdir,
  $local_enable            = $vsftpd::params::local_enable,
  $local_root              = $vsftpd::params::local_root,
  $write_enable            = $vsftpd::params::write_enable,
  $local_umask             = $vsftpd::params::local_umask,
  $anon_upload_enable      = $vsftpd::params::anon_upload_enable,
  $anon_mkdir_write_enable = $vsftpd::params::anon_mkdir_write_enable,
  $dirmessage_enable       = $vsftpd::params::dirmessage_enable,
  $xferlog_enable          = $vsftpd::params::xferlog_enable,
  $connect_from_port_20    = $vsftpd::params::connect_from_port_20,
  $chown_uploads           = $vsftpd::params::chown_uploads,
  $chown_username          = $vsftpd::params::chown_username,
  $xferlog_file            = $vsftpd::params::xferlog_file,
  $xferlog_std_format      = $vsftpd::params::xferlog_std_format,
  $idle_session_timeout    = $vsftpd::params::idle_session_timeout,
  $data_connection_timeout = $vsftpd::params::data_connection_timeout,
  $nopriv_user             = $vsftpd::params::nopriv_user,
  $async_abor_enable       = $vsftpd::params::async_abor_enable,
  $ascii_upload_enable     = $vsftpd::params::ascii_upload_enable,
  $ascii_download_enable   = $vsftpd::params::ascii_download_enable,
  $ftpd_banner             = $vsftpd::params::ftpd_banner,
  $chroot_local_user       = $vsftpd::params::chroot_local_user,
  $chroot_list_enable      = $vsftpd::params::chroot_list_enable,
  $chroot_list_file        = $vsftpd::params::chroot_list_file,
  $ls_recurse_enable       = $vsftpd::params::ls_recurse_enable,
  $listen                  = $vsftpd::params::listen,
  $listen_port             = $vsftpd::params::llisten_port,
  $pam_service_name        = $vsftpd::params::pam_service_name,
  $userlist_enable         = $vsftpd::params::userlist_enable,
  $userlist_deny           = $vsftpd::params::userlist_deny,
  $tcp_wrappers            = $vsftpd::params::tcp_wrappers,
  $hide_file               = $vsftpd::params::hide_file,
  $hide_ids                = $vsftpd::params::hide_ids,
  $setproctitle_enable     = $vsftpd::params::setproctitle_enable,
  $text_userdb_names       = $vsftpd::params::text_userdb_names,
  $max_clients             = $vsftpd::params::max_clients,
  $max_per_ip              = $vsftpd::params::max_per_ip,
  $pasv_min_port           = $vsftpd::params::pasv_min_port,
  $pasv_max_port           = $vsftpd::params::pasv_max_port,
  $pasv_enable             = $vsftpd::params::pasv_enable,
  $ftp_username            = $vsftpd::params::ftp_username,
  $banner_file             = $vsftpd::params::banner_file,
  $user_config_dir         = $vsftpd::params::user_config_dir,
) inherits vsftpd::params {

  include vsftpd::install
  include vsftpd::user

}

