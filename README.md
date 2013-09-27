puppet-vsftpd
=============

## Overview

vsftpd FTP server instance.


## Examples

default settings :

    include vsftpd

custom settings :

    class { 'vsftpd':
      write_enable      => 'YES',
      ftpd_banner       => 'Welcome FTP Server',
    }

## it include ymal to create user name and path

common.yaml


    vsftpd::user_path:
                gask1:
                     user: 'foo'
                     path: '/tmp/foo'
                gask2:
                     user: 'bar'
                     path: '/tmp/bar'


it will create user foo with home and local_root path '/tmp/foo'
